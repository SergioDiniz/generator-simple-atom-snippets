class SnippetsController < ApplicationController
  def index
  end

  def create
    @snippets = post_params.split(/, /)
    render action: 'index'
  end

  private

  def post_params
    params.require(:body)
  end
end
