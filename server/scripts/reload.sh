# rebuild hie
./.stack-bin/gen-hie > hie.yaml
# Kill the currently running server
PID=$(lsof -t -i:3000)
TEMP_LOG_FILE=tmp.log
if [ ! -z "$PID" ]
then
    echo "Killing PID $PID"
    kill $PID
    while kill -0 $PID; do 
        echo "Waiting for exit..."
        sleep 1
    done
fi
# Rebuild & run the package
echo "Reloading..."
#screen -S serverreload -d -m stack run
stack build --fast
stack exec server-exe
echo "Done"