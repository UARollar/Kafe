unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Menus,
  DB, ADODB, ExtCtrls, EhLibVCL, PrnDbgeh, Buttons, Vcl.OleServer, Excel2000,ComObj;

type
  TForm1 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    MainMenu1: TMainMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N111: TMenuItem;
    N221: TMenuItem;
    N222: TMenuItem;
    Label3: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Data_zakaz: TDateTimeField;
    ADOQuery1Zal_nomer: TIntegerField;
    ADOQuery1Deti_col: TIntegerField;
    ADOQuery1Vzrosl_col: TIntegerField;
    ADOQuery1Zadatok: TBooleanField;
    ADOQuery1Zadatok_col: TIntegerField;
    ADOQuery1FIO_zakaz: TWideStringField;
    ADOQuery1Telepone_zakaz: TIntegerField;
    ADOQuery1Poradok_nom: TAutoIncField;
    ADOQuery1Time_zakaz: TDateTimeField;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    ADOTable1Produkt: TWideStringField;
    ADOTable1Col_produkt: TIntegerField;
    ADOTable1Cena_prod: TIntegerField;
    ADOTable1Zagalom_cena: TIntegerField;
    ADOTable1Poradok_nomer: TAutoIncField;
    ADOTable1Nome_For_zakaz: TIntegerField;
    Timer1: TTimer;
    Edit1: TEdit;
    Button6: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    Button7: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery2Produkt: TWideStringField;
    ADOQuery2Col_produkt: TIntegerField;
    ADOQuery2Cena_prod: TIntegerField;
    ADOQuery2Zagalom_cena: TIntegerField;
    ADOQuery2Poradok_nomer: TAutoIncField;
    ADOQuery2Nome_For_zakaz: TIntegerField;
    ADOQuery2Nazva_stravy: TWideStringField;
    ADOQuery2Schetchik: TAutoIncField;
    ADOQuery2DSDesigner: TIntegerField;
    ADOQuery2DSDesigner2: TIntegerField;
    ADOQuery2DSDesigner3: TIntegerField;
    ADOQuery2DSDesigner4: TIntegerField;
    ADOQuery2DSDesigner5: TIntegerField;
    ADOQuery2DSDesigner6: TIntegerField;
    ADOQuery2DSDesigner7: TIntegerField;
    ADOQuery2DSDesigner8: TIntegerField;
    ADOQuery2DSDesigner9: TIntegerField;
    ADOQuery2DSDesigner10: TIntegerField;
    ADOQuery2DSDesigner11: TIntegerField;
    ADOQuery2DSDesigner12: TIntegerField;
    ADOQuery2DSDesigner13: TIntegerField;
    ADOQuery2DSDesigner14: TIntegerField;
    ADOQuery2DSDesigner15: TIntegerField;
    ADOQuery2DSDesigner16: TIntegerField;
    ADOQuery2DSDesigner17: TIntegerField;
    ADOQuery2DSDesigner18: TIntegerField;
    ADOQuery2DSDesigner19: TIntegerField;
    ADOQuery2DSDesigner20: TIntegerField;
    ADOQuery2DSDesigner21: TIntegerField;
    ADOQuery2DSDesigner22: TIntegerField;
    ADOQuery2DSDesigner23: TIntegerField;
    ADOQuery2DSDesigner24: TIntegerField;
    ADOQuery2DSDesigner25: TIntegerField;
    ADOQuery2DSDesigner26: TIntegerField;
    ADOQuery2DSDesigner27: TIntegerField;
    ADOQuery2DSDesigner28: TIntegerField;
    ADOQuery2DSDesigner29: TIntegerField;
    ADOQuery2DSDesigner30: TIntegerField;
    ADOQuery2DSDesigner31: TIntegerField;
    ADOQuery2DSDesigner32: TIntegerField;
    ADOQuery2DSDesigner33: TIntegerField;
    ADOQuery2DSDesigner34: TIntegerField;
    ADOQuery2DSDesigner35: TIntegerField;
    ADOQuery2DSDesigner36: TIntegerField;
    ADOQuery2DSDesigner37: TIntegerField;
    ADOQuery2DSDesigner38: TIntegerField;
    ADOQuery2DSDesigner39: TIntegerField;
    ADOQuery2DSDesigner40: TIntegerField;
    ADOQuery2DSDesigner41: TIntegerField;
    ADOQuery2DSDesigner42: TIntegerField;
    ADOQuery2DSDesigner43: TIntegerField;
    ADOQuery2DSDesigner44: TIntegerField;
    ADOQuery2DSDesigner45: TIntegerField;
    ADOQuery2DSDesigner46: TIntegerField;
    ADOQuery2DSDesigner47: TIntegerField;
    ADOQuery2DSDesigner48: TIntegerField;
    ADOQuery2DSDesigner49: TIntegerField;
    ADOQuery2DSDesigner50: TIntegerField;
    ADOQuery2DSDesigner51: TIntegerField;
    ADOQuery2DSDesigner52: TIntegerField;
    ADOQuery2DSDesigner53: TIntegerField;
    ADOQuery2DSDesigner54: TIntegerField;
    ADOQuery2DSDesigner55: TIntegerField;
    ADOQuery2DSDesigner56: TIntegerField;
    ADOQuery2DSDesigner57: TIntegerField;
    ADOQuery2DSDesigner58: TIntegerField;
    Button2: TButton;
    PrintDBGridEh2: TPrintDBGridEh;
    N1: TMenuItem;
    Button1: TButton;
    N2: TMenuItem;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ADOTable1BeforePost(DataSet: TDataSet);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
 try
   with ADOQuery1 do
   begin
      SQL.Clear;
   SQL.Add('SELECT * FROM Tabl_zakaz WHERE (Data_zakaz=:D1) ');
   Parameters.ParamByName('D1').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
   Active:=True;
   //ADOTable3.Active := false;
