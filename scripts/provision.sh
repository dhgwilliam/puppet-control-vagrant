yum -y update
if ! grep -q '/opt/puppet/bin' /root/.bashrc 
  then echo 'export PATH=$PATH:/opt/puppet/bin' >> /root/.bashrc
fi
if ! grep -q 'set -o vi' /root/.bashrc ; then echo 'set -o vi' >> /root/.bashrc; fi
