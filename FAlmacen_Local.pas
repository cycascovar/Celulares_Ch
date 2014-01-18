unit FAlmacen_Local;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Buttons, Grids, DBGrids, DB, DBClient,
  ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, ValEdit;

type
  TFAlmacenLocal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    marcaCel: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GridAlmacen: TDBGrid;
    Label3: TLabel;
    barraP: TProgressBar;
    Label4: TLabel;
    DSAlmacen: TDataSource;
    ZQAlmacen: TZQuery;
    ZQVentas: TZQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    nombreCliente: TEdit;
    telefonoCliente: TEdit;
    domicilioCliente: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    marcaCelular: TLabel;
    modeloCelular: TLabel;
    imeiCelular: TLabel;
    precioCelular: TLabel;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Button2: TButton;
    _iccidcelular: TLabel;
    iccidcelular: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GridAlmacenCellClick(Column: TColumn);
    procedure marcaCelKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Imei,iccid : String;
    Modelo: String;
    Marca: String;
    precio: Double;
    idEquipoAlmacen : Integer;
    ZQMovimiento : TZquery;
  end;

var
  FAlmacenLocal: TFAlmacenLocal;

implementation
uses FAlmacen_Venta, FPrincipalEmpleados, F_Login;
{$R *.dfm}

procedure TFAlmacenLocal.BitBtn1Click(Sender: TObject);
begin
    Marca := GridAlmacen.Fields[0].AsString;
    Modelo := GridAlmacen.Fields[1].AsString;
    Imei := GridAlmacen.Fields[2].AsString;
    iccid := GridAlmacen.Fields[3].AsString;
    precio := GridAlmacen.Fields[4].AsFloat;

    if Marca <> '' then
    begin
        ZQAlmacen.Close;
        ZQAlmacen.SQL.Clear;
        ZQAlmacen.SQL.Add('INSERT INTO venta_detalle (fecha_venta, modelo_celular, marca_celular, imei_celular, iccid_celular, empleado, sucursal,precio)');
        ZQAlmacen.SQL.Add('VALUES ("'+FormatDateTime('YYYY/MM/DD',Date())+'","'+modelo+'","'+marca+'","'+imei+'","'+iccid+'","'+FLogin.username.Text+'","'+FPrincipal.sucursal+'","'+FloatToStr(precio)+'")');
        ZQAlmacen.ExecSQL();

        ZQAlmacen.SQL.Clear();
        ZQAlmacen.SQL.Add('DELETE FROM equipo_almacen WHERE imei_celular="'+imei+'"');
        ZQAlmacen.ExecSQL();

        ZQAlmacen.SQL.Clear();
        ZQAlmacen.SQL.Add('SELECT marca_celular Marca, modelo_celular Modelo, imei_celular IMEI, iccid_celular ICCID, precioCelular Precio');
        ZQAlmacen.SQL.Add('FROM equipo_almacen');
        ZQAlmacen.SQL.Add('JOIN sucursal ON equipo_almacen.idsucursal = sucursal.idsucursal');
        ZQAlmacen.SQL.Add('AND equipo_almacen.idsucursal = '+IntToStr(FPrincipal.idSucursal)+'');
        ZQAlmacen.ExecSQL();
        ZQAlmacen.Open();
        gridAlmacen.Update();

        ZQMovimiento.Close;
        ZQMovimiento.SQL.Clear;
        ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento,movimiento_detalles, sucursal, empleado, fecha)');
        ZQMovimiento.SQL.Add('VALUES ("Venta de equipo.","El usuario '+Flogin.username.Text+' ha vendido un equipo el dia '+DateToStr(date())+' a las '+TimeToStr(Time())+'","'+FPrincipal.sucursal+'","'+Flogin.username.Text+'","'+FormatDateTime('YYYY/MM/DD',Date())+'")');
        ZQMovimiento.ExecSQL;

        Application.MessageBox('Equipo vendido.','Información',MB_ICONINFORMATION);
    end
    else
        Application.MessageBox('Seleccione un equipo a vender.','Información',MB_ICONINFORMATION);
