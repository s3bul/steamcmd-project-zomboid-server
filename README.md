# steamcmd-project-zomboid-server

* https://pzwiki.net/wiki/Dedicated_Server#Linux
* https://pzwiki.net/wiki/Startup_parameters

1. Create user `pzuser` and add to docker group `usermod -aG docker pzuser`
2. Run script as root `USER_UID=pzuser ./init.sh`
3. Switch user `su - pzuser`
4. Update file `./server/swarm.yml`
5. Run command `docker stack deploy -c ./server/swarm.yml pz`
