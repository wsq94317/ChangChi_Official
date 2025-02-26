import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

i18n.use(initReactI18next).init({
  resources: {
    en: { translation: { home: 'Home', products: 'Products', recipes: 'Recipes', social_media: 'Social Media', partners: 'Partners', contact: 'Contact', employee_login: 'Employee Login' } },
    'zh-CN': { translation: { home: '首页', products: '产品', recipes: '菜谱', social_media: '社交媒体', partners: '合作商家', contact: '联系方式', employee_login: '员工登录' } },
    'zh-TW': { translation: { home: '首頁', products: '產品', recipes: '食譜', social_media: '社交媒體', partners: '合作商家', contact: '聯繫方式', employee_login: '員工登錄' } },
    vn: { translation: { home: 'Trang chủ', products: 'Sản phẩm', recipes: 'Công thức', social_media: 'Mạng xã hội', partners: 'Đối tác', contact: 'Liên hệ', employee_login: 'Đăng nhập nhân viên' } },
    ko: { translation: { home: '홈', products: '제품', recipes: '레시피', social_media: '소셜 미디어', partners: '파트너', contact: '연락처', employee_login: '직원 로그인' } },
    ja: { translation: { home: 'ホーム', products: '製品', recipes: 'レシピ', social_media: 'ソーシャルメディア', partners: 'パートナー', contact: '連絡先', employee_login: '社員ログイン' } },
  },
  lng: 'en',
  fallbackLng: 'en',
  interpolation: { escapeValue: false },
});

export default i18n;