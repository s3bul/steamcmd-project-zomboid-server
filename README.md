# steamcmd-project-zomboid-server

* Base image https://github.com/s3bul/steamcmd
* https://pzwiki.net/wiki/Dedicated_Server#Linux
* https://pzwiki.net/wiki/Startup_parameters

1. Create user `pzuser` and add to docker group `usermod -aG docker pzuser`
2. Run script as root `USER_UID=pzuser ./init.sh`
3. Switch user `su - pzuser`
4. Update file `./server/swarm.yml`
5. Run command `docker stack deploy -c ./server/swarm.yml pz`

### Requirements
Remember, more players and mods need more CPU/vCPU and RAM. When you run server with docker swarm, you can change CPU and RAM limits in file `./server/swarm.yml`:
```yaml
    deploy:
      resources:
        limits:
          cpus: '4.0'
          memory: 8g
        reservations:
          cpus: '2.0'
          memory: 4g
```
and
```yaml
    environment:
      PZ_JVM_MEMORY_MIN: 4g
      PZ_JVM_MEMORY_MAX: 8g
```
