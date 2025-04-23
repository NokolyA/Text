Sub СписокR()
    Dim para As Paragraph

    ' Проходим по каждому абзацу в выделении
    For Each para In Selection.Paragraphs
        With para.Range.ListFormat
            .ApplyBulletDefault
            .ListTemplate.ListLevels(1).NumberFormat = "R"
        End With
    Next para
End Sub
