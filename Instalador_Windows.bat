@ECHO OFF
TITLE Utilidad de actualizacion Eswow2ฉ
COLOR 1B
SET rev=01


:inicio
CLS
echo.
echo  888888b  .d8888b. Y8b      d8Y      Y8b      d8Y .d8888b.  ฉ
echo  888     d88P  Y88b Y8b db d8Y        Y8b db d8Y d88P""Y88b
echo  888     Y88b.       Y888888Y .d8888b. Y888888Y         888
echo  888888D  "Y888b      Y8''8Y d88P""Y88b Y8''8Y         d88"
echo  888         "Y88b.          888    888              .d88"
echo  888           "888   WOTLK  888    888  REV. %rev%   .d888"
echo  888     Y88b..d88P          Y88b..d88P          .d888"
echo  8888888P "Y8888P"            "Y8888P"           d88888888b          
echo.
ECHO   Por favor introduce los datos relativos a tu Mysql DB,
ECHO   ข, pulsa intro si los que hay entre [ ] son correctos.
echo.
set /p host=จCual es el nombre del host MySQL?       [localhost]   : 
if %host%. == . set host=localhost
set /p user=จCual es el nombre del usuario MySQL?    [root]        : 
if %user%. == . set user=root
set /p pass=จCual es el password de MySQL?           [ ]           : 
if %pass%. == . set pass=
set /p port=จCual es el puerto de MySQL?             [3306]        : 
if %port%. == . set port=3306
echo --------------------------------------------------------------------------------
set /p world_db=จCual es el nombre de la DB World?       [ ]           : 
if %world_db%. == . set world_db=world
set /p sd2_db=จCual es el nombre de la DB scriptdev2?  [scriptdev2]  : 
if %sd2_db%. == . set sd2_db=scriptdev2

SET dbsqlm=.\dbsqlM\
SET dbsqls=.\dbsqlS\
SET dbsqlt=.\dbsqlT\
SET rutamysql=.\mysql\
SET rutamangos=.\MaNGOS\
SET rutatc=.\TrinityCore\
SET mangoscommon=.\MaNGOS\Comunes\
SET mangossd2=.\MaNGOS\SD2\
SET mangosudb=.\MaNGOS\UDB\
SET mangosytdb=.\MaNGOS\YTDB\
SET tccommon=.\TrinityCore\Comunes\
SET tctdb=.\TrinityCore\TDB\
SET tcytdb=.\TrinityCore\YTDB\
SET volcado=.\volcado\
SET volcadom=.\volcado\mangos\
SET volcados=.\volcado\scriptdev2\
SET volcadow=.\volcado\world\

IF NOT EXIST "%volcadom%" MKDIR %volcadom%
IF NOT EXIST "%volcadow%" MKDIR %volcadow%

:opciones
CLS
SET O=""
ECHO.
ECHO   ษออออออออออออออออออออออออออออออออป
ECHO   บ                                บ
ECHO   บ     Opciones del Instalador    บ
ECHO   บ                                บ
ECHO   ศออออออออออออออออออออออออออออออออผ
ECHO.
ECHO    M - Instalar la revisiขn %rev% para MaNGOS.
ECHO.
ECHO    T - Instalar la revisiขn %rev% para Trinity.
ECHO.
ECHO    V - Crear un volcado de las Bases de Datos.
ECHO.
ECHO    R - Revertir volcado de las Bases de Datos -
ECHO                 o insertar FIX.
ECHO.     
ECHO    C - Cambiar ajustes iniciales.
ECHO.
ECHO    S - Salir de esta Utilidad.
ECHO.
ECHO    Es aconsejable que hagas un volcado de tus DB
ECHO    antes de iniciar el proceso de actualizaciขn.
ECHO.
SET /p O= 	Introduce una Letra: 
IF %O%==m GOTO mangosdb
IF %O%==M GOTO mangosdb
IF %O%==t GOTO trinity
IF %O%==T GOTO trinity
IF %O%==v GOTO wvolcado
IF %O%==V GOTO wvolcado
IF %O%==r GOTO rvolcado
IF %O%==R GOTO rvolcado
IF %O%==c GOTO inicio
IF %O%==C GOTO inicio
IF %O%==s GOTO salir
IF %O%==S GOTO salir
IF %O%=="" GOTO opciones
GOTO error