DataSource1.DataSet := ADOQuery1;
ADOQuery1.Connection := Self.ADOConnection1;
ADOQuery1.Active:=true;
ADOQuery1.ExecSQL;
  end;
 finally
 end;
 end;

procedure TForm1.DBGridEh1DblClick(Sender: TObject);
begin
Form4.showmodal;
end;

procedure TForm1.ADOTable1BeforePost(DataSet: TDataSet);
begin
if AdoTable1.Modified then
ADOTable1.FieldByName('Zagalom_cena').AsInteger:= ADOTable1.FieldByName('Col_produkt').AsInteger * ADOTable1.FieldByName('Cena_prod').AsInteger ;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Text:=DBGridEh2.Columns.Items[3].Footer.SumValue; //загальна ціна в едит
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
PrintDBGridEh1.Preview;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
 try
    if ADOTable1.RecordCount = 0 then
    exit;
    if Application.MessageBox('Видалити?','Замовлення',MB_YESNO)=IDYES then
     begin
      ADOTable1.Delete;
      end;
   except
    on e:Exception do
   end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
 Form2.showmodal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.N111Click(Sender: TObject);
begin
Form5.ShowModal;   //форма додавання продукту
end;

procedure TForm1.Button1Click(Sender: TObject);
var XLApp,Sheet,Colum:Variant;
index,i:Integer;
begin
XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Bill';
 Colum:=XLApp.Workbooks[1].WorkSheets['Bill'].Columns;
 Colum.Columns[2].ColumnWidth:=10;
 Colum.Columns[3].ColumnWidth:=10;
 Colum.Columns[4].ColumnWidth:=12;
 Colum.Columns[5].ColumnWidth:=20;
 Colum:=XLApp.Workbooks[1].WorkSheets['Bill'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Color:=clBlue;
 Colum.Rows[2].Font.Size:=14;
 Sheet:=XLApp.Workbooks[1].WorkSheets['Bill'];
 Sheet.Cells[2,4]:='Чек';
 Sheet.Cells[3,2]:=DBGridEh1.DataSource.DataSet.FindField('FIO_zakaz').AsString;
 Sheet.Cells[3,3]:=DBGridEh1.DataSource.DataSet.FindField('Data_zakaz').AsVariant;
 Sheet.Cells[3,4]:=Form3.DBDateTimeEditEh2.Text;
 //Sheet.Cells[3,4]:=Form3.DBGridEh1.DataSource.DataSet.FindField('Time_zakaz').AsVariant;   //??? не правильно выводит вреня выводит с датой
 Sheet.Cells[3,5]:='Зал №'+DBGridEh1.DataSource.DataSet.FindField('Zal_nomer').AsString;
 Sheet.Cells[5,2]:='Страва';
 Sheet.Cells[5,3]:='Кількість';
 Sheet.Cells[5,4]:='Ціна за 1 шт.';
 Sheet.Cells[5,5]:='Ціна за кількість порцій';
 index:=6;
 ADOTable1.First;
 for i:=0 to  ADOTable1.RecordCount-1 do
  begin
 Sheet.Cells[index,2]:=ADOTable1.Fields.Fields[0].AsString;
 Sheet.Cells[index,3]:=ADOTable1.Fields.Fields[1].AsString;
 Sheet.Cells[index,4]:=ADOTable1.Fields.Fields[2].AsString;
 Sheet.Cells[index,5]:=ADOTable1.Fields.Fields[3].AsString;
 Sheet.Cells[index+1,4]:='Загалом->' ;
 Sheet.Cells[index+1,5]:=DBGridEh2.Columns.Items[3].Footer.SumValue;
  Inc(index);
 ADOTable1.Next;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//PrintDBGridEh2.Preview;
Form7.Show;
Form7.frxReport1.ShowReport();

end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form6.Showmodal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Left:=(Screen.Width div 2)-(Form1.Width div 2);
Form1.Top:=(Screen.Height div 2)-(Form1.Height div 2);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
DBGridEh2.Width:=Form1.Width-270;
end;

end.
