#!/bin/sh

echo "Start to make Nord manual"

pandoc --template tex/nord-template.latex -V lang=russian -o nord-manual.pdf nord/01-01-tech-desc.md nord/01-02-features.md nord/01-03-specification.md nord/01-04-package.md nord/01-05-components.md nord/01-06-frame.md nord/03-01-arm-general.md nord/03-02-arm-tm-key.md nord/03-03-arm-rx-6.md nord/03-04-arm-rxn-400.md nord/04-01-installation.md nord/04-02-smoke-zones.md nord/04-03-install-gsm.md nord/05-01-config-general.md nord/05-02-config-driver.md nord/05-03-config-version.md nord/05-04-config-info.md nord/05-05-config-toolbar.md nord/05-06-config-zones.md nord/05-12-config-radio.md nord/07-01-remote-intro.md nord/07-02-remote-setup.md nord/07-03-remote-config.md nord/07-04-remote-firmware.md nord/08-01-codes-latex.md 

# pandoc --template tex/nord-template.latex -V lang=russian -o nord-manual.pdf nord/05-01-config-general.md nord/05-04-config-info.md nord/05-05-config-toolbar.md nord/05-06-config-zones.md nord/05-12-config-radio.md 

echo "Stop to make Nord manual"


# echo "Start to make Sergeant manual"

# pandoc --template tex/sergeant-template.latex -V lang=russian -o sergeant-manual.pdf sergeant/01-01-purpose.md sergeant/01-02-specification.md sergeant/01-03-package.md sergeant/01-04-composition.md sergeant/01-05-function.md

# echo "Stop to make Sergeant manual"


