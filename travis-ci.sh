

set -e
echo "Устанавливаю версию OScript <$OSCRIPT_VERSION>"
curl -L https://github.com/oscript-library/ovm/releases/download/v1.0.0-RC15/ovm.exe --output ovm.exe

mono ovm.exe i $OSCRIPT_VERSION
mono ovm.exe u $OSCRIPT_VERSION

opm install 1testrunner; 
opm install 1bdd; 
opm install notify;
opm install coverage;

opm run coverage; 


