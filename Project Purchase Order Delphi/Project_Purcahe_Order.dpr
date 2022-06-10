program Project_Purcahe_Order;

uses
  Forms,
  UMain_Menu in 'UMain_Menu.pas' {Form1},
  USupplier in 'USupplier.pas' {Form2},
  UPurchaseOrder in 'UPurchaseOrder.pas' {Form3},
  UDataBarang in 'UDataBarang.pas' {Form4},
  ULiatPurchaseOrder in 'ULiatPurchaseOrder.pas' {Form5},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UCariSupplier in 'UCariSupplier.pas' {Form6},
  ULapPO in 'ULapPO.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
