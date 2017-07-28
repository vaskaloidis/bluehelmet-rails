class DemosController < ApplicationController

  private

    def demo_params
      params.require(:demo).permit(:name, :description, :type, :file)
    end
end

