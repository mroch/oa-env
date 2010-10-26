module OmniAuth
  module Strategies
    class Env
      include OmniAuth::Strategy

      def initialize(app, options = {})
        super(app, options.delete(:name) || :env)
      end

      protected

      def request_phase
        @uid = env['REMOTE_USER']
        return fail!(:no_user) unless @uid

        @env['omniauth.auth'] = auth_hash
        @env['REQUEST_METHOD'] = 'GET'
        @env['PATH_INFO'] = "#{OmniAuth.config.path_prefix}/#{name}/callback"

        call_app!
      end

      def callback_phase
        fail!(:invalid_request)
      end

      def auth_hash
        OmniAuth::Utils.deep_merge(super, { 'uid' => @uid })
      end
    end
  end
end
