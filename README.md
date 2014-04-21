This repo should contain the Puppetfile, `hieradata`, and `site` folders.

To use this repo with vagrant:

1. Install vagrant and virtualbox.
2. `vagrant plugin install oscar`
3. `vagrant status`
6. `git checkout production`
7. `git pull --ff-only`
8. `vagrant up --no-provision master pe-agent`
9. `vagrant provision master pe-agent`
