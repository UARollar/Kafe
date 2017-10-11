unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Mask,Unit1, ExtCtrls, DBCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBNumberEditEh2: TDBNumberEditEh;
    Label7: TLabel;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBNavigator1: TDBNavigator;
    GroupBox5: TGroupBox;
    DBGridEh1: TDBGridEh;
    procedure DBCheckBoxEh1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.DBCheckBoxEh1Click(Sender: TObject);
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

procedure TForm3.FormResize(Sender: TObject);
begin
DBGridEh1.Width:=Form3.Width-470;
end;

end.
