#!/bin/bash

echo "Hola buenos dias" 
read -p  "Quieres continuar con la converseishon" resp

resp=${resp,,}

if [[  $resp == "si" ]]; then
	echo "ok te cuento un chiste dejame buscarlo"

	else
	echo "ok, no hay problema"

fi


