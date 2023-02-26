if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pawanjaatpk/Auto-Filter-V50.git /Auto-Filter-V50
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V50
fi
cd /Auto-Filter-V50
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
