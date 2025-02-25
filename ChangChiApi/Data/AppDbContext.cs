using Microsoft.EntityFrameworkCore;
using ChangChiApi.Models;

namespace ChangChiApi.Data
{
    public class AppDbContext : DbContext
    {
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // 配置 Category
            modelBuilder.Entity<Category>()
                .Property(c => c.Name_EN)
                .IsRequired();

            // 配置 Product
            modelBuilder.Entity<Product>()
                .Property(p => p.Name_EN)
                .IsRequired();

            modelBuilder.Entity<Product>()
                .Property(p => p.CreatedAt)
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            modelBuilder.Entity<Product>()
                .Property(p => p.UpdatedAt)
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            modelBuilder.Entity<Product>()
                .HasOne(p => p.Category)
                .WithMany(c => c.Products)
                .HasForeignKey(p => p.CategoryId);

            // 配置 ProductImage
            modelBuilder.Entity<ProductImage>()
                .Property(pi => pi.ImageUrl)
                .IsRequired();

            modelBuilder.Entity<ProductImage>()
                .Property(pi => pi.IsPrimary)
                .HasDefaultValue(false);

            modelBuilder.Entity<ProductImage>()
                .HasOne(pi => pi.Product)
                .WithMany(p => p.Images)
                .HasForeignKey(pi => pi.ProductId);
        }
    }
}