end;

procedure TFAlmacenLocal.BitBtn2Click(Sender: TObject);
var i : Integer;
begin
    barraP.Visible := true;
    try
        for i := 0 to 15000 do
            barraP.StepIt();
    finally
//        barraP.Visible := false;
        Application.MessageBox('Datos exportados a Excel.','Información',MB_ICONINFORMATION);
    end;
end;

procedure TFAlmacenLocal.BitBtn3Click(Sender: TObject);
begin
    FAlmacenLocal.Close;
end;

procedure TFAlmacenLocal.Button1Click(Sender: TObject);
begin
    nombreCliente.Clear;
    telefonoCliente.Clear;
    domicilioCliente.Clear;
end;

procedure TFAlmacenLocal.Button2Click(Sender: TObject);
begin
//
    ZQAlmacen.Close;
    ZQAlmacen.SQL.Clear;
    ZQAlmacen.SQL.Add('SELECT marca_celular Marca, modelo_celular Modelo, imei_celular IMEI, iccid_celular ICCID, precioCelular Precio');
    ZQAlmacen.SQL.Add('FROM equipo_almacen');
    ZQAlmacen.SQL.Add('JOIN sucursal ON equipo_almacen.idsucursal = sucursal.idsucursal');
    ZQAlmacen.SQL.Add('AND equipo_almacen.idsucursal = '+IntToStr(FPrincipal.idSucursal)+'');
    ZQAlmacen.ExecSQL();
    ZQAlmacen.Open;
    gridAlmacen.Update;

end;

procedure TFAlmacenLocal.marcaCelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    ZQAlmacen.Filtered := false;
    ZQAlmacen.Filter := 'Marca LIKE '+QuotedStr('*'+marcaCel.Text+'*');
    ZQAlmacen.Filtered := true;
end;

procedure TFAlmacenLocal.FormShow(Sender: TObject);
begin
    FAlmacenLocal.Caption := 'Inventario - Celulares "Chapulh", (sucursal '+FPrincipal.sucursal+')';

    ZQMovimiento := TZQuery.Create(self);
    ZQMovimiento.Connection := FPrincipal.ZConexion;
    ZQMovimiento.ShowRecordTypes := [usUnmodified,usModified,usInserted];
    ZQMovimiento.Options := [doCalcDefaults];
    ZQMovimiento.AutoCalcFields := true;

    barraP.Visible := false;
    barraP.Step := 1;
    barraP.Min := 0;
    barraP.Max := 5000; //cambiar por el total de elementos mostrados

    ZQAlmacen.Close();
    ZQAlmacen.SQL.Clear();
    ZQAlmacen.SQL.Add('SELECT marca_celular Marca, modelo_celular Modelo, imei_celular IMEI, iccid_celular ICCID, precioCelular Precio');
    ZQAlmacen.SQL.Add('FROM equipo_almacen');
    ZQAlmacen.SQL.Add('JOIN sucursal ON equipo_almacen.idsucursal = sucursal.idsucursal');
    ZQAlmacen.SQL.Add('AND equipo_almacen.idsucursal = '+IntToStr(FPrincipal.idSucursal)+'');
    ZQAlmacen.ExecSQL();
    ZQAlmacen.Open;
    gridAlmacen.Update;
end;

procedure TFAlmacenLocal.GridAlmacenCellClick(Column: TColumn);
begin
    //
    marcaCelular.Caption := gridAlmacen.Fields[0].AsString;
    modeloCelular.Caption := gridAlmacen.Fields[1].AsString;
    imeiCelular.Caption := gridAlmacen.Fields[2].AsString;
    iccidCelular.Caption := GridAlmacen.Fields[3].AsString;
    preciocelular.Caption := FloatToStr(GridAlmacen.Fields[4].AsFloat);
end;

end.
