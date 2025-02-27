using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ChangChiApi.Data;
using ChangChiApi.Models;

namespace ChangChiApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
        private readonly AppDbContext _context;

        public CategoriesController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetCategories()
        {
            return await _context.Categories
                .Select(c => new
                {
                    c.Id,
                    c.Name_EN,
                    c.Name_ZH_CN,
                    c.Name_ZH_TW,
                    c.Name_VN,
                    c.Name_KO,
                    c.Name_JA
                })
                .ToListAsync();
        }
    }
}