object FDMCons: TFDMCons
  OldCreateOrder = False
  Height = 683
  Width = 960
  object qExpEstilo: TFDQuery
    Connection = FDM.FDConnection1
    Transaction = FDM.FDTransaction1
    SQL.Strings = (
      'select d.estilo, sum(d.cantidad) cantidad,'
      '  c.insumo, i.nombre insumo_nombre,'
      '  c.consumo consumo, sum(d.cantidad*c.consumo) consumo_total,'
      '  i.uni_sal'
      'from progdet d'
      'left outer join prog m on m.folio = d.folio'
      'left outer join estconsumos c on c.estilo=d.estilo'
      'left outer join insumos i on i.clave=c.insumo'
      'where d.folio between :pfolini and :pfolfin'
      '  and m.estatus in('#39'A'#39', '#39'E'#39')'
      '  and d.estatus in('#39'A'#39', '#39'E'#39')'
      'group by d.estilo,'
      '  c.insumo, i.nombre,'
      '  c.consumo,'
      '  i.uni_sal')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'PFOLINI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PFOLFIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qExpEstiloESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qExpEstiloCANTIDAD: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object qExpEstiloINSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSUMO'
      Origin = 'INSUMO'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object qExpEstiloINSUMO_NOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSUMO_NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qExpEstiloCONSUMO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMO'
      Origin = 'CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qExpEstiloCONSUMO_TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMO_TOTAL'
      Origin = 'CONSUMO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object qExpEstiloUNI_SAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_SAL'
      Origin = 'UNI_SAL'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
  end
  object qExpIns: TFDQuery
    Connection = FDM.FDConnection1
    Transaction = FDM.FDTransaction1
    SQL.Strings = (
      'select sum(d.cantidad) cantidad,'
      '  c.insumo, i.nombre insumo_nombre,'
      '  c.consumo consumo, sum(d.cantidad*c.consumo) consumo_total,'
      '  i.uni_sal'
      'from progdet d'
      'left outer join prog m on m.folio = d.folio'
      'left outer join estconsumos c on c.estilo=d.estilo'
      'left outer join insumos i on i.clave=c.insumo'
      'where d.folio between :pfolini and :pfolfin'
      '  and m.estatus in('#39'A'#39', '#39'E'#39')'
      '  and d.estatus in('#39'A'#39', '#39'E'#39')'
      'group by '
      '  c.insumo, i.nombre,'
      '  c.consumo,'
      '  i.uni_sal')
    Left = 80
    Top = 16
    ParamData = <
      item
        Name = 'PFOLINI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PFOLFIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qExpInsCANTIDAD: TLargeintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object qExpInsINSUMO: TStringField
      FieldName = 'INSUMO'
      Origin = 'INSUMO'
      Size = 18
    end
    object qExpInsINSUMO_NOMBRE: TStringField
      FieldName = 'INSUMO_NOMBRE'
      Origin = 'INSUMO_NOMBRE'
      Size = 100
    end
    object qExpInsCONSUMO: TSingleField
      FieldName = 'CONSUMO'
      Origin = 'CONSUMO'
    end
    object qExpInsCONSUMO_TOTAL: TFloatField
      FieldName = 'CONSUMO_TOTAL'
      Origin = 'CONSUMO_TOTAL'
    end
    object qExpInsUNI_SAL: TStringField
      FieldName = 'UNI_SAL'
      Origin = 'UNI_SAL'
      FixedChar = True
      Size = 3
    end
  end
end
