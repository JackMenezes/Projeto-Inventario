program AX;

{$R *.dres}

uses
  Forms,
  Controls,
  Windows,
  Dialogs,
  ULogin in 'Source\ULogin.pas' {FrmLogin},
  UPrincipal in 'Source\UPrincipal.pas' {FrmPrincipal},
  UInventario in 'Source\UInventario.pas' {FrmInventario},
  UFuncProc in 'Source\UFuncProc.pas',
  UImportaCad in 'Source\UImportaCad.pas' {FrmImportaCad},
  UHorario in 'Source\UHorario.pas' {FrmHorario},
  UFinalizaInvent in 'Source\UFinalizaInvent.pas' {FrmFinalizaInvent},
  URestTransm in 'Source\URestTransm.pas' {FrmRestTram},
  UPesquisa in 'Source\UPesquisa.pas' {FrmLocalizar},
  UBackupInvent in 'Source\UBackupInvent.pas' {FrmBackupInvent},
  USelecionaSecao in 'Source\USelecionaSecao.pas' {FrmSelSecao},
  UAguarde in 'Source\UAguarde.pas' {FrmAguarde},
  UFrmMasterLibrary in 'Source\UFrmMasterLibrary.pas' {FrmMasterLibrary},
  ULayout in 'Source\ULayout.pas' {FrmLayout},
  UFrmLayoutOutput in 'Source\UFrmLayoutOutput.pas' {FrmLayoutOutput},
  UFrmProdutividade in 'Source\UFrmProdutividade.pas' {FrmProdutividade},
  UFrmLayoutExiste in 'Source\UFrmLayoutExiste.pas' {FrmLayoutExiste},
  UFrmUpdate in 'Source\UFrmUpdate.pas' {FrmUpdate},
  UFrmConfigSMTP in 'Source\UFrmConfigSMTP.pas' {FrmConfigSMTP},
  UCadInv in 'Source\UCadInv.pas' {FrmCadInv},
  UFrmAllLayouts in 'Source\UFrmAllLayouts.pas' {FrmAllLayouts},
  UDivergencia in 'Source\UDivergencia.pas' {FrmDivergencia},
  Udm2 in 'Source\Udm2.pas' {Dm2: TDataModule},
  U_RelEAN in 'Source\U_RelEAN.pas' {FrmRelCodigo},
  UDivergenciaQtd in 'Source\UDivergenciaQtd.pas' {FrmDivergenciaQtd},
  URuptura in 'Source\URuptura.pas' {FrmRuptura},
  UFrmHorGlobal in 'Source\UFrmHorGlobal.pas' {FrmHorarioGlobal},
  UFrmProdQuant in 'Source\UFrmProdQuant.pas' {FrmProdQuant},
  URelAuditQtdSecEan in 'Source\URelAuditQtdSecEan.pas' {FrmAuditQtdSecEan},
  UFrmAuditQtdSecEanReal in 'Source\UFrmAuditQtdSecEanReal.pas' {FrmAuditQtdSecEanReal},
  UCadastroLayout in 'Source\UCadastroLayout.pas' {FrmCadastroLayout},
  U_Rel_AuditSint in 'Source\U_Rel_AuditSint.pas' {FrmAudit_Sint},
  UFrmBkp in 'Source\UFrmBkp.pas' {FrmBkp},
  UTotalNCadastrado in 'Source\UTotalNCadastrado.pas' {FrmNCadastrado},
  Vcl.Themes,
  Vcl.Styles,
  Vcl.PlatformVclStylesActnCtrls in 'Source\vcl-styles-utils-master\Common\Vcl.PlatformVclStylesActnCtrls.pas',
  Vcl.Styles.ColorTabs in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.ColorTabs.pas',
  Vcl.Styles.ControlColor in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.ControlColor.pas',
  Vcl.Styles.DateTimePickers in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.DateTimePickers.pas',
  Vcl.Styles.DbGrid in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.DbGrid.pas',
  Vcl.Styles.Ext in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Ext.pas',
  Vcl.Styles.Fixes in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Fixes.pas',
  Vcl.Styles.FormStyleHooks in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.FormStyleHooks.pas',
  Vcl.Styles.Hooks in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Hooks.pas',
  Vcl.Styles.NC in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.NC.pas',
  Vcl.Styles.OwnerDrawFix in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.OwnerDrawFix.pas',
  Vcl.Styles.Utils.ComCtrls in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.ComCtrls.pas',
  Vcl.Styles.Utils.Forms in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.Forms.pas',
  Vcl.Styles.Utils.Graphics in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.Graphics.pas',
  Vcl.Styles.Utils.Menus in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.Menus.pas',
  Vcl.Styles.Utils in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.pas',
  Vcl.Styles.Utils.ScreenTips in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.ScreenTips.pas',
  Vcl.Styles.Utils.Shadow in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.Shadow.pas',
  Vcl.Styles.Utils.StdCtrls in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.StdCtrls.pas',
  Vcl.Styles.Utils.SysControls in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.SysControls.pas',
  Vcl.Styles.Utils.SysStyleHook in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.SysStyleHook.pas',
  Vcl.Styles.Utils.SystemMenu in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.Utils.SystemMenu.pas',
  Vcl.Styles.UxTheme in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.UxTheme.pas',
  Vcl.Styles.WebBrowser in 'Source\vcl-styles-utils-master\Common\Vcl.Styles.WebBrowser.pas',
  CPUID in 'Source\vcl-styles-utils-master\Common\delphi-detours-library\CPUID.pas',
  DDetours in 'Source\vcl-styles-utils-master\Common\delphi-detours-library\DDetours.pas',
  GenericsCast in 'Source\vcl-styles-utils-master\Common\delphi-detours-library\GenericsCast.pas',
  InstDecode in 'Source\vcl-styles-utils-master\Common\delphi-detours-library\InstDecode.pas',
   UDm in 'Source\UDm.pas' {DM: TDataModule};

{$R *.res}

var    //
hMutex: THandle; //

begin
hMutex := CreateMutex(nil, true, PChar('[{23B1EEFF-4775-4FA9-9C5-6BFEAC48F551}]'));  //
if (hMutex <> 0) and (GetLastError = 0) then   //
Begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.Title := 'AX';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TDm2, Dm2);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmNCadastrado, FrmNCadastrado);
  Application.Run;
End
else
Application.MessageBox('O AX já está em execução!', 'Mensagem do Sistema', MB_ICONERROR + MB_OK);



end.
