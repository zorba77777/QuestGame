unit UnitQuest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TFormQuest = class(TForm)
    sh_Dark: TShape;
    Im_SwitchOn: TImage;
    Im_SwitchOff: TImage;
    lb_LightSwitch: TLabel;
    Im_Bulb: TImage;
    lb_ResponseOnClick: TLabel;
    Timer1: TTimer;
    Im_Door: TImage;
    lb_Hint: TLabel;
    Im_Keyhole: TImage;
    Im_Painting: TImage;
    Im_Table: TImage;
    Im_Book: TImage;
    Im_OpenBook: TImage;
    bt_CloseBook: TButton;
    Im_Suitcase: TImage;
    Im_KeyOnHook: TImage;
    Im_Hook: TImage;
    Im_Quit1: TImage;
    Im_Quit2: TImage;
    Im_NotQuit1: TImage;
    Im_NotQuit2: TImage;
    Im_Menu1: TImage;
    Im_Menu2: TImage;
    Im_KeyInSuitcase: TImage;
    Timer2: TTimer;
    Im_Cat: TImage;
    Im_Safe: TImage;
    Im_Window: TImage;
    Im_Toy: TImage;
    Im_Carpet: TImage;
    Im_Bag: TImage;
    Im_Hat: TImage;
    Timer3: TTimer;
    Im_Trophy: TImage;
    procedure Im_SwitchOffMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sh_DarkMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_SwitchOffClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_SwitchOnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_SwitchOnClick(Sender: TObject);
    procedure Im_BulbClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Im_DoorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_DoorClick(Sender: TObject);
    procedure Im_KeyholeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Im_PaintingMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_PaintingClick(Sender: TObject);
    procedure Im_TableMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_TableClick(Sender: TObject);
    procedure Im_BookMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_BookClick(Sender: TObject);
    procedure bt_CloseBookClick(Sender: TObject);
    procedure Im_KeyOnHookClick(Sender: TObject);
    procedure Im_Menu1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_Menu2Click(Sender: TObject);
    procedure Im_Quit1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_SuitcaseMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_Quit2Click(Sender: TObject);
    procedure Im_NotQuit2Click(Sender: TObject);
    procedure Im_KeyInSuitcaseClick(Sender: TObject);
    procedure Im_KeyholeClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Im_NotQuit1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormPaint(Sender: TObject);
    procedure Im_CatMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_CatClick(Sender: TObject);
    procedure Im_SafeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_SafeClick(Sender: TObject);
    procedure Im_WindowMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_WindowClick(Sender: TObject);
    procedure Im_ToyMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_ToyClick(Sender: TObject);
    procedure Im_CarpetMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_CarpetClick(Sender: TObject);
    procedure Im_BagMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_BagClick(Sender: TObject);
    procedure Im_HatMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_HatClick(Sender: TObject);
    procedure Im_TrophyMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Im_TrophyClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQuest: TFormQuest;
  counter: Integer = 1;
  counterClicksOnHat: Integer = 0;
  isKeyFound: Boolean = False;

implementation

{$R *.dfm}
{$R Key.res}

procedure TFormQuest.FormPaint(Sender: TObject);
begin
  with Canvas do
    begin
      MoveTo(0, ClientHeight - (ClientHeight div 3));
      LineTo(ClientWidth - (ClientWidth div 6), ClientHeight - (ClientHeight div 3));
      MoveTo(ClientWidth - (ClientWidth div 6), ClientHeight - (ClientHeight div 3));
      LineTo(ClientWidth - (ClientWidth div 6), 0);
      MoveTo(ClientWidth - (ClientWidth div 6), ClientHeight - (ClientHeight div 3));
      LineTo(ClientWidth, ClientHeight);
    end;
end;

procedure TFormQuest.Im_SwitchOffMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_LightSwitch.Visible := True;
  lb_LightSwitch.Caption := 'Включить ?';
  lb_LightSwitch.Font.Color := clBlue;
  lb_LightSwitch.Color := clBlack;
