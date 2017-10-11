unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, ADODB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBVertGridsEh, ComCtrls, StdCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh;

type
  TForm5 = class(TForm)
    DBVertGridEh1: TDBVertGridEh;
    ADOConForProdukt: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    StatusBar1: TStatusBar;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.Button1Click(Sender: TObject);
begin
//INSERT INTO `db`.`table_to`
//SELECT *
//FROM `db`.`table_from` ;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO Кафе.IngredientyForSum where Produkty.Produkt=Ingredienty.Nazva_stravy select * from Кафе.Ingredienty ');
ADOQuery1.ExecSQL;    //вставляет все значения в таблицу IngredientyForSum
end;

procedure TForm5.FormResize(Sender: TObject);
begin
DBGridEh1.Width:=Form5.Width-300;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels.Items[0].Text:='Всього: '+ IntToStr( ADOQuery1.RecordCount);
StatusBar1.Panels.Items[1].Text:='Поточна: '+ IntToStr( DataSource1.DataSet.RecNo);
 StatusBar1.Panels.Items[2].Text:= ADOQuery1.FieldByName('Nazva_stravy').AsString;
end;

end.
