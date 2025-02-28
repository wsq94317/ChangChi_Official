import { useState, useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import CategoryItem from './CategoryItem';

function Navbar() {
  const { t, i18n } = useTranslation();
  const [isProductOpen, setIsProductOpen] = useState(false);
  const [categories, setCategories] = useState([]);

  useEffect(() => {
    fetch('/api/categories')
      .then((res) => {
        if (!res.ok) throw new Error(`HTTP error! Status: ${res.status}`);
        return res.json();
      })
      .then((data) => {
        const categoryList = data.$values || data || [];
        setCategories(categoryList.length > 0 ? categoryList : [
          { id: 1, name_EN: 'Tofu', name_ZH_CN: '豆腐类' },
          { id: 2, name_EN: 'Japanese Tofu', name_ZH_CN: '日本豆腐类' },
        ]);
      })
      .catch((err) => {
        console.error('Fetch categories failed:', err.message);
        setCategories([
          { id: 1, name_EN: 'Tofu', name_ZH_CN: '豆腐类' },
          { id: 2, name_EN: 'Japanese Tofu', name_ZH_CN: '日本豆腐类' },
        ]);
      });
  }, []);

  return (
    <nav className="fixed top-0 w-full bg-yellow-500 text-white p-4 shadow-lg z-10">
      <div className="max-w-screen-xl mx-auto flex justify-between items-center">
        <a href="/" className="flex items-center">
          <img src="/logo.png" alt="Changchi Logo" className="h-10 w-auto m-2" />
        </a>
        <div className="flex space-x-6 items-center">
          <div
            className="relative"
            onMouseEnter={() => setIsProductOpen(true)}
            onMouseLeave={() => setIsProductOpen(false)}
          >
            <button className="px-3 py-1 rounded hover:bg-gray-800">
              {t('products')}
            </button>
            {isProductOpen && (
              <div
                className="absolute left-1/2 transform -translate-x-1/2 bg-yellow-600 p-4 rounded-b-lg flex"
                style={{ width: 'max-content' }}
              >
                {categories.map((cat) => (
                  <CategoryItem key={cat.id} category={cat} language={i18n.language} />
                ))}
              </div>
            )}
          </div>
          <a href="#recipes" className="hover:bg-yellow-600 px-3 py-1 rounded">{t('recipes')}</a>
          <a href="#social" className="hover:bg-yellow-600 px-3 py-1 rounded">{t('social_media')}</a>
          <a href="#partners" className="hover:bg-yellow-600 px-3 py-1 rounded">{t('partners')}</a>
          <a href="#contact" className="hover:bg-yellow-600 px-3 py-1 rounded">{t('contact')}</a>
          <a href="/employee" className="hover:bg-yellow-600 px-3 py-1 rounded">{t('employee_login')}</a>
          <select
            onChange={(e) => i18n.changeLanguage(e.target.value)}
            className="bg-yellow-600 text-white p-1 rounded"
          >
            <option value="en">English</option>
            <option value="zh-CN">简体中文</option>
            <option value="zh-TW">繁體中文</option>
            <option value="vn">Tiếng Việt</option>
            <option value="ko">한국어</option>
            <option value="ja">日本語</option>
          </select>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;