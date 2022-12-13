# frozen_string_literal: true

require 'json'
require 'net/http'

module OPNsenseAPI
  class Client
    BASE_PATH = '/api'

    attr_reader :host, :api_key, :api_secret, :options

    def initialize(host, api_key, api_secret, **options)
      @host = host.is_a?(URI) ? host : URI(host)
      @api_key = api_key
      @api_secret = api_secret
      @options = {
        verify_ssl: options[:verify_ssl] || true,
        debug: options[:debug] || false,
        **options
      }
    end

    def captive_portal
      Core::CaptivePortal.new(self)
    end

    def core
      Core::Core.new(self)
    end

    def cron
      Core::Cron.new(self)
    end

    def diagnostics
      Core::Diagnostics.new(self)
    end

    def firewall
      Core::Firewall.new(self)
    end

    def ids
      Core::IDS.new(self)
    end

    def interfaces
      Core::Interfaces.new(self)
    end

    def ipsec
      Core::IPSec.new(self)
    end

    def monit
      Core::Monit.new(self)
    end

    def open_vpn
      Core::OpenVPN.new(self)
    end

    def proxy
      Core::Proxy.new(self)
    end

    def routes
      Core::Routes.new(self)
    end

    def syslog
      Core::Syslog.new(self)
    end

    def traffic_shaping
      Core::TrafficShaping.new(self)
    end

    def unbound
      Core::Unbound.new(self)
    end

    def get(path, params = {})
      request = Net::HTTP::Get.new("#{BASE_PATH}#{path}")
      setup_request(request)
      request.params = params if params.any?
      handle_response(http.request(request))
    end

    def post(path, body = {})
      request = Net::HTTP::Post.new("#{BASE_PATH}#{path}")
      setup_request(request)
      request.body = body.to_json if body.any?
      handle_response(http.request(request))
    end

    private

    def http
      return @http if @http

      @http = Net::HTTP.new(host.host, host.port)
      @http.use_ssl = host.scheme == 'https'
      @http.verify_mode = OpenSSL::SSL::VERIFY_NONE unless @options[:verify_ssl]
      @http.set_debug_output($stdout) if @options[:debug]
      @http
    end

    # Set common params for all requests
    def setup_request(request)
      request.basic_auth(api_key, api_secret)
      request['User-Agent']   = "OPNsenseAPI/#{OPNsenseAPI::VERSION}"
      request['Content-Type'] = 'application/json' if request.is_a?(Net::HTTP::Post)
      request['Accept']       = 'application/json'
    end

    def handle_response(response)
      if (100..299).include?(response.code.to_i)
        JSON.parse(response.body)
      else
        response
      end
    end
  end
end
