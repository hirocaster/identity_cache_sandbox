class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  around_filter :identity_cache_memoization

  def identity_cache_memoization
    IdentityCache.cache.with_memoization{ yield }
  end
end
