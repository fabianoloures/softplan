program ProvaDelphiApp;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {fPrincipal},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufModelo in 'ufModelo.pas' {fModelo},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  uThread in 'uThread.pas',
  uTarefa3 in 'uTarefa3.pas' {fTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
