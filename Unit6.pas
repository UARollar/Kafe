unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ComCtrls, StdCtrls,DBGridEhImpExp,
  ExtCtrls, Data.DB, Data.Win.ADODB,ComObj, DBVertGridsEh, PrnDbgeh,Printers, PrViewEh;

type
  TForm6 = class(TForm)
    DateTimePicker3: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Image1: TImage;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOQuery1Col_produkt: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1�����: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1��������: TIntegerField;
    ADOQuery1ó���������������: TIntegerField;
    ADOQuery1��������������������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1��������������: TIntegerField;
    ADOQuery1��������: TIntegerField;
    ADOQuery1��������: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1���������������: TIntegerField;
    ADOQuery1��������������: TIntegerField;
    ADOQuery1������������������: TIntegerField;
    ADOQuery1���������: TIntegerField;
    ADOQuery1�������������: TIntegerField;
    ADOQuery1��������: TIntegerField;
    ADOQuery1���������: TIntegerField;
    ADOQuery1���������������������: TIntegerField;
    ADOQuery1�����: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1̳䳿: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1������������: TIntegerField;
    ADOQuery1������������: TIntegerField;
    ADOQuery1�����������������: TIntegerField;
    ADOQuery1����������������: TIntegerField;
    ADOQuery1�����: TIntegerField;
    ADOQuery1��������������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1���: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1�������������: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1�����������: TIntegerField;
    ADOQuery1�������������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1��������: TIntegerField;
    ADOQuery1�������������: TIntegerField;
    ADOQuery1�����: TIntegerField;
    ADOQuery1Գ��������������: TIntegerField;
    ADOQuery1Գ��������������: TIntegerField;
    ADOQuery1Գ���������������: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1������������: TIntegerField;
    ADOQuery1������������: TIntegerField;
    ADOQuery1����������������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1������: TIntegerField;
    ADOQuery1�����������: TIntegerField;
    ADOQuery1����������: TIntegerField;
    ADOQuery1��������������: TIntegerField;
    PrintDBGridEh1: TPrintDBGridEh;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
try
 with ADOQuery1 do
  begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select  Nazva_stravy, Col_produkt, '+
'������*Col_produkt AS ������ , '+
'�����*Col_produkt AS �����, '+
'������*Col_produkt AS ������, '+
'��������*Col_produkt AS ��������, '+
'ó���������������*Col_produkt AS ó���������������, '+
'��������������������*Col_produkt AS ��������������������,  '+
'����������*Col_produkt AS ����������,  '+
'��������������*Col_produkt AS ��������������,  '+
'��������*Col_produkt AS ��������,  '+
'��������*Col_produkt AS ��������,  '+
'�������*Col_produkt AS �������,  '+
'���������������*Col_produkt AS ���������������, '+
'��������������*Col_produkt AS ��������������,'+
'������������������*Col_produkt AS ������������������,'+
'[��������/�]*Col_produkt AS [��������/�], '+
'�������������*Col_produkt AS �������������, '+
'��������*Col_produkt AS ��������, '+
'���������*Col_produkt AS ���������,  '+
'���������������������*Col_produkt AS ���������������������, '+
'�����*Col_produkt AS �����,  '+
'�������*Col_produkt AS �������, '+
'����������*Col_produkt AS ����������, '+
'�������*Col_produkt AS �������,  '+
'�������*Col_produkt AS �������, '+
'̳䳿*Col_produkt AS ̳䳿,   '+
'������*Col_produkt AS ������,  '+
'������������*Col_produkt AS ������������,'+
'������������*Col_produkt AS ������������,  '+
'�����������������*Col_produkt AS �����������������, '+
'����������������*Col_produkt AS ����������������, '+
'�����*Col_produkt AS �����,                   '+
'��������������*Col_produkt AS ��������������, '+
'����������*Col_produkt AS ����������,      '+
'������*Col_produkt AS ������,                 '+
'���*Col_produkt AS ���,                     '+
'[���/����]*Col_produkt AS [���/����],        '+
'������*Col_produkt AS ������,                   '+
'�������������*Col_produkt AS �������������,     '+
'�������*Col_produkt AS �������,               '+
'�����������*Col_produkt AS �����������,      '+
'�������������*Col_produkt AS �������������,      '+
'����������*Col_produkt AS ����������,            '+
'��������*Col_produkt AS ��������,                '+
'�������������*Col_produkt AS �������������,    '+
'�����*Col_produkt AS �����,                      '+
'Գ��������������*Col_produkt AS Գ��������������,'+
'Գ��������������*Col_produkt AS Գ��������������,  '+
'Գ���������������*Col_produkt AS Գ���������������, '+
'������*Col_produkt AS ������,                       '+
'������������*Col_produkt AS ������������,          '+
'������������*Col_produkt AS ������������,         '+
'����������������*Col_produkt AS ����������������,  '+
'����������*Col_produkt AS ����������,              '+
'������*Col_produkt AS ������,                     '+
'������*Col_produkt AS ������,                     '+
'�����������*Col_produkt AS �����������,          '+
'����������*Col_produkt AS ����������,             '+
'��������������*Col_produkt AS ��������������      '+
'From  Ingredienty,Produkty,Tabl_zakaz             '+
'Where   Ingredienty.Nazva_stravy=Produkty.Produkt  AND Tabl_zakaz.Poradok_nom=Produkty.Nome_For_zakaz AND Tabl_zakaz.Data_zakaz>=:Data1 AND Tabl_zakaz.Data_zakaz<=:Data2 order by Produkty.Produkt ');

