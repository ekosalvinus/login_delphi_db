object dm: Tdm
  OldCreateOrder = False
  Height = 268
  Width = 361
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\11. DELPHI PROJECT\LoginDelphi\DB\USERDB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pengguna')
    Left = 160
    Top = 64
  end
end