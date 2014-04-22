BRANCH=`git --git-dir=/vagrant/.git rev-parse --abbrev-ref HEAD`

if service pe-puppet status; then
  service pe-puppet stop
fi

if ps ax | grep -q '/opt/puppet/bin/puppet [a]gent'; then
  PID=`pgrep puppet`
  tail -f /var/log/messages --pid=$PID
else
  /opt/puppet/bin/puppet agent -t --environment $BRANCH; echo
fi
