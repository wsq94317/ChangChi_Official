import { useState, useEffect } from 'react';

function Banner() {
  const banners = [
    'https://via.placeholder.com/1920x600?text=Changchi+Banner+1',
    'https://via.placeholder.com/1920x600?text=Changchi+Banner+2',
    'https://via.placeholder.com/1920x600?text=Changchi+Banner+3',
  ];
  const [current, setCurrent] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrent((prev) => (prev + 1) % banners.length);
    }, 5000);
    return () => clearInterval(interval);
  }, [banners.length]);

  return (
    <div className="w-full h-[600px] overflow-hidden">
      <img
        src={banners[current]}
        alt={`Banner ${current + 1}`}
        className="w-full h-full object-cover transition-opacity duration-1000"
      />
    </div>
  );
}

export default Banner;