Parameters.ParamByName('Data1').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker2.date);
Parameters.ParamByName('Data2').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker3.date);
ADOQuery1.Active:=True;
          end;

          finally
end;
Button3.Click;
end;

   
procedure TForm6.FormResize(Sender: TObject);
begin
DBGridEh3.Width:=Form6.Width-30;
DBGridEh3.Height:=Form6.Height-80;
end;

procedure TForm6.FormShow(Sender: TObject);
var
i:integer;
begin
for i := 0 to DBGridEh3.Columns.Count - 1
do DBGridEh3.Columns.Items[i].Visible := True;
end;

procedure TForm6.Button2Click(Sender: TObject);
 //begin
//SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh3,'C:\Po3paxyHok.xls',True);    //seve all product
//ShowMessage('���� ��������� �� ����� �:\����������');
var XLApp,Sheet,Colum:Variant;
index,i:Integer;
begin
XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='�������';
 Colum:=XLApp.Workbooks[1].WorkSheets['�������'].Columns;
 Colum.Columns[1].ColumnWidth:=15;
 Colum.Columns[2].ColumnWidth:=15;
 Colum.Columns[3].ColumnWidth:=15;
 Colum.Columns[4].ColumnWidth:=15;
 Colum.Columns[5].ColumnWidth:=20;
 Colum:=XLApp.Workbooks[1].WorkSheets['�������'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Color:=clBlue;
 Colum.Rows[2].Font.Size:=14;
 Sheet:=XLApp.Workbooks[1].WorkSheets['�������'];
 Sheet.Cells[2,2]:='�������';

 Sheet.Cells[2,3]:=DateTimePicker2.DateTime; //���� �������
 Sheet.Cells[4,2]:='�����䳺���';
 Sheet.Cells[4,3]:='ʳ������ � �.';
// Sheet.Cells[5,2]:='������';
 // Sheet.Cells[6,2]:='�����' ;

 index:=5;
 for i:=0 to  ADOQuery1.FieldCount-1  do
    if DBGridEh3.Columns.Items[i].Footer.SumValue <> 0 then
    // ADOQuery1.First;               rob
  // for i:=0 to ADOQuery1.FieldCount-1 do  rob

   begin
   try
 // Sheet.Cells[index,2]:=DBGridEh3.Columns[2].Title.caption;
 // Sheet.Cells[index,3]:=DBGridEh3.Columns.Items[2].Footer.SumValue;
  // Sheet.Cells[index,2]:='';
 // Sheet.Cells[index,3]:=DBGridEh3.Columns.Items[2].Footer.SumValue;
    Sheet.Cells[index,2]:=DBGridEh3.Columns[i].Title.caption;
  Sheet.Cells[index,3]:=DBGridEh3.Columns.Items[i].Footer.SumValue;
   // Sheet.Cells[index,2]:=DBGridEh3.Columns[4].Title.caption;
 // Sheet.Cells[index,3]:=DBGridEh3.Columns.Items[4].Footer.SumValue;
  //Sheet.Cells[3,index]:=ADOQuery1.Fields.Fields[3].AsString;
// Sheet.Cells[4,index]:=ADOQuery1.Fields.Fields[4].AsString;
// Sheet.Cells[5,index]:=ADOQuery1.Fields.Fields[5].AsString;
 //Sheet.Cells[index+1,4]:='�������->' ;
 //Sheet.Cells[index+1,5]:=DBGridEh2.Columns.Items[3].Footer.SumValue;
  Inc(index);
// ADOQuery1.Next;    rob

  except
    end;
    end;
end;

procedure TForm6.Button3Click(Sender: TObject);
var i :integer;
begin
 try
 for i:=0 to  ADOQuery1.FieldCount-1  do
    if DBGridEh3.Columns.Items[i].Footer.SumValue = 0 then   //���� ����� = 0 ������ ��������
 DBGridEh3.Columns[i].Visible := False
 else
   DBGridEh3.Columns[i].Visible := True;
  except
 end;

end;


procedure TForm6.Button4Click(Sender: TObject);
begin
 SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh3,'C:\Po3paxyHok.xls',True);    //seve all product
 ShowMessage('���� ��������� �� ����� �:\����������');
end;

procedure TForm6.Button5Click(Sender: TObject);
var
a,b: Integer;
ExApp, WB, WS, Arr: Variant;
begin
a:=1;
ExApp:=CreateOleObject('Excel.Application');
WB:=ExApp.WorkBooks.Add;
WS := ExApp.Workbooks[1].WorkSheets[1];
with DBGridEh3 do
begin
 DataSource.DataSet.First;
  for b := 0 to Columns.Count-1 do
    WS.Cells[1, b+1].Value := DBGridEh3.Columns[b].Title.Caption;
 while not DataSource.DataSet.Eof do
 begin
   for b:=0 to (Columns.Count-1) do
   begin
     WS.Cells[a+1, b+1].Value:=Columns[b].Field.AsString;
   end;
   DataSource.DataSet.Next;
   Inc(a);
 end;
 DataSource.DataSet.EnableControls;
 ExApp.Visible:=true;
end;
end;
procedure TForm6.Button6Click(Sender: TObject);
begin
PrinterPreview.Orientation := poLandscape;
PrintDBGridEh1.Preview;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
 Form6.Icon := Image1.Picture.Icon;
 end;

end.
