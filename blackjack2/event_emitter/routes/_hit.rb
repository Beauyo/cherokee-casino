bj_hit = -> {
    ##### ABSTRACTED FUNCS #####
    def reset_game_state
        BJ_State.reset_bet()
        BJ_State.reset_cards()
        BJ_State.reset_totals()
        BJ_Model.reset_deck()
        sleep(5)
        BJ_View.make_bet_display()
    end

    def give_player_card
        card = BJ_Model.remove_card()
        BJ_State.add_player_card(card)
        BJ_State.add_player_total(card.value)
        BJ_State.inc_player_aces() if(card.icon == "A")
        BJ_State.check_player_aces()
    end

    def handle_hit
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
            return nil
        end

        give_player_card()
        player_score = BJ_State.player_total()

        if(player_score > 21)
            BJ_Model.inc_dealer_score()
            BJ_View.main_game_display()
            p "!! ...DEALER WINS... !!"
            reset_game_state()
        else
            BJ_View.main_game_display()
        end

    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("hit") { handle_hit() }
}.()