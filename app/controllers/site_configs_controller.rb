class SiteConfigsController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'fieldapp1'
  before_action :set_site_config, only: %i[ edit update ]

  def edit
  end

  def update
    respond_to do |format|
      if @site_config.update(site_config_params)
        format.html { redirect_to edit_site_config_path(@site_config), notice: "Config was successfully updated." }
        format.json { render :edit, status: :ok, site_config: @site_config }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_config.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def site_config_params
    params.require(:site_config).permit(:main_image_path)
  end

  def set_site_config
    @site_config = SiteConfig.first
  end
end
