unit FPrincipalEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, pngimage, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Garantas1: TMenuItem;
    Reparacin1: TMenuItem;
    Llenarsolicitud1: TMenuItem;
    Llenarsolicitud2: TMenuItem;
    Verequiposengaranta1: TMenuItem;
    Verequiposenreparacin1: TMenuItem;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    Cmousarelsistema1: TMenuItem;
    Equipos1: TMenuItem;
    Ventadeequipo1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Recargas1: TMenuItem;
    Generarcdigos1: TMenuItem;
    Salir1: TMenuItem;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label3: TLabel;
    Verequiposenalmacen1: TMenuItem;
    Vercelularesasignados1: TMenuItem;
    ZConexion: TZConnection;
    N2: TMenuItem;
    Salir2: TMenuItem;
    Iniciarconotrousuario1: TMenuItem;
    ZQuery1: TZQuery;
    procedure Acercade1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Verequiposenreparacin1Click(Sender: TObject);
    procedure Llenarsolicitud1Click(Sender: TObject);
    procedure Llenarsolicitud2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Verequiposenalmacen1Click(Sender: TObject);
    procedure Ventadeequipo1Click(Sender: TObject);
    procedure Generarcdigos1Click(Sender: TObject);
    procedure Vercelularesasignados1Click(Sender: TObject);
    procedure Verequiposengaranta1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
  private
    { Private declarations }
    ZQMovimiento : TZQuery;
  public
    { Public declarations }
    idEmpleado, idSucursal : Integer;
    sucursal : String;
  end;

var
  FPrincipal: TFPrincipal;

implementation
uses
    FAcerca_De,F_Login,FAlmacen_Local,FGarantia,FReparacion,
    FRecargas,FGarantia_Alta, FReparacion_Alta, FAlmacen_Venta,
    F_RecargasAlta;


{$R *.dfm}

procedure TFPrincipal.Acercade1Click(Sender: TObject);
begin
    FAcercaDe.Enabled := false;
    FAcercaDe := TFAcercaDe.Create(self);
    FAcercaDe.ShowModal;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
    FAlmacenLocal.Enabled := false;
    FAlmacenLocal := TFAlmacenLocal.Create(self);
    FAlmacenLocal.ShowModal;
end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
    F_Recargas.Enabled := false;
    F_Recargas := TF_Recargas.Create(self);
    F_Recargas.ShowModal;
end;

procedure TFPrincipal.Button3Click(Sender: TObject);
begin
    FGarantias.Enabled := false;
    FGarantias := TFGarantias.Create(self);
    FGarantias.ShowModal;
end;

procedure TFPrincipal.Button4Click(Sender: TObject);
begin
    FReparaciones.Enabled := false;
    FReparaciones := TFReparaciones.Create(self);
    FReparaciones.ShowModal;
end;

procedure TFPrincipal.Button5Click(Sender: TObject);
begin
    if MessageDlg('Desea salir del programa?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
    begin
        FLogin.Close;
    end;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FLogin.Close;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
    Label2.Caption := FLogin.username.Text;

    ZQMovimiento := TZQuery.Create(self);
    ZQMovimiento.Connection := ZConexion;
    ZQMovimiento.ShowRecordTypes := [usUnmodified,usModified,usInserted];
    ZQMovimiento.Options := [doCalcDefaults];
    ZQMovimiento.AutoCalcFields := true;

    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT idempleado,idsucursal');
    ZQuery1.SQL.Add('FROM empleado');
    ZQuery1.SQL.Add('WHERE password=MD5("'+FLogin.username.Text+'")');
    ZQuery1.ExecSQL;
    ZQuery1.Open;

    idEmpleado := ZQuery1.FieldByName('idempleado').AsInteger;
    idSucursal := ZQuery1.FieldByName('idsucursal').AsInteger;

    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT sucursal FROM sucursal WHERE idsucursal='+IntToStr(idSucursal)+'');
    ZQuery1.ExecSQL;
    ZQuery1.Open;
    Sucursal := ZQuery1.FieldByName('sucursal').AsString;

end;

procedure TFPrincipal.Generarcdigos1Click(Sender: TObject);
begin
    FRecargasAlta.Enabled := false;
    FRecargasAlta := TFRecargasAlta.Create(self);
    FRecargasAlta.ShowModal;
end;

procedure TFPrincipal.Llenarsolicitud1Click(Sender: TObject);
begin
    FGarantiasAlta.Enabled := false;
    FGarantiasAlta := TFGarantiasAlta.Create(self);
    FGarantiasAlta.ShowModal;
end;

procedure TFPrincipal.Llenarsolicitud2Click(Sender: TObject);
begin
    FReparacionesAlta.Enabled := false;
    FReparacionesAlta := TFReparacionesAlta.Create(self);
    FReparacionesAlta.ShowModal;
end;

procedure TFPrincipal.Salir2Click(Sender: TObject);
begin
{    if MessageDlg('Desea salir del programa?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
    begin
        FLogin.Close;
    end;}
end;

procedure TFPrincipal.Ventadeequipo1Click(Sender: TObject);
begin
    if FAlmacenLocal.Marca = '' then
        ShowMessage('Primero seleccione un equipo para vender.')
    else
    begin
        FAlmacenVenta.Enabled := false;
        FAlmacenVenta := TFAlmacenVenta.Create(self);
        FAlmacenVenta.ShowModal;
    end;
end;

procedure TFPrincipal.Vercelularesasignados1Click(Sender: TObject);
begin
    F_Recargas.Enabled := false;
    F_Recargas := TF_Recargas.Create(self);
    F_Recargas.ShowModal;
end;

procedure TFPrincipal.Verequiposenalmacen1Click(Sender: TObject);
begin
    FAlmacenLocal.Enabled := false;
    FAlmacenLocal := TFAlmacenLocal.Create(self);
    FAlmacenLocal.ShowModal;
end;

procedure TFPrincipal.Verequiposengaranta1Click(Sender: TObject);
begin
    FGarantias.Enabled := false;
    FGarantias := TFGarantias.Create(self);
    FGarantias.ShowModal;
end;

procedure TFPrincipal.Verequiposenreparacin1Click(Sender: TObject);
begin
    FReparaciones.Enabled := false;
    FReparaciones := TFReparaciones.Create(self);
    FReparaciones.ShowModal;
end;

end.
