namespace ChangChiApi.Models
{
    public class ProductImage
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string ImageUrl { get; set; } = string.Empty; // NOT NULL
        public bool IsPrimary { get; set; } = false; // 默认 FALSE
        public Product Product { get; set; }
    }
}