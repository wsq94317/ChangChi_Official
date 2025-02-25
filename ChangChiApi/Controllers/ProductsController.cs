using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ChangChiApi.Data;
using ChangChiApi.Models;

namespace ChangChiApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ProductsController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetProducts()
        {
            var products = await _context.Products
                .Select(p => new
                {
                    p.Id,
                    p.Name_EN,
                    p.Name_ZH_CN,
                    p.Name_ZH_TW,
                    p.Name_VN,
                    p.Name_KO,
                    p.Name_JA,
                    p.CreatedAt,
                    p.UpdatedAt,
                    Category = new { p.Category!.Id, p.Category.Name_EN }, // 使用 ! 表示非空（EF Core 会填充）
                    Images = p.Images.Select(i => new { i.Id, i.ImageUrl, i.IsPrimary })
                })
                .ToListAsync();
            return Ok(products);
        }
    }
}