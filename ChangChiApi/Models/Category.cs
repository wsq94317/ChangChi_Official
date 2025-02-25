namespace ChangChiApi.Models
{
    public class Category
    {
        public int Id { get; set; }
        public string Name_EN { get; set; } = string.Empty; // NOT NULL
        public string? Name_ZH_CN { get; set; }
        public string? Name_ZH_TW { get; set; }
        public string? Name_VN { get; set; }
        public string? Name_KO { get; set; }
        public string? Name_JA { get; set; }
        public List<Product> Products { get; set; } = new List<Product>();
    }
}