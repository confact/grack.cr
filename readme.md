# Grack.cr

This is a idea of porting the `grack` gem in ruby to crystal to have a git backend server in crystal

What it is doing:
* all git stuff:
  * pull
  * push
  * fetch
  * and more

Auth should be possible by adding a basic http auth handler before the git handler in http.cr.

## Config
the configs that exist in this project are using ENV. So you can simple set them.

The configs are:
* `git_bin` - the path to the git binary, defaults to `git`
* `project_root` - path to the projects (where all git repos will be), defaults to `pwd` (current directory)

## How to
It can be used as a standalone server right away, by setting up the `http.cr` file with desirable port and address.

if you want to add this to your own code/application, add the handler to the http server handlers. I haven't tried if this work with let say Lucky, but my intention is to either make this work, or make another project that depends on this to make a shard that works in Lucky.

### Setup
1. compile http.cr with `crystal http.cr` or `crystal build http.cr` and then `./http`
2. create a bare git directory with the `.git` in the end of the directory name. Like `git init --bare test.git`
3. then publish a branch and push to it to the local origin. the url to the repo should be as example `http://localhost:8080/test.git`
4. should work.

You can move the classes in src (or require them) and use them in your own http server and change them if needed.


## Not done yet
* make receive_pack and upload_pack available based on git config. Now it is accepted always. Which is mostly what you want. But in some cases it is disabled.

## Maintainers
- Håkan Nylén (confact)
