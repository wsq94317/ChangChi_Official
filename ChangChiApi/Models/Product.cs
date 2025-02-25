namespace ChangChiApi.Models
{
    public class Product
    {
        public int Id { get; set; }
        public int CategoryId { get; set; }
        public string Name_EN { get; set; } = string.Empty; // NOT NULL
        public string? Name_ZH_CN { get; set; }
        public string? Name_ZH_TW { get; set; }
        public string? Name_VN { get; set; }
        public string? Name_KO { get; set; }
        public string? Name_JA { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.Now; // 默认值
        public DateTime UpdatedAt { get; set; } = DateTime.Now; // 默认值
        public Category Category { get; set; }
        public List<ProductImage> Images { get; set; } = new List<ProductImage>();
    }
}