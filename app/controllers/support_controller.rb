require "slimmer/headers"

class SupportController < ApplicationController
  include Rack::Geo::Utils
  include RootHelper

  before_filter :setup_slimmer_artefact
  before_filter :set_expiry
  before_filter :limit_to_html

  rescue_from AbstractController::ActionNotFound, :with => :error_404

  def index
  end

protected
  def setup_slimmer_artefact
    set_slimmer_dummy_artefact(:section_name => "Support", :section_link => "/support")
    set_slimmer_headers(format: 'support-pages')
  end
end