unit FGarantia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFGarantias = class(TForm)
    DBGrid1: TDBGrid;
    LComment3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    LComment2: TLabel;
    Edit3: TEdit;
    Button2: TButton;
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
    Button3: TButton;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGarantias: TFGarantias;

implementation
uses
    FGarantia_Alta;
{$R *.dfm}

procedure TFGarantias.Button2Click(Sender: TObject);
begin
    FGarantiasAlta.Enabled := false;
    FGarantiasAlta := TFGarantiasAlta.Create(self);
    FGarantiasAlta.ShowModal;
end;

procedure TFGarantias.Button3Click(Sender: TObject);
begin
    FGarantias.Close;
end;

end.
