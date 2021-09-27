class SightingsController < ApplicationController

    def index
        sightings = Sight.all
        render json: SightingSerializer.new(sightings).to_serialized_json
    end

    def show
        sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sightings).to_serialized_json
    end
end
