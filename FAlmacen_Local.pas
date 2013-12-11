unit FAlmacen_Local;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Buttons, Grids, DBGrids, DB, DBClient,
  ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFAlmacenLocal = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GridAlmacen: TDBGrid;
    Label3: TLabel;
    barraP: TProgressBar;
    Label4: TLabel;
    DSAlmacen: TDataSource;
    ZQAlmacen: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GridAlmacenCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    Imei : Integer;
    Modelo: String;
    Marca: String;
    idEquipoAlmacen : Integer;
  end;

var
  FAlmacenLocal: TFAlmacenLocal;

implementation
uses FAlmacen_Venta, FPrincipalEmpleados;
{$R *.dfm}

procedure TFAlmacenLocal.BitBtn1Click(Sender: TObject);
begin
    if Imei <> 0 then
    begin
        FAlmacenVenta.Enabled := false;
        FAlmacenVenta := TFAlmacenVenta.Create(self);
        FAlmacenVenta.ShowModal;
    end
    else
        Application.MessageBox('Seleccione un equipo a vender.','Información',MB_ICONINFORMATION);
end;

procedure TFAlmacenLocal.BitBtn2Click(Sender: TObject);
var i : Integer;
begin
    barraP.Visible := true;
    try
        for i := 0 to 1000 do
            barraP.StepIt;
    finally
//        barraP.Visible := false;
        Application.MessageBox('Datos exportados a Excel.','Información',MB_ICONINFORMATION);
    end;
end;

procedure TFAlmacenLocal.BitBtn3Click(Sender: TObject);
begin
    FAlmacenLocal.Close;
end;

procedure TFAlmacenLocal.FormShow(Sender: TObject);
begin
    barraP.Visible := false;
    barraP.Step := 1;
    barraP.Min := 0;
    barraP.Max := 5000; //cambiar por el total de elementos mostrados

    ZQAlmacen.Close;
    ZQAlmacen.SQL.Clear;
    ZQAlmacen.SQL.Add('SELECT marca_celular AS "Marca", modelo_celular AS "Modelo", imei_celular AS IMEI');
    ZQAlmacen.SQL.Add('FROM equipo_almacen');
    ZQAlmacen.ExecSQL;
    ZQAlmacen.Open;
    GridAlmacen.Update;
end;

procedure TFAlmacenLocal.GridAlmacenCellClick(Column: TColumn);
begin
    Marca := GridAlmacen.Fields[0].AsString;
    Modelo := GridAlmacen.Fields[1].AsString;
    Imei := GridAlmacen.Fields[2].AsInteger;
end;

end.
