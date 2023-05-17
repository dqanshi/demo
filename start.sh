if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dqanshi/demo.git /demo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /demo
fi
cd /demo
pip3 install -U -r requirements.txt
echo "Starting snow white ...."
python3 bot.py
