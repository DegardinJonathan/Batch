Programmation Batch
===================

**Facilitation d'utilisation et automatisation des syst�mes**

Ce programme cod� en batch permet � l'utilisateur de vid� sa corbeille au lancement 
de ce dernier.

1. set /a "VAR1=0" = cr�ation et valorisation de la variable

2. for /r "%systemdrive%\$Recycle.bin" %%i in (*.*)do echo Taille du fichier %%i = %%~zi octets & set /a "VAR1 = VAR1+%%~zi"
= Condition imposant un affichage de la taille du fichier parcouru durant le parcours de la Corbeille
puis l'ajoute a la variable permettant de connaitre la taille complete des fichiers contenus dans la corbeille

3. echo Taille : %VAR1% octets = affichage de la taille complete de la corbeille


4. if %VAR1% GEQ 1000 rd /s /q %systemdrive%\$Recycle.bin = Test de la taille de la Corbeille si il d�passe 1Mo la Corbeille est supprim�


