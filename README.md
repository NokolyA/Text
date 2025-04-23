' 5. Макрос: Оформление ячейки таблицы (голубая заливка, красный текст)
Sub Макрос5()
    With Selection.Cells(1)
        .Shading.BackgroundPatternColor = RGB(173, 216, 230) ' Голубая заливка
        .Range.Font.Color = RGB(255, 0, 0) ' Красный текст
    End With
End Sub

' 6. Макрос: Оформление ячейки таблицы (серая заливка, двойная красная граница)
Sub Макрос6()
    With Selection.Cells(1)
        .Shading.BackgroundPatternColor = RGB(192, 192, 192) ' Серая заливка
        .Borders(wdBorderLeft).LineStyle = wdLineStyleDouble
        .Borders(wdBorderRight).LineStyle = wdLineStyleDouble
        .Borders(wdBorderTop).LineStyle = wdLineStyleDouble
        .Borders(wdBorderBottom).LineStyle = wdLineStyleDouble

        .Borders(wdBorderLeft).Color = RGB(255, 0, 0)
        .Borders(wdBorderRight).Color = RGB(255, 0, 0)
        .Borders(wdBorderTop).Color = RGB(255, 0, 0)
        .Borders(wdBorderBottom).Color = RGB(255, 0, 0)
    End With
End Sub

' 7. Макрос: Вставка рисунка и выравнивание по центру страницы
Sub Макрос7()
    Dim pic As InlineShape
    Dim filePath As String
    filePath = InputBox("Введите полный путь к рисунку")

    If filePath <> "" Then
        Set pic = Selection.InlineShapes.AddPicture(FileName:=filePath, LinkToFile:=False, SaveWithDocument:=True)
        pic.Select
        Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    End If
End Sub

' 8. Макрос: Параметры страницы и оформление текста
Sub Макрос8()
    With ActiveDocument.PageSetup
        .TopMargin = CentimetersToPoints(2.5)
        .BottomMargin = CentimetersToPoints(2.5)
        .LeftMargin = CentimetersToPoints(3)
        .RightMargin = CentimetersToPoints(1.5)
    End With

    With Selection.Font
        .Name = "Times New Roman"
        .Size = 14
    End With

    With Selection.ParagraphFormat
        .Alignment = wdAlignParagraphJustify
        .LineSpacingRule = wdLineSpace1_5
    End With
End Sub

' 9. Макрос: Таблица 3x4 и оформление первой строки рамкой синего цвета
Sub Макрос9()
    Dim tbl As Table
    Set tbl = ActiveDocument.Tables.Add(Selection.Range, 3, 4)

    With tbl.Rows(1).Borders
        .OutsideLineStyle = wdLineStyleSingle
        .OutsideColor = RGB(0, 0, 255)
    End With
End Sub
