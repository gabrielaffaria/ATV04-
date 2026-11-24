public class ConexaoBanco
{
    private string _stringConexao;

    public ConexaoBanco(IConfiguration configuracao)
    {
        _stringConexao = configuracao.GetConnectionString("DefaultConnection")!;
    }

    public NpgsqlConnection ObterConexao()
    {
        return new NpgsqlConnection(_stringConexao);
    }
}