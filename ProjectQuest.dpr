program ProjectQuest;

uses
  Forms,
  UnitQuest in 'UnitQuest.pas' {FormQuest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormQuest, FormQuest);
  Application.Run;
end.
