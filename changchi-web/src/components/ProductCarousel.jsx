import { useState, useEffect } from 'react';

function ProductCarousel() {
  const [products, setProducts] = useState([]);
  const [currentPage, setCurrentPage] = useState(0);

  useEffect(() => {
    fetch(`${import.meta.env.VITE_API_BASE_URL}/api/products`)
      .then((res) => {
        if (!res.ok) {
          console.error('Response not OK:', res.status, res.statusText);
          throw new Error(`HTTP error! Status: ${res.status}`);
        }
        return res.text(); // 先获取原始文本
      })
      .then((text) => {
        console.log('Raw response:', text); // 调试输出
        const data = JSON.parse(text);
        setProducts(data.$values || data || []);
      })
      .catch((err) => {
        console.error('Fetch products failed:', err);
        setProducts([]);
      });
  }, []);

  const itemsPerPage = 3;
  const totalPages = Math.ceil(products.length / itemsPerPage);

  return (
    <div className="container mx-auto py-8">
      <h2 className="text-3xl font-bold text-center mb-6">Our Products</h2>
      <div className="flex items-center justify-center gap-4">
        <button
          onClick={() => setCurrentPage((prev) => Math.max(prev - 1, 0))}
          className="p-2 bg-yellow-500 text-white rounded-full disabled:bg-gray-300"
          disabled={currentPage === 0}
        >
          ←
        </button>
        <div className="flex flex-wrap justify-center gap-6 w-full max-w-5xl">
          {products
            .slice(currentPage * itemsPerPage, (currentPage + 1) * itemsPerPage)
            .map((product) => (
              <div key={product.id} className="w-1/3 bg-white rounded-lg shadow-lg p-4">
                <img
                  src={product.images.find((i) => i.isPrimary)?.imageUrl || 'https://via.placeholder.com/300'}
                  alt={product.name_EN}
                  className="w-full h-48 object-cover rounded-t-lg"
                />
                <p className="text-center mt-2 font-semibold">{product.name_EN}</p>
              </div>
            ))}
        </div>
        <button
          onClick={() => setCurrentPage((prev) => Math.min(prev + 1, totalPages - 1))}
          className="p-2 bg-yellow-500 text-white rounded-full disabled:bg-gray-300"
          disabled={currentPage === totalPages - 1}
        >
          →
        </button>
      </div>
    </div>
  );
}

export default ProductCarousel;