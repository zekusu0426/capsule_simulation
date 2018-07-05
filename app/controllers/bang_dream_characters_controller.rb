class BangDreamCharactersController < InheritedResources::Base

  private

    def bang_dream_character_params
      params.require(:bang_dream_character).permit(:name, :band_id)
    end
end

