using Microsoft.EntityFrameworkCore;
using ChangChiApi.Data;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);

// 添加控制器并配置 JSON 序列化
builder.Services.AddControllers()
    .AddJsonOptions(options =>
    {
        options.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.Preserve; // 处理循环引用
    });

// 注册数据库上下文
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection")));

// 配置 CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder =>
    {
        builder.WithOrigins("http://localhost:5173")
            .AllowAnyMethod()
            .AllowAnyHeader();
    });
});

var app = builder.Build();

app.UseCors("AllowAll");
app.MapControllers();

app.Run();