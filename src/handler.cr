require "http/server/handler"
require "./server.cr"

class HTTP::GitHandler
  include HTTP::Handler

  def call(context)
    if context.request.path.includes? ".git"
      git = GitServer.new(context)
      git.call
    else
      call_next(context)
    end
  end
end
