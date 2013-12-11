unit FReparacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFReparaciones = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    entregarBoton: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    DSReparaciones: TDataSource;
    ZQReparaciones: TZQuery;
    GroupBox1: TGroupBox;
    titular: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    telefonoContacto: TEdit;
    GroupBox2: TGroupBox;
    imei: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    modelo: TEdit;
    marca: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Accesorios: TMemo;
    observaciones: TMemo;
    Label10: TLabel;
    Label11: TLabel;
    iccidequipo: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure entregarBotonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    ZQMovimiento: TZQuery;
    ZQClienteReparacion: TZquery;
    ZQTemp : TZQuery;
  public
    { Public declarations }
  end;

var
  FReparaciones: TFReparaciones;

implementation
uses
    FReparacion_Alta,FPrincipalEmpleados,F_login;

{$R *.dfm}

procedure TFReparaciones.entregarBotonClick(Sender: TObject);
begin

    ShowMessage(IntToStr(DBGrid1.Fields[2].AsInteger));

    ZQReparaciones.Close;
    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('DELETE FROM equipo_garantia WHERE imei_equipo='+IntToStr(DBGrid1.Fields[2].AsInteger)+'');
    ZQReparaciones.ExecSQL;

    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('SELECT marca_equipo AS Marca, imei_equipo AS IMEI, nombre_cliente as Titular, telefono_contacto AS "Telefono titular", Accesorios, fecha AS "Fecha Recibido"');
    ZQReparaciones.SQL.Add('FROM equipo_garantia');
    ZQReparaciones.SQL.Add('JOIN cliente_garantia ON equipo_garantia.idequipo_garantia = cliente_garantia.idequipo_garantia');
    ZQReparaciones.ExecSQL;
    ZQReparaciones.Open;
    DBGrid1.Update;
    Application.MessageBox('El equipo ha sido entregado y no esta mas en garantía.','Información',MB_ICONINFORMATION);

end;

procedure TFReparaciones.Button2Click(Sender: TObject);
var
    idEquiposR: Integer;
    idEquipo : Integer;
begin
    idEquipo := 1;

    ZQReparaciones.Close;
    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('INSERT INTO equipo_garantia(idempleado,marca_equipo,imei_equipo,accesorios,idequipo,fecha,idsucursal)');
    ZQReparaciones.SQL.Add('VALUES ("'+IntToStr(FPrincipal.idEmpleado)+'","'+marca.Text+'","'+imei.Text+'","'+accesorios.Text+'","'+IntToStr(idEquipo+1)+'","'+FormatDateTime('YYYY/MM/DD',Now())+'",'+IntToStr(FPrincipal.idSucursal)+')');
    ZQReparaciones.ExecSQL;

    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('SELECT idequipo_garantia FROM equipo_garantia WHERE idequipo='+IntToStr(idEquipo+1)+'');
    ZQReparaciones.ExecSQL;
    ZQReparaciones.Open;

    idEquiposR := ZQReparaciones.FieldByName('idequipo_garantia').AsInteger;

    ZQClienteReparacion.Close;
    ZQClienteReparacion.SQL.Clear;
    ZQClienteReparacion.SQL.Add('INSERT INTO cliente_garantia(idequipo_garantia,nombre_cliente,telefono_contacto)');
    ZQClienteReparacion.SQL.Add('VALUES ("'+IntToStr(idEquiposR)+'","'+titular.Text+'","'+telefonoContacto.Text+'")');
    ZQClienteReparacion.ExecSQL;

    //Al refrescar el grid, entonces se tienen que mostrar los equipos POR SUCURSAL
    ZQReparaciones.Close;
    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('SELECT marca_equipo AS Marca, imei_equipo AS IMEI, nombre_cliente as Titular, telefono_contacto AS "Telefono titular", Accesorios, fecha AS "Fecha Recibido"');
    ZQReparaciones.SQL.Add('FROM equipo_garantia');
    ZQReparaciones.SQL.Add('JOIN cliente_garantia ON equipo_garantia.idequipo_garantia = cliente_garantia.idequipo_garantia');
    ZQReparaciones.SQL.Add('JOIN sucursal ON sucursal.idsucursal = equipo_garantia.idsucursal');
    ZQReparaciones.SQL.Add('AND equipo_garantia.idsucursal = '+IntToStr(FPrincipal.idSucursal)+'');
    ZQReparaciones.ExecSQL;
    ZQReparaciones.Open;
    DBGrid1.Update;

    ZQMovimiento.Close;
    ZQMovimiento.SQL.Clear;
    ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento,movimiento_detalle)');
    ZQMovimiento.SQL.Add('VALUES ("Alta de equipo de garantia","El empleado "'+Flogin.username.Text+'" ha dado de alta el equipo: "'+modelo.Text+'" el dia: "'+FormatDateTime('YYYY/MM/DD',Now())+'"")');
end;

procedure TFReparaciones.Button3Click(Sender: TObject);
begin
//    FReparaciones.Close;
    ShowMessage(FormatDateTime('YYYY/MM/DD',Now()));
end;

procedure TFReparaciones.DBGrid1CellClick(Column: TColumn);
begin
    entregarBoton.Enabled := true;
end;

procedure TFReparaciones.FormShow(Sender: TObject);
begin
    entregarBoton.Enabled := false;
    ZQMovimiento := TZQuery.Create(self);
    ZQMovimiento.Connection := FPrincipal.ZConexion;
    ZQMovimiento.ShowRecordTypes := [usUnmodified,usModified,usInserted];
    ZQMovimiento.Options := [doCalcDefaults];
    ZQMovimiento.AutoCalcFields := true;

    ZQClienteReparacion := TZQuery.Create(self);
    ZQClienteReparacion.Connection := FPrincipal.ZConexion;
    ZQClienteReparacion.ShowRecordTypes := [usUnmodified,usModified,usInserted];
    ZQClienteReparacion.Options := [doCalcDefaults];
    ZQClienteReparacion.AutoCalcFields := true;

    ZQReparaciones.Close;
    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('SELECT marca_equipo AS Marca, imei_equipo AS IMEI, nombre_cliente as Titular, telefono_contacto AS "Telefono titular", Accesorios, fecha AS "Fecha Recibido"');
    ZQReparaciones.SQL.Add('FROM equipo_garantia');
    ZQReparaciones.SQL.Add('JOIN cliente_garantia ON equipo_garantia.idequipo_garantia = cliente_garantia.idequipo_garantia');
    ZQReparaciones.ExecSQL;
    ZQReparaciones.Open;
    DBGrid1.Update;

end;

end.
