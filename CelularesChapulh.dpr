program CelularesChapulh;

uses
  Forms,
  F_Login in 'F_Login.pas' {FLogin},
  splashScreen in 'splashScreen.pas' {Form2},
  FPrincipalEmpleados in 'FPrincipalEmpleados.pas' {FPrincipal},
  FGarantia in 'FGarantia.pas' {FGarantias},
  FReparacion in 'FReparacion.pas' {FReparaciones},
  FGarantia_Alta in 'FGarantia_Alta.pas' {FGarantiasAlta},
  FReparacion_Alta in 'FReparacion_Alta.pas' {FReparacionesAlta},
  FAlmacen_Local in 'FAlmacen_Local.pas' {FAlmacenLocal},
  FAlmacen_Venta in 'FAlmacen_Venta.pas' {FAlmacenVenta},
  FAcerca_De in 'FAcerca_De.pas' {FAcercaDe},
  FRecargas in 'FRecargas.pas' {F_Recargas},
  F_RecargasAlta in 'F_RecargasAlta.pas' {FRecargasAlta},
  SQLMovimientos in 'SQLMovimientos.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFGarantias, FGarantias);
  Application.CreateForm(TFReparaciones, FReparaciones);
  Application.CreateForm(TFGarantiasAlta, FGarantiasAlta);
  Application.CreateForm(TFReparacionesAlta, FReparacionesAlta);
  Application.CreateForm(TFAlmacenLocal, FAlmacenLocal);
  Application.CreateForm(TFAlmacenVenta, FAlmacenVenta);
  Application.CreateForm(TFAcercaDe, FAcercaDe);
  Application.CreateForm(TF_Recargas, F_Recargas);
  Application.CreateForm(TFRecargasAlta, FRecargasAlta);
  Application.Run;
end.
