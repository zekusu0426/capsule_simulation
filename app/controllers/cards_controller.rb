class CardsController < InheritedResources::Base

  private

    def card_params
      params.require(:card).permit(:name, :name_kana, :character_id, :capsule_id, :performance, :technic, :visual, :introduction)
    end
end

