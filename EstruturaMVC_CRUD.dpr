program EstruturaMVC_CRUD;

uses
  Vcl.Forms,
  uMainView in 'src\view\uMainView.pas' {Form1},
  uConnection in 'src\infrastructure\connection\uConnection.pas',
  uConnectionFiredacImpl in 'src\infrastructure\connection\impl\uConnectionFiredacImpl.pas',
  uQuery in 'src\infrastructure\query\uQuery.pas',
  uQueryFiredacImpl in 'src\infrastructure\query\impl\uQueryFiredacImpl.pas',
  uConnectionFactory in 'src\infrastructure\connection\uConnectionFactory.pas',
  uConnectionFactoryImpl in 'src\infrastructure\connection\impl\uConnectionFactoryImpl.pas',
  uQueryFactory in 'src\infrastructure\query\uQueryFactory.pas',
  uQueryFactoryImpl in 'src\infrastructure\query\impl\uQueryFactoryImpl.pas',
  uCidadeDTO in 'src\dto\uCidadeDTO.pas',
  uCidadeService in 'src\service\uCidadeService.pas',
  uCidadeDAO in 'src\infrastructure\dao\uCidadeDAO.pas',
  uCrudDAO in 'src\infrastructure\dao\uCrudDAO.pas',
  uCidadeDAOImpl in 'src\infrastructure\dao\impl\uCidadeDAOImpl.pas',
  uCidadeServiceImpl in 'src\service\impl\uCidadeServiceImpl.pas',
  uCidadeController in 'src\controller\uCidadeController.pas',
  uCidadeControllerImpl in 'src\controller\impl\uCidadeControllerImpl.pas',
  uControllerFactory in 'src\controller\uControllerFactory.pas',
  uControllerFactoryImpl in 'src\controller\impl\uControllerFactoryImpl.pas',
  uDaoFactory in 'src\infrastructure\dao\uDaoFactory.pas',
  uDaoFactoryImpl in 'src\infrastructure\dao\impl\uDaoFactoryImpl.pas',
  uServiceFactory in 'src\service\uServiceFactory.pas',
  uServiceFactoryImpl in 'src\service\impl\uServiceFactoryImpl.pas',
  uFrmCidade in 'src\view\uFrmCidade.pas' {FrmCidades},
  uClienteDTO in 'src\dto\uClienteDTO.pas',
  uEnums in 'src\comum\uEnums.pas',
  uClienteDAO in 'src\infrastructure\dao\uClienteDAO.pas',
  uClienteDAOImpl in 'src\infrastructure\dao\impl\uClienteDAOImpl.pas',
  uFrmCliente in 'src\view\uFrmCliente.pas' {FrmCliente},
  uClienteService in 'src\service\uClienteService.pas',
  uClienteServiceImpl in 'src\service\impl\uClienteServiceImpl.pas',
  uClienteController in 'src\controller\uClienteController.pas',
  uClienteControllerImpl in 'src\controller\impl\uClienteControllerImpl.pas',
  uFramePesquisa in 'src\view\frame\uFramePesquisa.pas' {FramePesquisa: TFrame},
  uFramePesquisaController in 'src\controller\uFramePesquisaController.pas',
  uFramePesquisaCidadeControllerImpl in 'src\controller\impl\uFramePesquisaCidadeControllerImpl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
