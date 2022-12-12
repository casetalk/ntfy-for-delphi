unit Notify.Facade;

interface

uses
  Notify.Core.Contract,
  Notify.Api.Contract,
  Notify.Notification.Contract,
  Notify.Action.Contract,
  Notify.Config.Contract,
  Notify.Event.Contract;

type
  TNotifyCoreFacade = class sealed(TInterfacedObject, INotifyCoreFacade)
  strict private
    FNotifyApiFactory: INotifyApiFactory;
    FNotifyPublisherFactory: INotifyNotificationFactory;
    FNotifyCoreFactory: INotifyCoreFactory;
    FNotifyActionFactory: INotifyActionFactory;
    FNotifyConfigFactory: INotifyConfigFactory;
    FNotifyMessageFactory: INotifyMessageFactory;
  public
    constructor Create;
    class function New: INotifyCoreFacade;
    function Api: INotifyApi;
    function Notification: INotifyNotification;
    function Notify: INotifyCore;
    function Action: INotifyAction;
    function Config: INotifyConfig;
    function NotifyMessage: INotifyMessage;
  end;

implementation

uses
  Notify.Api.Factory,
  Notify.Notification.Factory,
  Notify.Core.Factory,
  Notify.Action.Factory,
  Notify.Config.Factory,
  Notify.Event.Factory;

{ TNotifyCoreFacade }

function TNotifyCoreFacade.Notify: INotifyCore;
begin
  Result := FNotifyCoreFactory.Core;
end;

function TNotifyCoreFacade.NotifyMessage: INotifyMessage;
begin
  Result := FNotifyMessageFactory.NotifyMessage;
end;

function TNotifyCoreFacade.Action: INotifyAction;
begin
  Result := FNotifyActionFactory.Action;
end;

function TNotifyCoreFacade.Config: INotifyConfig;
begin
  Result := FNotifyConfigFactory.Config;
end;

constructor TNotifyCoreFacade.Create;
begin
  FNotifyApiFactory := TNotifyApiFactory.New;
  FNotifyPublisherFactory := TNotifyNotificationFactory.New;
  FNotifyCoreFactory := TNotifyCoreFactory.New;
  FNotifyActionFactory := TNotifyActionFactory.New;
  FNotifyConfigFactory := TNotifyConfigFactory.New;
  FNotifyMessageFactory := TNotifyMessageFactory.New;
end;

class function TNotifyCoreFacade.New: INotifyCoreFacade;
begin
  Result := Self.Create;
end;

function TNotifyCoreFacade.Api: INotifyApi;
begin
  Result := FNotifyApiFactory.Api;
end;

function TNotifyCoreFacade.Notification: INotifyNotification;
begin
  Result := FNotifyPublisherFactory.Notification;
end;

end.
