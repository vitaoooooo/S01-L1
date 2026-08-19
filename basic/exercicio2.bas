Dim pin As Integer
Dim pinDigitado As Integer
pin = 4321

print "Digite o pin"
input pinDigitado

While pin <> pinDigitado
    print "PIN invalido. Tente novamente"
    print "Digite o pin"
    input pinDigitado
Wend

print "Transacao autorizada!"

Sleep