:mangosdb
CLS
SET dbm=""
ECHO.
ECHO  ษออออออออออออออออออออออออออออออออป
ECHO  บ                                บ
ECHO  บ     Elija la Base de Datos:    บ
ECHO  บ                                บ
ECHO  ศออออออออออออออออออออออออออออออออผ
ECHO.   
ECHO  	 UDB         = U
ECHO  	 YTDB        = Y
ECHO.
ECHO  Volver al menฃ de opciones = V
ECHO.
set /p dbm=      Letra: 
ECHO.
IF %dbm%==u GOTO mangosdbudb
IF %dbm%==U GOTO mangosdbudb
IF %dbm%==y GOTO mangosdbytdb
IF %dbm%==Y GOTO mangosdbytdb
IF %dbm%==v GOTO opciones
IF %dbm%==V GOTO opciones
IF %dbm%=="" GOTO mangosdb
GOTO error2


:trinity
CLS
SET dbt=""
ECHO.
ECHO  ษออออออออออออออออออออออออออออออออป
ECHO  บ                                บ
ECHO  บ     Elija la Base de Datos:    บ
ECHO  บ                                บ
ECHO  ศออออออออออออออออออออออออออออออออผ
ECHO.   
ECHO  	 TDB         = T
ECHO  	 YTDB        = Y
ECHO.
ECHO  Volver al menฃ de opciones = V
ECHO.
set /p dbt=      Letra: 
ECHO.
IF %dbt%==t GOTO trninitydbtdb
IF %dbt%==T GOTO trninitydbtdb
IF %dbt%==y GOTO trninitydbytdb
IF %dbt%==Y GOTO trninityddytdb
IF %dbt%==v GOTO opciones
IF %dbt%==V GOTO opciones
IF %dbt%=="" GOTO trinity
GOTO error3


:wvolcado
CLS
SET dbc=""
ECHO.
ECHO  ษออออออออออออออออออออออออออออป
ECHO  บ                            บ
ECHO  บ      Volcado de la DB      บ
ECHO  บ                            บ
ECHO  ศออออออออออออออออออออออออออออผ
ECHO.
ECHO	     Elija el Core:
ECHO.   
ECHO   MaNGOS         = M
ECHO  Trninity        = T
ECHO.
ECHO  Volver al menฃ de opciones = V
ECHO.
set /p dbc=      Letra: 
ECHO.
IF %dbc%==m GOTO mvolcado
IF %dbc%==M GOTO mvolcado
IF %dbc%==t GOTO tvolcado
IF %dbc%==T GOTO tvolcado
IF %dbc%==v GOTO opciones
IF %dbc%==V GOTO opciones
IF %dbc%=="" GOTO wvolcado
GOTO error4


:rvolcado
CLS
SET dbc=""
ECHO.
ECHO  ษออออออออออออออออออออออออออออออออป
ECHO  บ                                บ
ECHO  บ   Revertir volcado de la DB    บ
ECHO  บ                                บ
ECHO  ศออออออออออออออออออออออออออออออออผ
ECHO.
ECHO	     Elija el Core:
ECHO.   
ECHO   MaNGOS         = M
ECHO  Trninity        = T
ECHO.
ECHO  Volver al menฃ de opciones = V
ECHO.
set /p dbc=      Letra: 
ECHO.
IF %dbc%==m GOTO rmvolcado
IF %dbc%==M GOTO rmvolcado
IF %dbc%==t GOTO rtvolcado
IF %dbc%==T GOTO rtvolcado
IF %dbc%==v GOTO opciones
IF %dbc%==V GOTO opciones
IF %dbc%=="" GOTO rvolcado
GOTO error5


