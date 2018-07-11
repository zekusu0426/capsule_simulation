class CharactersController < InheritedResources::Base

  private

    def character_params
      params.require(:character).permit(:first_name, :first_name_kana, :last_name, :last_name_kana, :band_id, :introduction)
    end
end

