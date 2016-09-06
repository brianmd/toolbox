#!/bin/bash
docker run -it -v /home/core/code:/home/toolbox/code -v /home/core:/home/toolbox/home -v /:/host bach/mytoolbox
#docker run -it -v /home/core:/home/clojure -v /:/host bach/toolbox

