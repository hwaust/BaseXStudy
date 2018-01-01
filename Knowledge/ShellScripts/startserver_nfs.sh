#! /bin/bash
java -Xmx5g -Xms5g -cp BaseX867.jar org.basex.BaseXServer -c "set mainmem on;create db xmark0.1 ../xmark0.1.xml"
