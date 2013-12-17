module IonicRailsEngine
=begin
  module ActionViewExtensions
    IONIC_VERSION = '0.9.17'
    OFFLINE = (::Rails.env.development? or ::Rails.env.test?)

    CDNS = {
      :ionic_js => {
        :default => "//ajax.googleapis.com/ajax/libs/ionic/#{IONIC_VERSION}/ionic.min.js"
      }
    }

    def ionic_js_url(name)
      return CDNS[:ionic_js][name]
    end

    def ionic_js_include_tag(name, options = {})
      options.reverse_merge! :local_copy => false

      ionicjs = 'ionic/ionic'
      inoicjs = ionicjs+'.min' if options.delete(:compressed)

      if OFFLINE and !options.delete(:force)
        options.delete(:local_copy) # not used in OFFLINE mode
        return javascript_include_tag(ionicjs, options)
      else
        local_copy = options.delete(:local_copy)
        j = [ javascript_include_tag(ionic_js_url(name), options) ]
        if local_copy
          j << javascript_tag("window.ionic || document.write(unescape('#{javascript_include_tag(ionicjs, options).gsub('<','%3C')}'))")
        end
        j.join("\n").html_safe
      end
    end
  end
=end

  class Engine < ::Rails::Engine
=begin
    initializer 'ionic-rails-engine.action_view' do |app|
      ActiveSupport.on_load(:action_view) do
        include IonicRailsEngine::ActionViewExtensions
      end
    end
=end
  end
end
