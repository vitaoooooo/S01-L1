Dim peso As double 
Dim qtdAgua As Integer
Dim meta As double

Print "Digite seu peso"
Input peso
Print "Digite a quantidade de agua ingerida"
Input qtdAgua

meta = peso*35

if qtdAgua >= meta Then
    Print "Meta atingida!"
Else 
    Print "Meta nao atingida!"    
End if

Sleep
