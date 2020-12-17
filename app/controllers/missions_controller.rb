class MissionsController < ApplicationController
    def new
        @mission = Mission.new
        @scientists = Scientist.all
        @planets = Planet.all
    end

    def create
        mission = Mission.create(mission_params)
        if mission.valid?
            redirect_to scientist_path(mission.scientist)
        else
            flash[:errors_array] = mission.errors.full_messages
            redirect_to new_mission_path(mission)
        end
    end

    private

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end

end