end;

procedure TFormQuest.sh_DarkMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_LightSwitch.Visible := False;
end;

procedure TFormQuest.Im_SwitchOffClick(Sender: TObject);
begin
  sh_Dark.Visible := False;
  Im_SwitchOn.Visible := True;
  Im_SwitchOff.Visible := False;
  lb_LightSwitch.Visible := False;
  Im_Bulb.Visible := True;
  Screen.Cursor := crHandPoint;
  lb_ResponseOnClick.Visible := False;
end;

procedure TFormQuest.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lb_LightSwitch.Visible := False;
  lb_Hint.Visible := False;
end;

procedure TFormQuest.Im_SwitchOnMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_LightSwitch.Visible := True;
  lb_LightSwitch.Color := clWhite;
  lb_LightSwitch.Caption := 'Выключить ?';
end;

procedure TFormQuest.Im_SwitchOnClick(Sender: TObject);
begin
  sh_Dark.Visible := True;
  Im_SwitchOff.Visible := True;
  Im_SwitchOn.Visible := False;
  Im_Bulb.Visible := False;
  Screen.Cursor := crHandPoint;
  lb_ResponseOnClick.Visible := False;
end;

procedure TFormQuest.Im_BulbClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Bulb.Left + Im_Bulb.Width;
  lb_ResponseOnClick.Top := Im_Bulb.Top + Im_Bulb.Height div 8;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Это лампочка';
      2: Caption := 'Чтобы выключить свет используйте выключатель.';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Timer1Timer(Sender: TObject);
begin
  lb_ResponseOnClick.Visible := False;
  Im_Menu2.Visible := False;
  Im_Menu1.Visible := True;
end;

procedure TFormQuest.Im_DoorMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Door.Left + Im_Door.Width div 3;
  lb_Hint.Top := Im_Door.Top - Im_Door.Height div 8;
  lb_Hint.Caption := 'Дверь';
end;

procedure TFormQuest.Im_DoorClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Door.Left + Im_Door.Width div 3;
  lb_ResponseOnClick.Top := Im_Door.Top - Im_Door.Height div 15;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Дверь закрыта';
      2: Caption := 'Не открывается';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;


procedure TFormQuest.Im_KeyholeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Keyhole.Left + Im_Keyhole.Width;
  lb_Hint.Top := Im_Keyhole.Top - Im_Keyhole.Height div 8;
  lb_Hint.Caption := 'Замочная скважина';
end;

procedure TFormQuest.Im_PaintingMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Painting.Left + Im_Painting.Width div 3;
  lb_Hint.Top := Im_Painting.Top - Im_Painting.Height div 6;
  lb_Hint.Caption := 'Картина';
end;

procedure TFormQuest.Im_PaintingClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Painting.Left + Im_Painting.Width div 3;
  lb_ResponseOnClick.Top := Im_Painting.Top - Im_Painting.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Обычная картина';
      2: Caption := 'За ней ничего нет';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_TableMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Table.Left + Im_Table.Width div 3;
  lb_Hint.Top := Im_Table.Top - Im_Table.Height div 4;
  lb_Hint.Caption := 'Стол';
end;

procedure TFormQuest.Im_TableClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Table.Left + Im_Table.Width div 15;
  lb_ResponseOnClick.Top := Im_Table.Top - Im_Table.Height div 8;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Прочтите книгу на столе';
      2: Caption := 'Может быть, книга поможет';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_CatMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Cat.Left + Im_Cat.Width div 3;
  lb_Hint.Top := Im_Cat.Top - Im_Cat.Height div 8;
  lb_Hint.Caption := 'Кот';
end;

procedure TFormQuest.Im_CatClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Cat.Left + Im_Cat.Width div 3;
  lb_ResponseOnClick.Top := Im_Cat.Top - Im_Cat.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Мяу';
      2: Caption := 'Муррр';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_SafeMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Safe.Left + Im_Safe.Width div 3;
  lb_Hint.Top := Im_Safe.Top - Im_Safe.Height div 8;
  lb_Hint.Caption := 'Стенной сейф';
