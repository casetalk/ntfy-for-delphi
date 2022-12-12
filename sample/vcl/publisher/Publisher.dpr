program Publisher;

uses
  Vcl.Forms,
  View.Main in 'src\View.Main.pas' {ViewMain},
  Notify.Action.Contract in '..\..\..\src\Notify.Action.Contract.pas',
  Notify.Action.DTO in '..\..\..\src\Notify.Action.DTO.pas',
  Notify.Action.Factory in '..\..\..\src\Notify.Action.Factory.pas',
  Notify.Action in '..\..\..\src\Notify.Action.pas',
  Notify.Api.Contract in '..\..\..\src\Notify.Api.Contract.pas',
  Notify.Api.Factory in '..\..\..\src\Notify.Api.Factory.pas',
  Notify.Api.Indy in '..\..\..\src\Notify.Api.Indy.pas',
  Notify.Config.Contract in '..\..\..\src\Notify.Config.Contract.pas',
  Notify.Config.Factory in '..\..\..\src\Notify.Config.Factory.pas',
  Notify.Config in '..\..\..\src\Notify.Config.pas',
  Notify.Core.Contract in '..\..\..\src\Notify.Core.Contract.pas',
  Notify.Core.Factory in '..\..\..\src\Notify.Core.Factory.pas',
  Notify.Core in '..\..\..\src\Notify.Core.pas',
  Notify.Facade in '..\..\..\src\Notify.Facade.pas',
  Notify.JSON.Parser in '..\..\..\src\Notify.JSON.Parser.pas',
  Notify.Notification.Contract in '..\..\..\src\Notify.Notification.Contract.pas',
  Notify.Notification.DTO in '..\..\..\src\Notify.Notification.DTO.pas',
  Notify.Notification.Factory in '..\..\..\src\Notify.Notification.Factory.pas',
  Notify.Notification in '..\..\..\src\Notify.Notification.pas',
  Notify in '..\..\..\src\Notify.pas',
  Notify.SmartPointer in '..\..\..\src\Notify.SmartPointer.pas',
  Notify.Types in '..\..\..\src\Notify.Types.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
