### Autodl Irssi

Container for the autodl irssi plugin. Uses tmux. Due to a docker bug, I hacked
together a script to allow you to connect to the running tmux using `docker
exec`. See Usage below for how to do that.

## Usage

```
docker run \
	--name autodl-irssi \
	-d -e TERM \
	-v </path/to/watch/directory>:/home/user/watch:rw \
	-v </path/to/autodl/directory>:/home/user/.autodl:rw \
	jdelkins/autodl-irssi

docker exec -ti autodl-irssi /usr/bin/connect-irssi
```

When you detach from tmux with `<C-a>d`, the `tmux exec` command should
terminate and drop you back out of the container.
