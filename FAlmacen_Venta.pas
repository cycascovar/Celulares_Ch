unit FAlmacen_Venta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFAlmacenVenta = class(TForm)
    MainMenu1: TMainMenu;
    Equipos1: TMenuItem;
    Ventadeequipo1: TMenuItem;
    Recargas1: TMenuItem;
    Generarcdigos1: TMenuItem;
    Garantas1: TMenuItem;
    Llenarsolicitud1: TMenuItem;
    Bajadegaranta1: TMenuItem;
    Verequiposengaranta1: TMenuItem;
    Reparacin1: TMenuItem;
    Llenarsolicitud2: TMenuItem;
    Bajadereparacin1: TMenuItem;
    Verequiposenreparacin1: TMenuItem;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    Cmousarelsistema1: TMenuItem;
    Salir1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LImei: TLabel;
    LModelo: TLabel;
    LMarca: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label9: TLabel;
    ZQVentas: TZQuery;
    DSVentas: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ZQMovimiento : TZquery;
  public
    { Public declarations }
  end;

var
  FAlmacenVenta: TFAlmacenVenta;

implementation
uses
    FAlmacen_Local, F_Login, FPrincipalEmpleados;
{$R *.dfm}

procedure TFAlmacenVenta.Button1Click(Sender: TObject);
begin
    if (Edit1.Text = '') and (Edit2.Text = '') then
    begin
        Application.MessageBox('Hay espacios vacios.','Error',MB_ICONINFORMATION);
        ZQMovimiento.Close;
        ZQMovimiento.SQL.Clear;
        ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles)');
        ZQMovimiento.SQL.Add('VALUES ("Error al ingresar datos del cliente: Espacios vacios","El usuario '+FLogin.username.Text+' intento realizar una venta sin llenar algunos campos.")');
        ZQMovimiento.ExecSQL;
    end
    else
    begin
        ZQVentas.Close;
        ZQVentas.SQL.Clear;
        ZQVentas.SQL.Add('INSERT INTO venta_detalle(idempleado,idequipo_almacen)');
        ZQVentas.SQL.Add('VALUES("'+IntToStr(FPrincipal.idEmpleado)+'")');

        ZQMovimiento.Close;
        ZQMovimiento.SQL.Clear;
        ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles)');
        ZQMovimiento.SQL.Add('VALUES ("Venta realizada","El usuario '+FLogin.username.Text+' ha realizado una venta: '+LModelo.Caption+', '+LMarca.Caption+'. el dia '+DateToStr(Now())+'")');
        ZQMovimiento.ExecSQL;

        Application.MessageBox('Equipo vendido.','Información',MB_ICONINFORMATION);
    end;
end;

procedure TFAlmacenVenta.Button2Click(Sender: TObject);
begin
    Edit1.Clear;
    Edit2.Clear;
end;

procedure TFAlmacenVenta.Button3Click(Sender: TObject);
begin
    FAlmacenVenta.Close;
end;

procedure TFAlmacenVenta.FormShow(Sender: TObject);
begin
//    if FAlmacenLocal.Imei <> 0 then
        LImei.Caption := IntToStr(FAlmacenLocal.Imei);
        LMarca.Caption := FAlmacenLocal.Marca;
        LModelo.Caption := FAlmacenLocal.Modelo;

    ZQMovimiento := TZQuery.Create(self);
    ZQMovimiento.Connection := FPrincipal.ZConexion;
    ZQMovimiento.ShowRecordTypes := [usUnmodified,usModified,usInserted];
    ZQMovimiento.Options := [doCalcDefaults];
    ZQMovimiento.AutoCalcFields := true;

end;

end.