end;

procedure TFormQuest.Im_SafeClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Safe.Left + Im_Safe.Width div 3;
  lb_ResponseOnClick.Top := Im_Safe.Top - Im_Safe.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Сейф закрыт';
      2: Caption := 'Код неизвестен';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_WindowMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Window.Left + Im_Window.Width div 3;
  lb_Hint.Top := Im_Window.Top - Im_Window.Height div 8;
  lb_Hint.Caption := 'Окно';
end;

procedure TFormQuest.Im_WindowClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Window.Left + Im_Window.Width div 3;
  lb_ResponseOnClick.Top := Im_Window.Top - Im_Window.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Окно не открывается';
      2: Caption := 'Ставни заело';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_ToyMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Toy.Left + Im_Toy.Width div 3;
  lb_Hint.Top := Im_Toy.Top - Im_Toy.Height div 8;
  lb_Hint.Caption := 'Игрушка';
end;

procedure TFormQuest.Im_ToyClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Toy.Left + Im_Toy.Width div 3;
  lb_ResponseOnClick.Top := Im_Toy.Top - Im_Toy.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Плюшевый медвежонок';
      2: Caption := 'Мягкий и пушистый';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_CarpetMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Carpet.Left + Im_Carpet.Width div 3;
  lb_Hint.Top := Im_Carpet.Top - Im_Carpet.Height div 8;
  lb_Hint.Caption := 'Настенный ковер';
end;

procedure TFormQuest.Im_CarpetClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Carpet.Left + Im_Carpet.Width div 3;
  lb_ResponseOnClick.Top := Im_Carpet.Top - Im_Carpet.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Реликт советского прошлого';
      2: Caption := 'Вызывающе безвкусно';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_BagMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Bag.Left + Im_Bag.Width div 3;
  lb_Hint.Top := Im_Bag.Top - Im_Bag.Height div 8;
  lb_Hint.Caption := 'Сумка';
end;

procedure TFormQuest.Im_BagClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Bag.Left + Im_Bag.Width div 3;
  lb_ResponseOnClick.Top := Im_Bag.Top - Im_Bag.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Внутри ничего интересного';
      2: Caption := 'Всякий хлам';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_HatMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Hat.Left + Im_Hat.Width div 3;
  lb_Hint.Top := Im_Hat.Top - Im_Hat.Height div 8;
  lb_Hint.Caption := 'Азиатская коническая шляпа';
end;

procedure TFormQuest.Im_HatClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Hat.Left + Im_Hat.Width div 3;
  lb_ResponseOnClick.Top := Im_Hat.Top - Im_Hat.Height div 3;
  counterClicksOnHat := counterClicksOnHat + 1;
  with lb_ResponseOnClick do
    case counterClicksOnHat of
      1: Caption := 'Неожиданно!';
      2: Caption := 'А ну-ка, что там за ней?';
      3:
        begin
          Im_Hat.Visible := False;
          Im_KeyOnHook.Visible := True;
        end;
    end;
end;

procedure TFormQuest.Im_TrophyMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Trophy.Left + Im_Trophy.Width div 3;
  lb_Hint.Top := Im_Trophy.Top - Im_Trophy.Height div 8;
  lb_Hint.Caption := 'Охотничий трофей';
end;

procedure TFormQuest.Im_TrophyClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lb_ResponseOnClick.Visible := True;
  lb_ResponseOnClick.Left := Im_Trophy.Left + Im_Trophy.Width div 3;
  lb_ResponseOnClick.Top := Im_Trophy.Top - Im_Trophy.Height div 3;
  with lb_ResponseOnClick do
    case counter of
      1: Caption := 'Похоже, что хозяин комнаты - охотник';
      2: Caption := 'Жалко животное';
    end;
  counter := counter + 1;
  if counter = 3 then counter := 1;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_BookMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lb_Hint.Visible := True;
  lb_Hint.Left := Im_Book.Left + Im_Book.Width div 3;
  lb_Hint.Top := Im_Book.Top - Im_Book.Height div 8;
  lb_Hint.Caption := 'Инструкция';
