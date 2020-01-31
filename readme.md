# Grack.cr

This is a idea of porting the `grack` gem in ruby to crystal to have a git backend server in crystal

What it should do:
* all git stuff:
  * pull
  * push
  * fetch
  * and more
* auth

Auth should be possible by adding a basic http auth handler before the git handler in http.cr.

## Config
the configs that exist in this project are using ENV. So you can simple set them.

The configs are:
* `git_bin` - the path to the git binary, defaults to `git`
* `project_root` - path to the projects (where all git repos will be), defaults to `pwd` (current directory)

## How to
It can be used as a standalone server right away, by setting up the `http.cr` file with desirable port and address.

if you want to add this to your own code/application, add the handler to the http server handlers. I haven't tried if this work with let say Lucky, but my intention is to either make this work, or make another project that depends on this to make a shard that works in Lucky.


## Not done yet
* make receive_pack and upload_pack available based on git config. Now it is accepted always. Which is mostly what you want. But in some cases it is disabled.

## Maintainers
- Håkan Nylén (confact)
