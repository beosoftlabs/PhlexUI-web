# frozen_string_literal: true

class Docs::InputView < ApplicationView
  def template
    div(class: "max-w-2xl mx-auto w-full py-10 space-y-10") do
      render Docs::Header.new(title: "Input", description: "Displays a form input field or a component that looks like an input field.")

      render Docs::VisualCodeExample.new(title: 'Email', context: self) do
        <<~RUBY
          div(class: 'grid w-full max-w-sm items-center gap-1.5') do
            render PhlexUI::Input.new(type: "email", placeholder: "Email")
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'File', context: self) do
        <<~RUBY
          div(class: "grid w-full max-w-sm items-center gap-1.5") do
            render PhlexUI::Form::Item.new do
              render PhlexUI::Label.new(for: "picture") { "Picture" }
              render PhlexUI::Input.new(type: "file", id: "picture")
            end
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'Disabled', context: self) do
        <<~RUBY
          div(class: 'grid w-full max-w-sm items-center gap-1.5') do
            render PhlexUI::Input.new(disabled: true, type: "email", placeholder: "Email")
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'With label', context: self) do
        <<~RUBY
          div(class: 'grid w-full max-w-sm items-center gap-1.5') do
            render PhlexUI::Form::Item.new do
              render PhlexUI::Label.new(for: "email1") { "Email" }
              render PhlexUI::Input.new(type: "email", placeholder: "Email", id: "email1")
            end
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'With error', context: self) do
        <<~RUBY
          div(class: 'grid w-full max-w-sm items-center gap-1.5') do
            render PhlexUI::Form::Item.new do
              render PhlexUI::Label.new(for: "email1") { "Email" }
              render PhlexUI::Input.new(type: "email", placeholder: "Email", id: "email1", value: "joel@mail", error: "Invalid email address")
            end
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'With button', context: self) do
        <<~RUBY
          div(class: 'flex w-full max-w-sm items-center space-x-2') do
            render PhlexUI::Input.new(type: "email", placeholder: "Email")
            render PhlexUI::Button.new { "Subscribe" }
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'Form', context: self) do
        <<~RUBY
          render PhlexUI::Form.new(class: 'w-full max-w-sm') do |f|
            render PhlexUI::Form::Spacer.new do
              f.input "name", type: :string, placeholder: "Joel Drapper"
              f.input "email", type: :email, placeholder: "joel@drapper.me"
              f.button { "Update" }
            end
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: 'Form (Deconstructed)', context: self) do
        <<~RUBY
          render PhlexUI::Form.new(class: 'w-full max-w-sm') do
            render PhlexUI::Form::Spacer.new do
              render PhlexUI::Form::Item.new do
                render PhlexUI::Label.new(for: "username") { "Username" }
                render PhlexUI::Input.new(type: "string", placeholder: "Username", id: "username")
                render PhlexUI::Hint.new { "Can only contain letters, numbers, and underscores." }
              end
              render PhlexUI::Button.new(type: "submit") { "Submit" }
            end
          end
        RUBY
      end

      render Docs::InstallationInstructionsComingSoon.new
    end
  end
end
