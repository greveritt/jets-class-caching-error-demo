# frozen_string_literal: true

class DemoController < ApplicationController
  def index
    render json: DemoUtility.printable_strings
  end
end
