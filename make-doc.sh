#!/bin/sh

pandoc --template tex/nord-template.latex -V lang=russian -o nord-manual.pdf nord/01-00-arm-general.md nord/01-01-arm-tm-key.md nord/01-02-arm-rx-6.md nord/01-03-arm-rxn-400.md nord/01-04-arm-wrl-key.md nord/01-05-arm-myalarm.md nord/02-on-board-indication.md

pandoc --template tex/sergeant-template.latex -V lang=russian -o sergeant-manual.pdf sergeant/01-01-purpose.md sergeant/01-02-specification.md sergeant/01-03-package.md sergeant/01-04-composition.md sergeant/01-05-function.md
