public class Program
{
    public static void Main(string[] args)
    {
        var construtor = WebApplication.CreateBuilder(args);

        construtor.Services.AddControllers();
        construtor.Services.AddSingleton<ConexaoBanco>();

        var aplicacao = construtor.Build();

        aplicacao.MapControllers();

        aplicacao.Run();
    }
}