#include samp1.ahk


numpad1::
sendchat("/tazer")
return

numpad2::
targ:=getClosestPlayerId()
if (targ!="-1")
{
SendChat("/me открыл дверь и посадил преступника в машину и команду")
sleep 1200
SendChat("/cput " targ)
}
else
addchatmessage("Рядом никого нет")
Return

numpad3::
SendChat("/me провёл преступника в лифт")
return

numpad4::
SendInput {F6}/ceject
return

numpad5::
id4:=getClosestPlayerId()
if (id4!="-1")
{
Sendchat("/me выбил окно у машины и вытащил от туда преступника")
sleep 1300
Sendchat("/deject "id4)
} 
else
addchatmessage("Никого рядом нет")
return

numpad6::
SendChat("/try схватил преступника за ногу")
return

numpad7::
SendChat("/m [LVPD] Немедленно прижмитесь к обочине и остановитесь или откроем огонь!")
return

xbutton2::
targ:=getIdByPed(getTargetPed())
if (targ!="-1")
{
SendChat("/uncuff "targ)
sleep 1200
SendChat("/cuff "targ)
}
else
{
targ:=getClosestPlayerId()
SendChat("/uncuff "targ)
sleep 1200
SendChat("/cuff "targ)
}
Return
