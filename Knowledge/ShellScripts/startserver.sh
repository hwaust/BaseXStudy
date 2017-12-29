#! /bin/bash
java -Xmx5g -Xms5g -cp BaseX867.jar org.basex.BaseXServer -c "set mainmem on;create db xmark$1 /home2/hao/xmark/xmark$1.xml"
