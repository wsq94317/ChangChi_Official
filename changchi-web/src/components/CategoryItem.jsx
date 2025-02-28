import React from 'react';

function CategoryItem({ category, language}){
    const getCategoryName = () => {
        switch (language) {
            case 'zh-CN': return category.name_ZH_CN || category.name_EN;
            case 'zh-TW': return category.name_ZH_TW || category.name_EN;
            case 'vn': return category.name_VN || category.name_EN;
            case 'ko': return category.name_KO || category.name_EN;
            case 'ja': return category.name_JA || category.name_EN;
            default: return category.name_EN;
        }
    };

    return (
        <a
        href={`#${category.name_EN.toLowerCase()}`}
        className="flex flex-col items-center text-white hover:text-gray-200 w-[120px]"
        >
        <img
            src="/logo.png" // 替换为实际图标路径
            alt={`${category.name_EN} icon`}
            className="w-[120px] h-[120px] object-cover"
        />
        <div
            className="bg-gray-800 w-full text-center py-2 text-sm"
            style={{ minHeight: '40px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}
        >
            {getCategoryName()}
        </div>
        </a>
    );
}

export default CategoryItem;