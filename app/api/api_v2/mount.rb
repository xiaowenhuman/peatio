require_relative 'errors'

module APIv2
  class Mount < Grape::API
    prefix 'api'
    version 'v2', using: :path

    format :json
    default_format :json

    helpers ::APIv2::Helpers

    include ExceptionHandlers

    do_not_route_head!
    do_not_route_options!

    mount Orders
  end
end