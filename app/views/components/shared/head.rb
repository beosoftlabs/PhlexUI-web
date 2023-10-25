# frozen_string_literal: true

class Shared::Head < ApplicationComponent
    include Phlex::Rails::Layout

    def template
        head do
            title { "PhlexUI - Component Library" }
            meta name: "viewport", content: "width=device-width,initial-scale=1"
            csp_meta_tag
            csrf_meta_tags
            stylesheet_link_tag "https://api.fontshare.com/v2/css?f[]=general-sans@701,200,500,301,201,300,601,600,401,501,400,700&display=swap", data_turbo_track: "reload"
            stylesheet_link_tag "application", data_turbo_track: "reload"
            javascript_include_tag "application", data_turbo_track: "reload", defer: true
        end
    end
end
