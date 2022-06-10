unit UMain_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, TeeProcs, TeEngine, Chart,
  Buttons, Series;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Label1: TLabel;
    Image9: TImage;
    Label2: TLabel;
    Image10: TImage;
    Label3: TLabel;
    Image11: TImage;
    Label4: TLabel;
    Image12: TImage;
    Label5: TLabel;
    Image13: TImage;
    Label6: TLabel;
    Image14: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Image15: TImage;
    Label9: TLabel;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Chart1: TChart;
    Chart2: TChart;
    Label10: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Memo1: TMemo;
    Label12: TLabel;
    Edit2: TEdit;
    Label13: TLabel;
    Edit3: TEdit;
    Label14: TLabel;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    Series1: THorizBarSeries;
    Series2: TBarSeries;
    procedure Image13Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dataperusahaan;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure refresh;
    procedure grafik1;
    procedure grafik2;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  USupplier, UPurchaseOrder, UDataBarang, ULiatPurchaseOrder, UDataModule,
  DB;

{$R *.dfm}

procedure TForm1.Image13Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Edit1.Enabled := False;
  Memo1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  SpeedButton3.Visible := False;
  dataperusahaan;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Edit1.Enabled := True;
  Memo1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  SpeedButton3.Visible := True;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  //
  dataperusahaan;
  refresh;
  grafik1;
  grafik2;
end;

procedure TForm1.dataperusahaan;
begin
  // call data perusahaan :
  with DM.ADOQPerusahaan do
  begin
  close;
  sql.Clear;
  sql.Add('SELECT * FROM dataPerusahaan');
  open;
  end;
  Edit1.Text :=DM.ADOQPerusahaan.FIELDBYNAME('namaPerusahaan').AsString;
  Memo1.Text :=DM.ADOQPerusahaan.FIELDBYNAME('alamatPerusahaan').AsString;
  Edit2.Text :=DM.ADOQPerusahaan.FIELDBYNAME('noTelpon').AsString;
  Edit3.Text :=DM.ADOQPerusahaan.FIELDBYNAME('email').AsString;
  Edit4.Text :=DM.ADOQPerusahaan.FIELDBYNAME('namaDirektur').AsString;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
//  with DM.ADOQPerusahaan do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('UPDATE dataPerusahaan SET namaPerusahaan="'+Edit1.Text+'",alamatPerusahaan="'+Memo1.Text+'",noTelpon="'+Edit2.Text+'",email="'+Edit3.Text+'",namaDirektur="'+Edit4.Text+'" WHERE no=1');
//    execSQL;
//  end;
  DM.ADOQPerusahaan.Edit;
  DM.ADOQPerusahaan['namaPerusahaan'] := Edit1.Text;
  DM.ADOQPerusahaan['alamatPerusahaan'] := Memo1.Text;
  DM.ADOQPerusahaan['noTelpon'] := Edit2.Text;
  DM.ADOQPerusahaan['email'] := Edit3.Text;
  DM.ADOQPerusahaan['namaDirektur'] := Edit4.Text;
  DM.ADOQPerusahaan.Post;
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
  dataperusahaan;
  refresh;
  grafik1;
  grafik2;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
  dataperusahaan;
  refresh;
  grafik1;
  grafik2;
end;

procedure TForm1.refresh;
var
  data3 : string;
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.Open;
  Panel7.Caption := DM.ADOQuery1['jml_supplier'];
  //
  DM.ADOQuery2.Close;
  DM.ADOQuery2.Open;
  Panel8.Caption := DM.ADOQuery2['jml_po'];
  //
  DM.ADOQuery3.Close;
  DM.ADOQuery3.Open;
  Panel9.Caption := DM.ADOQuery3['jml_barang'];
  //
  DM.ADOQuery4.Close;
  DM.ADOQuery4.Open;
  data3 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQuery4['TTL']);
  Panel10.Caption := 'Rp. ' + data3;
end;

procedure TForm1.grafik1;
begin
  Chart2.Series[0].Clear;
  DM.ADOQuery5.Close;
  DM.ADOQuery5.Open;
  DM.ADOQuery5.First;
  while DM.ADOQuery5.Eof = False do
  begin
    Chart2.Series[0].Add(DM.ADOQuery5['jmlOrder'],DM.ADOQuery5['namaSupplier']);
    DM.ADOQuery5.Next;
  end;
end;

procedure TForm1.grafik2;
begin
  Chart1.Series[0].Clear;
  DM.ADOQuery6.Close;
  DM.ADOQuery6.Open;
  DM.ADOQuery6.First;
  while DM.ADOQuery6.Eof = False do
  begin
    Chart1.Series[0].Add(DM.ADOQuery6['nilaiOrder'],DM.ADOQuery6['namaSupplier']);
    DM.ADOQuery6.Next;
  end;
end;

end.
