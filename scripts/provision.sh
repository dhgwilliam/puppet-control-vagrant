yum -y update
if ! grep '/opt/puppet/bin' /root/.bashrc 
  then echo 'export PATH=$PATH:/opt/puppet/bin' >> /root/.bashrc
fi
if ! grep 'set -o vi' /root/.bashrc ; then echo 'set -o vi' >> /root/.bashrc; fi
