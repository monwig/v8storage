

set -e
echo "Устанавливаю версию OScript <$OSCRIPT_VERSION>"

curl https://oscript.io/downloads/latest/x64/onescript-engine_${OSCRIPT_VERSION}_all.deb > oscript.deb 
dpkg -i oscript.deb 
rm -f oscript.deb

opm install 1testrunner; 
opm install 1bdd; 
opm install notify;
opm install coverage;

opm run coverage; 


