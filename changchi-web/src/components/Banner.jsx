import { useState, useEffect } from 'react';

function Banner() {
  const banners = [
    '/logo.png', // 临时使用本地 Logo
    '/logo.png',
    '/logo.png',
  ];
  const [current, setCurrent] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrent((prev) => (prev + 1) % banners.length);
    }, 5000);
    return () => clearInterval(interval);
  }, [banners.length]);

  return (
    <div className="w-full h-[600px] overflow-hidden mt-16">
      <img
        src={banners[current]}
        alt={`Banner ${current + 1}`}
        className="w-full h-full object-cover transition-opacity duration-1000"
      />
    </div>
  );
}

export default Banner;