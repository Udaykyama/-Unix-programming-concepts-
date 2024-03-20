.intel_syntax noprefix

.data
	welcomemessage:
		.ascii "Welcome to the Wizard Battle \n"
		.ascii "Written by Uday Kyama\n\n \0"
	nextLine:
		.ascii "\n\0"
	numPlayersMsg:
		.ascii "How Many Players are in the game? \0"
	playerNumMsg:
		.ascii "Player \0"
	healthQuestion: 
		.ascii "Health: \0"
	initialHealth:
		.quad 100
	numPlayers:
		.quad 0
#	targetMsg;
#		.ascii "Your Target: \0"
	damageMsgPart1:
		.ascii "Spell Blasts them for \0"
	damagePoints:
		.ascii "points \n\n\0 "
	currentPlayer:
		.quad 0
	numSurvivingPlayers:
		.quad 0
.text
.global _start

_start:
	Introduction:
		lea rdx, welcomemessage
		call PrintZString
		lea rdx, numPlayersMsg
		call PrintZString
		call ScanInt
		mov numPlayers, rdx
		mov rdx, 0
		mov currentPlayer, rdx
		mov rdx, numPlayers
		mov numSurvivingPlayers, rdx
	loop:
	call Exit
