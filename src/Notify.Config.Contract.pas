unit Notify.Config.Contract;

interface

uses
  Notify.Types;

type
  INotifyConfig = interface
    ['{8CFCA0D0-3637-4367-9F56-B420D5441659}']
    function BaseURL: String; overload;
    function BaseURL(const AValue: String): INotifyConfig; overload;
    function UserName: String; overload;
    function UserName(const AValue: String): INotifyConfig; overload;
    function Password: String; overload;
    function Password(const AValue: String): INotifyConfig; overload;
    function Cache: Boolean; overload;
    function Cache(const AValue: Boolean): INotifyConfig; overload;
    function DisableFireBase: Boolean; overload;
    function DisableFireBase(const AValue: Boolean): INotifyConfig; overload;
    function SaveLog: Boolean; overload;
    function SaveLog(const AValue: Boolean): INotifyConfig; overload;
    function LogPath: String; overload;
    function LogPath(const AValue: String): INotifyConfig; overload;
    function SubscriptionType: TNotifySubscriptionType; overload;
    function SubscriptionType(const AValue: TNotifySubscriptionType): INotifyConfig; overload;
  end;

implementation

end.
