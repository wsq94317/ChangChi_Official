-- 清空现有数据
TRUNCATE TABLE "ProductImages" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "Products" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "Categories" RESTART IDENTITY CASCADE;

-- 插入分类
INSERT INTO "Categories" ("Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
('Tofu', '豆腐类', '豆腐類', 'Đậu phụ', '두부류', '豆腐類'),
('Japanese Tofu', '日本豆腐类', '日本豆腐類', 'Đậu phụ Nhật Bản', '일본 두부류', '日本豆腐類'),
('Vietnamese Tofu', '越南豆腐类', '越南豆腐類', 'Đậu phụ Việt Nam', '베트남 두부류', 'ベトナム豆腐類'),
('Dessert', '甜品类', '甜品類', 'Tráng miệng', '디저트류', 'デザート類'),
('Soy Milk', '豆浆类', '豆漿類', 'Sữa đậu nành', '두유류', '豆乳類'),
('Buns', '馒头类', '饅頭類', 'Bánh bao', '만두류', '饅頭類'),
('Frozen Meat', '冷冻肉类', '冷凍肉類', 'Thịt đông lạnh', '냉동육류', '冷凍肉類'),
('Dumplings', '水饺/馄饨类', '水餃/餛飩類', 'Bánh bao nước/Sủi cảo', '만두/완탕류', '水餃子/ワンタン類');

-- 插入产品
-- 豆腐类 (CategoryId = 1)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(1, 'Soft Tofu', '山水豆腐', '山水豆腐', 'Đậu phụ mềm', '부드러운 두부', '山水豆腐'),
(1, 'Firm Tofu', '老豆腐', '老豆腐', 'Đậu phụ cứng', '단단한 두부', '老豆腐'),
(1, 'Regular Soft Tofu', '营养豆腐', '營養豆腐', 'Đậu phụ dinh dưỡng', '영양 두부', '栄養豆腐'),
(1, 'Braised Tofu 300g', '香Q豆干300g', '香Q豆乾300g', 'Đậu phụ om 300g', '향긋한 두부 300g', '香Q豆干300g'),
(1, 'Braised Tofu 500g', '香Q豆干500g', '香Q豆乾500g', 'Đậu phụ om 500g', '향긋한 두부 500g', '香Q豆干500g'),
(1, 'Deep Fried Tofu 300g', '炸豆腐300g', '炸豆腐300g', 'Đậu phụ chiên 300g', '튀긴 두부 300g', '揚げ豆腐300g'),
(1, 'Deep Fried Tofu 500g', '炸豆腐500g', '炸豆腐500g', 'Đậu phụ chiên 500g', '튀긴 두부 500g', '揚げ豆腐500g'),
(1, 'Tofu Noodles', '白干丝300g', '白乾絲300g', 'Mì đậu phụ 300g', '두부 면 300g', '白干絲300g'),
(1, 'Extra Firm Tofu', '硬豆腐', '硬豆腐', 'Đậu phụ rất cứng', '특히 단단한 두부', '硬豆腐'),
(1, 'Silken Tofu', '绢豆腐', '絹豆腐', 'Đậu phụ lụa', '비단 두부', '絹豆腐'),
(1, 'Tofu Puff', '豆泡', '豆泡', 'Đậu phụ phồng', '두부 퍼프', '豆腐パフ');

-- 日本豆腐类 (CategoryId = 2)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(2, 'Soft Fried Tofu', '极上炸豆腐', '極上炸豆腐', 'Đậu phụ chiên mềm cao cấp', '최상급 튀긴 두부', '極上揚げ豆腐'),
(2, 'Japanese Fried Tofu', '厚扬', '厚揚', 'Đậu phụ chiên Nhật', '일본 튀긴 두부', '厚揚げ'),
(2, 'Japanese Firm Tofu', '功夫', '功夫', 'Đậu phụ cứng Nhật', '공부 두부', '功夫豆腐'),
(2, 'Japanese Grilled Tofu', '烧', '燒', 'Đậu phụ nướng Nhật', '구운 두부', '焼き豆腐'),
(2, 'Okara', '渣', '渣', 'Bã đậu phụ', '오카라', 'おから'),
(2, 'Japanese Silken Tofu', '江户', '江戶', 'Đậu phụ lụa Edo', '에도 비단 두부', '江戸豆腐'),
(2, 'Yuba', '豆包', '豆包', 'Váng đậu phụ', '유바', '湯葉');

-- 越南豆腐类 (CategoryId = 3)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(3, 'Fresh Fried Tofu 400g', '新鲜炸豆腐', '新鮮炸豆腐', 'Đậu phụ chiên tươi 400g', '신선한 튀긴 두부 400g', '新鲜揚げ豆腐400g');

-- 甜品类 (CategoryId = 4)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(4, 'Soy Pudding with Syrup', '糖水豆花', '糖水豆花', 'Chè đậu phụ', '시럽 두부 푸딩', '糖水豆腐花'),
(4, 'Soy Pudding with Peanut/Red Bean', '花生/红豆豆花', '花生/紅豆豆花', 'Chè đậu phụ đậu phộng/đậu đỏ', '땅콩/팥 두부 푸딩', '花生/赤豆豆腐花'),
(4, 'Peanut Pudding', '花生豆花', '花生豆花', 'Chè đậu phụ đậu phộng', '땅콩 두부 푸딩', '花生豆腐花');

-- 豆浆类 (CategoryId = 5)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(5, 'Soy Drink 1L', '甜豆浆1L', '甜豆漿1L', 'Sữa đậu nành ngọt 1L', '달콤한 두유 1L', '甘い豆乳1L'),
(5, 'Soy Drink 2L', '甜豆浆2L', '甜豆漿2L', 'Sữa đậu nành ngọt 2L', '달콤한 두유 2L', '甘い豆乳2L'),
(5, 'Unsweetened Soy Drink 2L', '无糖豆浆2L', '無糖豆漿2L', 'Sữa đậu nành không đường 2L', '무가당 두유 2L', '無糖豆乳2L'),
(5, 'Peanut Soy Milk 1L', '花生豆浆1L', '花生豆漿1L', 'Sữa đậu nành đậu phộng 1L', '땅콩 두유 1L', 'ピーナッツ豆乳1L'),
(5, 'Peanut Rice Milk 1L', '米浆1L', '米漿1L', 'Sữa gạo 1L', '쌀 두유 1L', '米乳1L'),
(5, 'Peanut Rice Milk 2L', '米浆2L', '米漿2L', 'Sữa gạo 2L', '쌀 두유 2L', '米乳2L');

-- 馒头类 (CategoryId = 6)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(6, 'Small Milk Buns', '小白馒头', '小白饅頭', 'Bánh bao sữa nhỏ', '작은 우유 만두', '小白饅頭'),
(6, 'Big Milk Buns', '大白馒头', '大白饅頭', 'Bánh bao sữa lớn', '큰 우유 만두', '大白饅頭'),
(6, 'Small Brown Sugar Buns', '黑糖小馒头', '黑糖小饅頭', 'Bánh bao đường nâu nhỏ', '작은 흑설탕 만두', '黒糖小饅頭'),
(6, 'Brown Sugar Buns', '黑糖大馒头', '黑糖大饅頭', 'Bánh bao đường nâu lớn', '큰 흑설탕 만두', '黒糖大饅頭'),
(6, 'Whole Wheat Buns', '全麦馒头', '全麥饅頭', 'Bánh bao lúa mì nguyên cám', '통밀 만두', '全麦饅頭'),
(6, 'Black Bean Bun', '黑豆豆包', '黑豆豆包', 'Bánh bao đậu đen', '검은콩 만두', '黒豆饅頭'),
(6, 'Pork Bun', '大肉包', '大肉包', 'Bánh bao thịt lớn', '큰 고기 만두', '大肉饅頭');

-- 冷冻肉类 (CategoryId = 7)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(7, 'Salt Pepper Chicken', '咸酥鸡', '鹹酥雞', 'Gà muối tiêu', '소금 후추 치킨', '塩胡椒チキン'),
(7, 'Burger', '汉堡肉', '漢堡肉', 'Thịt bánh mì kẹp', '버거 패티', 'ハンバーグ'),
(7, 'Chicken Cartilage', '鸡脆骨', '雞脆骨', 'Sụn gà', '닭 연골', '鶏軟骨');

-- 水饺/馄饨类 (CategoryId = 8)
INSERT INTO "Products" ("CategoryId", "Name_EN", "Name_ZH_CN", "Name_ZH_TW", "Name_VN", "Name_KO", "Name_JA") VALUES
(8, 'Chive and Pork Dumplings', '香葱猪肉水饺', '香蔥豬肉水餃', 'Bánh bao nước hẹ và thịt lợn', '쪽파 돼지고기 만두', 'ニラ豚肉水餃子'),
(8, 'Chive and Pork Wontons', '香葱猪肉馄饨', '香蔥豬肉餛飩', 'Sủi cảo hẹ và thịt lợn', '쪽파 돼지고기 완탕', 'ニラ豚肉ワンタン'),
(8, 'Leek and Pork Dumplings', '韭菜猪肉水饺', '韭菜豬肉水餃', 'Bánh bao nước tỏi tây và thịt lợn', '부추 돼지고기 만두', '韮豚肉水餃子'),
(8, 'Leek and Pork Wontons', '韭菜猪肉馄饨', '韭菜豬肉餛飩', 'Sủi cảo tỏi tây và thịt lợn', '부추 돼지고기 완탕', '韮豚肉ワンタン');

-- 插入产品图片
INSERT INTO "ProductImages" ("ProductId", "ImageUrl", "IsPrimary") VALUES
-- 豆腐类
(1, 'https://via.placeholder.com/300?text=Soft+Tofu+1', TRUE),
(1, 'https://via.placeholder.com/300?text=Soft+Tofu+2', FALSE),
(2, 'https://via.placeholder.com/300?text=Firm+Tofu+1', TRUE),
(3, 'https://via.placeholder.com/300?text=Regular+Soft+Tofu+1', TRUE),
(4, 'https://via.placeholder.com/300?text=Braised+Tofu+300g+1', TRUE),
(5, 'https://via.placeholder.com/300?text=Braised+Tofu+500g+1', TRUE),
(6, 'https://via.placeholder.com/300?text=Deep+Fried+Tofu+300g+1', TRUE),
(7, 'https://via.placeholder.com/300?text=Deep+Fried+Tofu+500g+1', TRUE),
(8, 'https://via.placeholder.com/300?text=Tofu+Noodles+1', TRUE),
(9, 'https://via.placeholder.com/300?text=Extra+Firm+Tofu+1', TRUE),
(10, 'https://via.placeholder.com/300?text=Silken+Tofu+1', TRUE),
(11, 'https://via.placeholder.com/300?text=Tofu+Puff+1', TRUE),
(11, 'https://via.placeholder.com/300?text=Tofu+Puff+2', FALSE),

-- 日本豆腐类
(12, 'https://via.placeholder.com/300?text=Soft+Fried+Tofu+1', TRUE),
(13, 'https://via.placeholder.com/300?text=Japanese+Fried+Tofu+1', TRUE),
(14, 'https://via.placeholder.com/300?text=Japanese+Firm+Tofu+1', TRUE),
(15, 'https://via.placeholder.com/300?text=Japanese+Grilled+Tofu+1', TRUE),
(16, 'https://via.placeholder.com/300?text=Okara+1', TRUE),
(17, 'https://via.placeholder.com/300?text=Japanese+Silken+Tofu+1', TRUE),
(18, 'https://via.placeholder.com/300?text=Yuba+1', TRUE),

-- 越南豆腐类
(19, 'https://via.placeholder.com/300?text=Fresh+Fried+Tofu+400g+1', TRUE),

-- 甜品类
(20, 'https://via.placeholder.com/300?text=Soy+Pudding+Syrup+1', TRUE),
(20, 'https://via.placeholder.com/300?text=Soy+Pudding+Syrup+2', FALSE),
(21, 'https://via.placeholder.com/300?text=Soy+Pudding+Peanut+RedBean+1', TRUE),
(22, 'https://via.placeholder.com/300?text=Peanut+Pudding+1', TRUE),

-- 豆浆类
(23, 'https://via.placeholder.com/300?text=Soy+Drink+1L+1', TRUE),
(24, 'https://via.placeholder.com/300?text=Soy+Drink+2L+1', TRUE),
(25, 'https://via.placeholder.com/300?text=Unsweetened+Soy+Drink+2L+1', TRUE),
(26, 'https://via.placeholder.com/300?text=Peanut+Soy+Milk+1L+1', TRUE),
(27, 'https://via.placeholder.com/300?text=Peanut+Rice+Milk+1L+1', TRUE),
(28, 'https://via.placeholder.com/300?text=Peanut+Rice+Milk+2L+1', TRUE),

-- 馒头类
(29, 'https://via.placeholder.com/300?text=Small+Milk+Buns+1', TRUE),
(30, 'https://via.placeholder.com/300?text=Big+Milk+Buns+1', TRUE),
(31, 'https://via.placeholder.com/300?text=Small+Brown+Sugar+Buns+1', TRUE),
(32, 'https://via.placeholder.com/300?text=Brown+Sugar+Buns+1', TRUE),
(33, 'https://via.placeholder.com/300?text=Whole+Wheat+Buns+1', TRUE),
(34, 'https://via.placeholder.com/300?text=Black+Bean+Bun+1', TRUE),
(35, 'https://via.placeholder.com/300?text=Pork+Bun+1', TRUE),

-- 冷冻肉类
(36, 'https://via.placeholder.com/300?text=Salt+Pepper+Chicken+1', TRUE),
(37, 'https://via.placeholder.com/300?text=Burger+1', TRUE),
(38, 'https://via.placeholder.com/300?text=Chicken+Cartilage+1', TRUE),

-- 水饺/馄饨类
(39, 'https://via.placeholder.com/300?text=Chive+Pork+Dumplings+1', TRUE),
(40, 'https://via.placeholder.com/300?text=Chive+Pork+Wontons+1', TRUE),
(41, 'https://via.placeholder.com/300?text=Leek+Pork+Dumplings+1', TRUE),
(42, 'https://via.placeholder.com/300?text=Leek+Pork+Wontons+1', TRUE);