end;

procedure TFormQuest.Im_BookClick(Sender: TObject);
begin
  Im_OpenBook.Visible := True;
  sh_Dark.Visible := True;
  bt_CloseBook.Visible := True;
  lb_ResponseOnClick.Visible := False;
end;

procedure TFormQuest.bt_CloseBookClick(Sender: TObject);
begin
  Im_OpenBook.Visible := False;
  sh_Dark.Visible := False;
  bt_CloseBook.Visible := False;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_KeyOnHookClick(Sender: TObject);
begin
  Im_KeyOnHook.Visible := False;
  Im_Hook.Visible := True;
  isKeyFound := True;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_Menu1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Timer1.Enabled := True;
  Im_Menu1.Visible := False;
  Im_Menu2.Visible := True;
end;

procedure TFormQuest.Im_Menu2Click(Sender: TObject);
begin
  Im_Suitcase.Visible := True;
  Im_Quit1.Visible := True;
  Im_NotQuit1.Visible := True;
  if isKeyFound = True then
    Im_KeyInSuitcase.Visible := True;
  sh_Dark.Visible := True;
  Screen.Cursor := crHandPoint;
  lb_ResponseOnClick.Visible := False;
end;

procedure TFormQuest.Im_Quit1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Im_Quit1.Visible := False;
  Im_Quit2.Visible := True;
end;

procedure TFormQuest.Im_NotQuit1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Im_NotQuit1.Visible := False;
  Im_NotQuit2.Visible := True;
end;


procedure TFormQuest.Im_SuitcaseMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Im_Quit2.Visible := False;
  Im_NotQuit2.Visible := False;
  Im_Quit1.Visible := True;
  Im_NotQuit1.Visible := True;
end;

procedure TFormQuest.Im_Quit2Click(Sender: TObject);
begin
  Screen.Cursor := crHandPoint;
  Close;
end;

procedure TFormQuest.Im_NotQuit2Click(Sender: TObject);
begin
  Im_Suitcase.Visible := False;
  Im_Quit1.Visible := False;
  Im_NotQuit1.Visible := False;
  Im_NotQuit2.Visible := False;
  Im_KeyInSuitCase.Visible := False;
  sh_Dark.Visible := False;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Im_KeyInSuitcaseClick(Sender: TObject);
begin
  Im_KeyInSuitCase.Visible := False;
  sh_Dark.Visible := False;
  Im_Suitcase.Visible := False;
  Im_Quit1.Visible := False;
  Im_NotQuit1.Visible := False;
  isKeyFound := True;
  Im_Keyhole.Visible := True;
  Screen.Cursors[1] := LoadCursor(HInstance, 'KEY');
  Screen.Cursor := 1;
end;

procedure TFormQuest.Im_KeyholeClick(Sender: TObject);
begin
  if isKeyFound = True then
    begin
      sh_Dark.Visible := True;
      Im_Menu1.Visible := False;
      Im_Menu2.Visible := False;
      Timer2.Enabled := True;
      Screen.Cursor := crNone;
      lb_ResponseOnClick.Visible := True;
      lb_ResponseOnClick.Caption := 'Поздравляю. Вы выбрались из комнаты.';
      lb_ResponseOnClick.Left := 100;
      lb_ResponseOnClick.Top := 100;
      lb_ResponseOnClick.Color := clBlack;
      lb_ResponseOnClick.Font.Color := clWhite;
      lb_ResponseOnClick.Font.Size := 40;
    end;
  Screen.Cursor := crHandPoint;
end;

procedure TFormQuest.Timer2Timer(Sender: TObject);
begin
  Close;
end;

end.
