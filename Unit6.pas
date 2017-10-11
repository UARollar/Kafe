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
    ADOQuery1Ананас: TIntegerField;
    ADOQuery1Балик: TIntegerField;
    ADOQuery1Бринза: TIntegerField;
    ADOQuery1Виноград: TIntegerField;
    ADOQuery1Гірчицяфранцузька: TIntegerField;
    ADOQuery1Горошокконсервований: TIntegerField;
    ADOQuery1Грибижарені: TIntegerField;
    ADOQuery1Грибимариновані: TIntegerField;
    ADOQuery1Грибисирі: TIntegerField;
    ADOQuery1Кальмари: TIntegerField;
    ADOQuery1Капуста: TIntegerField;
    ADOQuery1Капустапекінська: TIntegerField;
    ADOQuery1Картошкаварена: TIntegerField;
    ADOQuery1Квасоляконсервовані: TIntegerField;
    ADOQuery1КовбасаПК: TIntegerField;
    ADOQuery1Крабовіпалички: TIntegerField;
    ADOQuery1Креветки: TIntegerField;
    ADOQuery1Кукурудза: TIntegerField;
    ADOQuery1Кукурудзаконсервована: TIntegerField;
    ADOQuery1Лимон: TIntegerField;
    ADOQuery1Лимонсік: TIntegerField;
    ADOQuery1Листсалата: TIntegerField;
    ADOQuery1Майонез: TIntegerField;
    ADOQuery1Маслини: TIntegerField;
    ADOQuery1Мідії: TIntegerField;
    ADOQuery1Морква: TIntegerField;
    ADOQuery1Моркваварена: TIntegerField;
    ADOQuery1Моркважарера: TIntegerField;
    ADOQuery1Морквапокорейськи: TIntegerField;
    ADOQuery1Мясокуркикопчене: TIntegerField;
    ADOQuery1Огірки: TIntegerField;
    ADOQuery1Огіркимариновані: TIntegerField;
    ADOQuery1Огіркисолоні: TIntegerField;
    ADOQuery1Оливки: TIntegerField;
    ADOQuery1Олія: TIntegerField;
    ADOQuery1Оліявино: TIntegerField;
    ADOQuery1Перець: TIntegerField;
    ADOQuery1Печінкаварена: TIntegerField;
    ADOQuery1Помідори: TIntegerField;
    ADOQuery1Помідоричеррі: TIntegerField;
    ADOQuery1Свининаварена: TIntegerField;
    ADOQuery1Сиртвердий: TIntegerField;
    ADOQuery1Сухарики: TIntegerField;
    ADOQuery1Сухарикижарені: TIntegerField;
    ADOQuery1Уксус: TIntegerField;
    ADOQuery1Філекурячеварене: TIntegerField;
    ADOQuery1Філекурячежарене: TIntegerField;
    ADOQuery1Філемерлузижарене: TIntegerField;
    ADOQuery1Цибуля: TIntegerField;
    ADOQuery1Цибуляжарена: TIntegerField;
    ADOQuery1Цибулязелена: TIntegerField;
    ADOQuery1Цибулямаринована: TIntegerField;
    ADOQuery1Цибулясиня: TIntegerField;
    ADOQuery1Часник: TIntegerField;
    ADOQuery1Яблуко: TIntegerField;
    ADOQuery1Язикварений: TIntegerField;
    ADOQuery1Яйцекуряче: TIntegerField;
    ADOQuery1Яйцеперепелине: TIntegerField;
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
'Ананас*Col_produkt AS Ананас , '+
'Балик*Col_produkt AS Балик, '+
'Бринза*Col_produkt AS Бринза, '+
'Виноград*Col_produkt AS Виноград, '+
'Гірчицяфранцузька*Col_produkt AS Гірчицяфранцузька, '+
'Горошокконсервований*Col_produkt AS Горошокконсервований,  '+
'Грибижарені*Col_produkt AS Грибижарені,  '+
'Грибимариновані*Col_produkt AS Грибимариновані,  '+
'Грибисирі*Col_produkt AS Грибисирі,  '+
'Кальмари*Col_produkt AS Кальмари,  '+
'Капуста*Col_produkt AS Капуста,  '+
'Капустапекінська*Col_produkt AS Капустапекінська, '+
'Картошкаварена*Col_produkt AS Картошкаварена,'+
'Квасоляконсервовані*Col_produkt AS Квасоляконсервовані,'+
'[КовбасаП/К]*Col_produkt AS [КовбасаП/К], '+
'Крабовіпалички*Col_produkt AS Крабовіпалички, '+
'Креветки*Col_produkt AS Креветки, '+
'Кукурудза*Col_produkt AS Кукурудза,  '+
'Кукурудзаконсервована*Col_produkt AS Кукурудзаконсервована, '+
'Лимон*Col_produkt AS Лимон,  '+
'Лимонсік*Col_produkt AS Лимонсік, '+
'Листсалата*Col_produkt AS Листсалата, '+
'Майонез*Col_produkt AS Майонез,  '+
'Маслини*Col_produkt AS Маслини, '+
'Мідії*Col_produkt AS Мідії,   '+
'Морква*Col_produkt AS Морква,  '+
'Моркваварена*Col_produkt AS Моркваварена,'+
'Моркважарера*Col_produkt AS Моркважарера,  '+
'Морквапокорейськи*Col_produkt AS Морквапокорейськи, '+
'Мясокуркикопчене*Col_produkt AS Мясокуркикопчене, '+
'Огірки*Col_produkt AS Огірки,                   '+
'Огіркимариновані*Col_produkt AS Огіркимариновані, '+
'Огіркисолоні*Col_produkt AS Огіркисолоні,      '+
'Оливки*Col_produkt AS Оливки,                 '+
'Олія*Col_produkt AS Олія,                     '+
'[Олія/вино]*Col_produkt AS [Олія/вино],        '+
'Перець*Col_produkt AS Перець,                   '+
'Печінкаварена*Col_produkt AS Печінкаварена,     '+
'Помідори*Col_produkt AS Помідори,               '+
'Помідоричеррі*Col_produkt AS Помідоричеррі,      '+
'Свининаварена*Col_produkt AS Свининаварена,      '+
'Сиртвердий*Col_produkt AS Сиртвердий,            '+
'Сухарики*Col_produkt AS Сухарики,                '+
'Сухарикижарені*Col_produkt AS Сухарикижарені,    '+
'Уксус*Col_produkt AS Уксус,                      '+
'Філекурячеварене*Col_produkt AS Філекурячеварене,'+
'Філекурячежарене*Col_produkt AS Філекурячежарене,  '+
'Філемерлузижарене*Col_produkt AS Філемерлузижарене, '+
'Цибуля*Col_produkt AS Цибуля,                       '+
'Цибуляжарена*Col_produkt AS Цибуляжарена,          '+
'Цибулязелена*Col_produkt AS Цибулязелена,         '+
'Цибулямаринована*Col_produkt AS Цибулямаринована,  '+
'Цибулясиня*Col_produkt AS Цибулясиня,              '+
'Часник*Col_produkt AS Часник,                     '+
'Яблуко*Col_produkt AS Яблуко,                     '+
'Язикварений*Col_produkt AS Язикварений,          '+
'Яйцекуряче*Col_produkt AS Яйцекуряче,             '+
'Яйцеперепелине*Col_produkt AS Яйцеперепелине      '+
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
//ShowMessage('Файл збережено на диску С:\Розрахунок');
var XLApp,Sheet,Colum:Variant;
index,i:Integer;
begin
XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Закупка';
 Colum:=XLApp.Workbooks[1].WorkSheets['Закупка'].Columns;
 Colum.Columns[1].ColumnWidth:=15;
 Colum.Columns[2].ColumnWidth:=15;
 Colum.Columns[3].ColumnWidth:=15;
 Colum.Columns[4].ColumnWidth:=15;
 Colum.Columns[5].ColumnWidth:=20;
 Colum:=XLApp.Workbooks[1].WorkSheets['Закупка'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[2].Font.Color:=clBlue;
 Colum.Rows[2].Font.Size:=14;
 Sheet:=XLApp.Workbooks[1].WorkSheets['Закупка'];
 Sheet.Cells[2,2]:='Закупка';

 Sheet.Cells[2,3]:=DateTimePicker2.DateTime; //Дата закупки
 Sheet.Cells[4,2]:='Інгредієнти';
 Sheet.Cells[4,3]:='Кількість в г.';
// Sheet.Cells[5,2]:='Ананас';
 // Sheet.Cells[6,2]:='Балик' ;

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
 //Sheet.Cells[index+1,4]:='Загалом->' ;
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
    if DBGridEh3.Columns.Items[i].Footer.SumValue = 0 then   //если сумма = 0 значит скрываем
 DBGridEh3.Columns[i].Visible := False
 else
   DBGridEh3.Columns[i].Visible := True;
  except
 end;

end;


procedure TForm6.Button4Click(Sender: TObject);
begin
 SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh3,'C:\Po3paxyHok.xls',True);    //seve all product
 ShowMessage('Файл збережено на диску С:\Розрахунок');
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
