[Route("api/conexao/testar")]
public class ConexaoController : ControllerBase
{
    private ConexaoBanco _conexaoBanco;

    public ConexaoController(ConexaoBanco conexaoBanco)
    {
        _conexaoBanco = conexaoBanco;
    }

    public object Testar()
    {
        var conexao = _conexaoBanco.ObterConexao();
        conexao.Open();

        var comando = new NpgsqlCommand("SELECT 1;", conexao);
        var resultado = comando.ExecuteScalar();

        conexao.Close();

        return new
        {
            sucesso = true,
            mensagem = "Conexão com o PostgreSQL realizada com sucesso!",
            resultadoConsulta = resultado
        };
    }
}