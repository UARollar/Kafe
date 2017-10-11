unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, Mask, ExtCtrls, DBCtrls, DB, ADODB,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope;

type
  TForm2 = class(TForm)
    DBComboBoxEh1: TDBComboBoxEh;
    Label1: TLabel;
    DBEditEh1: TDBEditEh;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBComboBoxEh2: TDBComboBoxEh;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
if ADOQuery1.active
   then ADOQuery1.active:=false;
 DBComboBoxEh1.clear;
 ADOQuery1.sql.text:='select Nazva_stravy from Ingredienty';
ADOQuery1.open;
 while not(ADOQuery1.eof) do
  begin
   DBComboBoxEh1.items.add(adoquery1.fieldbyname('Nazva_stravy').value);
   ADOQuery1.next;

{with  ADOTable1  do
begin
 DisableControls;
DBComboBoxEh1.Items.BeginUpdate;
First;
while not EOF do
begin
DBComboBoxEh1.Items.Add(FieldByName('Nazva_stravy').AsString);
Next;
end;
DBComboBoxEh1.Items.BeginUpdate;
DisableControls;    }
end;
   end;
end.
