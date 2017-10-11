unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, Mask, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,Unit1,
  ExtCtrls, DBCtrls, EhLibVCL;

type
  TForm4 = class(TForm)
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBNumberEditEh1: TDBNumberEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    GroupBox4: TGroupBox;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBNumberEditEh2: TDBNumberEditEh;
    DBGridEh1: TDBGridEh;
    DBNavigator1: TDBNavigator;
    procedure DBCheckBoxEh1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.DBCheckBoxEh1Click(Sender: TObject);
begin
case DBCheckBoxEh1.State of
cbChecked:
begin
 DBNumberEditEh2.Enabled:=True;
    end;
cbUnChecked:
begin
 DBNumberEditEh2.Enabled:=False;
   end;
end;
end;

procedure TForm4.FormResize(Sender: TObject);
begin
DBGridEh1.Width:=Form4.Width-470;
end;

end.
