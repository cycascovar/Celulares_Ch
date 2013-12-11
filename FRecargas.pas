unit FRecargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, StdCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TF_Recargas = class(TForm)
    Edit1: TEdit;
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
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Recargas: TF_Recargas;

implementation
uses F_RecargasAlta;
{$R *.dfm}

procedure TF_Recargas.BitBtn1Click(Sender: TObject);
begin
    F_Recargas.Close;
end;

procedure TF_Recargas.BitBtn2Click(Sender: TObject);
begin
    FRecargasAlta.Enabled := false;
    FRecargasAlta := TFRecargasAlta.Create(self);
    FRecargasAlta.ShowModal;
end;

end.
