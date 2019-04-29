class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    include ReviewsHelper
    include FoodsHelper
end
