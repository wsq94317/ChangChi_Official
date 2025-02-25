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
        public async Task<ActionResult<IEnumerable<Product>>> GetProducts()
        {
            return await _context.Products.Include(p => p.Category).Include(p => p.Images).ToListAsync();
        }
    }

}