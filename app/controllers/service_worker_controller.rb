class ServiceWorkerController < ApplicationController
	protect_from_forgery except: :service_worker

  def service_worker
  end

  def manifest
  end

  def offline
  	render :layout => false
  end
end
