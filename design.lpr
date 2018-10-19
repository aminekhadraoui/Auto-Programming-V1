program design;

uses
  Crt, sysutils, dateutils;

procedure WriteText(X, Y: tcrtcoord; Color: Byte; const Text: string);
begin
  GotoXY(X, Y);
  TextColor(Color);
  Write(Text);
end;

procedure WriteBlink(X, Y: tcrtcoord; Color: Byte; const Text: string);
var
  C: Byte;
begin
  case odd(SecondOf(Now)) of
    True:  C := Black;
    False: C := Color;
  end;
  WriteText(X, Y, C, Text);
end;

begin
  ClrScr;

  repeat
    WriteBlink(5,  5, Green, '              _         _ _             _           _');
    WriteBlink(5,  6, Green, '__      _____| |__  ___(_) |_ ___    __| | ___  ___(_) __ _ _ __');
    WriteBlink(5,  7, Green, '\ \ /\ / / _ \  _ \/ __| | __/ _ \  / _` |/ _ \/ __| |/ _` |   _ \');
    WriteBlink(5,  8, Green, ' \ V  V /  __/ |_) \__ \ | ||  __/ | (_| |  __/\__ \ | (_| | | | |');
    WriteBlink(5,  9, Green, '  \_/\_/ \___|_.__/|___/_|\__\___|  \__,_|\___||___/_|\__, |_| |_|');
    WriteBlink(5,  10, Green,'                                                      |___/       ');
    WriteText (5, 13, Red,   '        ============== P R O G R A M M I N G ==============      ');
    WriteBlink(1, 16, Blue,  'Press any key to exit ...');
    Sleep(100);
  until KeyPressed;

  TextColor(0);
  ClrScr;
end.
