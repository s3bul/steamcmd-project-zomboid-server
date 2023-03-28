# steamcmd-project-zomboid-server

* https://pzwiki.net/wiki/Dedicated_Server#Linux
* https://pzwiki.net/wiki/Startup_parameters

1. Create user `pzuser`
2. Run script as root `USER_UID=pzuser ./init.sh`
3. Update file `./server/swarm.yml`
4. In `server` path run command `docker stack deploy -c swarm.yml pz`