:mangosdbudb
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ     Actualizando MaNGOS + SD2 + UDB.    บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO Iniciando el proceso ten paciencia...
ECHO.
FOR %%C IN (%mangoscommon%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%mangossd2%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %sd2_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%mangosudb%\*.sql) DO (
	ECHO actualizando script UDB: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO Tu DB deberกa estar actualizada a la rev %rev% de Eswow2ฉ.
ECHO.
ECHO -------------------- MaNGOS UDB ---------------------
ECHO.
ECHO.
PAUSE
GOTO opciones


:mangosdbytdb
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ    Actualizando MaNGOS + SD2 + YTDB.    บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO Proceso en marcha ten paciencia...
ECHO.
FOR %%C IN (%mangoscommon%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%mangossd2%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %sd2_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%mangosytdb%\*.sql) DO (
	ECHO actualizando script YTDB: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO Tu DB deberกa estar actualizada a la rev %rev% de Eswow2ฉ.
ECHO.
ECHO ------------------- MaNGOS YTDB --------------------
ECHO.
ECHO.
PAUSE
GOTO opciones


:trninitydbtdb
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ       Actualizando Trinity + TDB.       บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO Proceso en marcha ten paciencia...
ECHO.
FOR %%C IN (%tccommon%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%tctdb%\*.sql) DO (
	ECHO actualizando script TDB: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO Tu DB deberกa estar actualizada a la rev %rev% de Eswow2ฉ.
ECHO.
ECHO ------------------- Trinity TDB --------------------
ECHO.
ECHO.
PAUSE
GOTO opciones


:trninitydbytdb
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ      Actualizando Trinity + YTDB.       บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO Proceso en marcha ten paciencia...
ECHO.
FOR %%C IN (%tccommon%\*.sql) DO (
	ECHO actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%tcytdb%\*.sql) DO (
	ECHO actualizando script YTDB: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO Tu DB deberกa estar actualizada a la rev %rev% de Eswow2ฉ.
ECHO.
ECHO ------------------- Trinity YTDB -------------------
ECHO.
ECHO.
PAUSE
GOTO opciones


:mvolcado
CLS
IF NOT EXIST "%volcado%" MKDIR %volcado%
IF NOT EXIST "%volcadom%" MKDIR %volcadom%
ECHO.
ECHO  ษออออออออออออออออออออออออออออออออออป
ECHO  บ                                  บ
ECHO  บ      Volcado de la DB MaNGOS     บ
ECHO  บ                                  บ
ECHO  ศออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Se esta salvando %world_db% ten paciencia...

FOR %%a IN ("%dbsqlm%\*.sql") DO SET /A Count+=1
setlocal enabledelayedexpansion
FOR %%C IN (%dbsqlm%\*.sql) DO (
	SET /A Count2+=1
	ECHO volcando [!Count2!/%Count%] %%~nC
	%rutamysql%\mysqldump --host=%host% --user=%user% --password=%pass% --port=%port% --routines --skip-comments %world_db% %%~nC > %volcadom%\%%~nxC
)
endlocal 
IF NOT EXIST "%volcados%" MKDIR %volcados%
ECHO.
ECHO  Se esta salvando %sd2_db% ten paciencia...
FOR %%a IN ("%dbsqls%\*.sql") DO SET /A Count3+=1
setlocal enabledelayedexpansion
FOR %%C IN (%dbsqls%\*.sql) DO (
	SET /A Count2+=1
	ECHO volcando [!Count2!/%Count3%] %%~nC
	%rutamysql%\mysqldump --host=%host% --user=%user% --password=%pass% --port=%port% --routines --skip-comments %sd2_db% %%~nC > %volcados%\%%~nxC
)
endlocal
ECHO  %world_db% y %sd2_db% se han salvado en la carptera %volcado%
ECHO.
ECHO  --------------- Volcadas las tablas de MaNGOS ---------------
ECHO.
PAUSE
SET /A Count=0
SET /A Count2=0
SET /A Count3=0
GOTO opciones


:tvolcado
CLS
IF NOT EXIST "%volcado%" MKDIR %volcado%
IF NOT EXIST "%volcadow%" MKDIR %volcadow%
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออป
ECHO  บ                                   บ
ECHO  บ      Volcado de la DB Trinity     บ
ECHO  บ                                   บ
ECHO  ศอออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Se esta salvando %world_db% ten paciencia...

FOR %%a IN ("%dbsqlT%\*.sql") DO SET /A Count+=1
setlocal enabledelayedexpansion
FOR %%C IN (%dbsqlT%\*.sql) DO (
	SET /A Count2+=1
	ECHO volcando [!Count2!/%Count%] %%~nC
	%rutamysql%\mysqldump --host=%host% --user=%user% --password=%pass% --port=%port% --routines --skip-comments %world_db% %%~nC > %volcadow%\%%~nxC
)
endlocal 
ECHO  %world_db% se ha salvado en la carptera %volcadoW%
ECHO.
ECHO  ---------- Volcadas las tablas de Trinity ----------
ECHO.
PAUSE
SET /A Count=0
SET /A Count2=0
GOTO opciones


:rmvolcado
IF NOT EXIST "%volcado%" GOTO error10
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ       Revertir volcado de MaNGOS        บ
ECHO  บ            o Insertando FIX             บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Proceso en marcha ten paciencia...
ECHO  Si es un FIX atento al siguiente mensaje -
ECHO         - FIX.sql se ha completado
ECHO.
FOR %%C IN (%volcadom%\*.sql) DO (
	ECHO restituyendo: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha completado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%volcados%\*.sql) DO (
	ECHO restituyendo: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %sd2_db% < "%%~fC"
	ECHO %%~nxC se ha completado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO.
ECHO ---------- Restituidas las tablas de MaNGOS ----------
ECHO.
PAUSE
GOTO opciones


:rtvolcado
IF NOT EXIST "%volcado%" GOTO error10
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ      Revertir volcado de Trinity        บ
ECHO  บ            o Insertando FIX             บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Proceso en marcha ten paciencia...
ECHO  Si es un FIX atento al siguiente mensaje -
ECHO         - FIX.sql se ha completado
ECHO.
FOR %%C IN (%volcadow%\*.sql) DO (
	ECHO restituyendo: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha completado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO.
ECHO -------- Restituidas las tablas de Trinity ---------
ECHO.
PAUSE
GOTO opciones


:error
ECHO	Por favor introduce la letra correcta.
ECHO.
PAUSE
GOTO opciones

:error2
ECHO	Esa DB no existe o letra incorrecta.
ECHO.
PAUSE
GOTO mangosdb

:error3
ECHO	Esa DB no existe o letra incorrecta.
ECHO.
PAUSE
GOTO trinity

:error4
ECHO	Elecciขn de Core incorrecta.
ECHO.
PAUSE
GOTO wvolcado

:error5
ECHO	Elecciขn de Core incorrecta.
ECHO.
PAUSE
GOTO rvolcado

:error10
ECHO	No se ha realizado ningฃn volcado de la DB.
ECHO.
PAUSE
GOTO opciones

:salir
CLS
ECHO.
ECHO	 Staff de Eswow2ฉ:
ECHO ===================================================
ECHO	    Gravitaferro
ECHO	        Trargos
ECHO	             Mrbytes
ECHO	                  Durotar
ECHO.	                    
EcHO.
ECHO	 Miembros retirados del Staff, veteranos de guerra.
ECHO - - - - - - - - - - - - - - - - - - - - - - - - - -
ECHO	    Eragon - Nomad
ECHO.
ECHO.
ECHO	 Y nuestro agradecimiento al precursor.
ECHO	                                         CrazyEs
ECHO.
ECHO	      --- Gracias por confiar en Eswow2ฉ ---
ECHO.
PAUSE