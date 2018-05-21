unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,j,p:integer;
  a:array[1..100] of integer;
  f:textFile;
begin
  randomize;
  for i:=1 to 20 do a[i]:=Random(100)+1;
  // čísla sú vygenerované

  for i:=1 to 19  do
      for j:=i+1 to 20 do if a[j]>a[i] then
      begin
      p:=a[j];
      a[j]:=a[i];
      a[i]:=p;
      end;


  assignfile(f,'odpoved30.txt');
  rewrite(f);
  for i:=1 to 20 do writeln(f,a[i]);
  closeFile(f);

end;

end.

