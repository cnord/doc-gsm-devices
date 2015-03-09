#!/bin/sh

echo "Start to make Nord manual"

pandoc --template tex/nord-template.latex -V lang=russian -o nord-manual.pdf nord/03-00-arm-general.md nord/03-01-arm-tm-key.md nord/03-02-arm-rx-6.md nord/03-03-arm-rxn-400.md nord/03-04-arm-wrl-key.md nord/03-05-arm-myalarm.md nord/05-00-config-general.md nord/05-01-config-driver.md

echo "Stop to make Nord manual"


# echo "Start to make Sergeant manual"

# pandoc --template tex/sergeant-template.latex -V lang=russian -o sergeant-manual.pdf sergeant/01-01-purpose.md sergeant/01-02-specification.md sergeant/01-03-package.md sergeant/01-04-composition.md sergeant/01-05-function.md

# echo "Stop to make Sergeant manual"
