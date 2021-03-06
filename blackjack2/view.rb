##### VIEW #####
class BJ_View

    def self.staggered_display(array, delay)
        array.each() {|item|
            puts item
            sleep(delay)
        }
    end

    def self.menu_display
        staggered_display([
            "\n__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-",
            "               ╔╗ ┬  ┌─┐┌─┐┬┌─   ╦┌─┐┌─┐┬┌─",
            "               ╠╩╗│  ├─┤│  ├┴┐   ║├─┤│  ├┴┐",
            "               ╚═╝┴─┘┴ ┴└─┘┴ ┴  ╚╝┴ ┴└─┘┴ ┴",
            "__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-",
            "menu/help ------------------> print this menu for reference",
            "h, -h",
            "",
            "play game -----------------------> start playing blackjack",
            "play, p, -p",
            "",
            "rules ---------------------------------> learn how to play",
            "r, -r",
            "",
            "history ---------------------> see how good you really are",
            "his, -his",
            "",
            "quit/exit -------------------------> return to main screen",
            " q,-q",
            "__________________________________________________________",
        ], 0.1)
    end

    def self.card_display(array)
        case(array.length)
        when(1)
            puts ".------.  .------.  \n|#{array[0].icon}.--. |  ||||||||  \n| :/\\: |  ||:/\\:||  \n| :\\/: |  ||:\\/:||  \n| '--'#{array[0].icon}|  ||||||||  \n`------'  `------'"
        when(2)
            puts ".------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  \n| :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  \n`------'  `------'"
        when(3)   
            puts ".------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  \n`------'  `------'  `------'"
        when(4)    
            puts ".------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  \n`------'  `------'  `------'  `------'"
        when(5)
            puts".------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  \n`------'  `------'  `------'  `------'  `------'"
        when(6)
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"
        
        when(7)    
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"

            puts ".------.  \n|#{array[6].icon}.--. |  \n| :/\\: |  \n| :\\/: |  \n| '--'#{array[6].icon}|  \n`------'"

        when(8)
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"

            puts ".------.  .------.  \n|#{array[6].icon}.--. |  |#{array[7].icon}.--. |  \n| :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  \n| '--'#{array[6].icon}|  | '--'#{array[7].icon}|  \n`------'  `------'"

        when(9)
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"

            puts ".------.  .------.  .------.  \n|#{array[6].icon}.--. |  |#{array[7].icon}.--. |  |#{array[8].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[6].icon}|  | '--'#{array[7].icon}|  | '--'#{array[8].icon}|  \n`------'  `------'  `------'"

        when(10)
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"

            puts ".------.  .------.  .------.  .------.  \n|#{array[6].icon}.--. |  |#{array[7].icon}.--. |  |#{array[8].icon}.--. |  |#{array[9].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[6].icon}|  | '--'#{array[7].icon}|  | '--'#{array[8].icon}|  | '--'#{array[9].icon}|  \n`------'  `------'  `------'  `------'"

        when(11)
            puts".------.  .------.  .------.  .------.  .------.  .------.  \n|#{array[0].icon}.--. |  |#{array[1].icon}.--. |  |#{array[2].icon}.--. |  |#{array[3].icon}.--. |  |#{array[4].icon}.--. |  |#{array[5].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[0].icon}|  | '--'#{array[1].icon}|  | '--'#{array[2].icon}|  | '--'#{array[3].icon}|  | '--'#{array[4].icon}|  | '--'#{array[5].icon}|  \n`------'  `------'  `------'  `------'  `------'  `------'"

            puts".------.  .------.  .------.  .------.  .------.  \n|#{array[6].icon}.--. |  |#{array[7].icon}.--. |  |#{array[8].icon}.--. |  |#{array[9].icon}.--. |  |#{array[10].icon}.--. |  \n| :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  | :/\\: |  \n| :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  | :\\/: |  \n| '--'#{array[6].icon}|  | '--'#{array[7].icon}|  | '--'#{array[8].icon}|  | '--'#{array[9].icon}|  | '--'#{array[10].icon}|  \n`------'  `------'  `------'  `------'  `------'"
        end
    end
  
    def self.hit_display
        puts "\n__________________________________________________________"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts " Dealer                Total: #{BJ_State.dealer_total()}                  Cards:#{BJ_State.dealer_cards().length == 1? BJ_Model.deck_length() - 1 : BJ_Model.deck_length()}"
        puts "=========================================================="
        BJ_View.card_display(BJ_State.dealer_cards())
        puts ""
        puts "                       $$$ #{BJ_State.get_bet()} $$$"
        puts ""
        BJ_View.card_display(BJ_State.player_cards())
        puts "__________________________________________________________"
        puts " Player                Total: #{BJ_State.player_total()}                      $#{BJ_Model.get_player_money()}"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts "|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|"
        puts "-_-_Commands: hit / stand                            stop"
    end

    def self.dealer_turn_display
        puts "\n__________________________________________________________"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts " Dealer                Total: #{BJ_State.dealer_total()}                  Cards:#{BJ_State.dealer_cards().length == 1? BJ_Model.deck_length() - 1 : BJ_Model.deck_length()}"
        puts "=========================================================="
        BJ_View.card_display(BJ_State.dealer_cards())
        puts ""
        puts "    DEALERS TURN      $$$ #{BJ_State.get_bet()} $$$      DEALERS TURN "
        puts ""
        BJ_View.card_display(BJ_State.player_cards())
        puts "__________________________________________________________"
        puts " Player                Total: #{BJ_State.player_total()}                      $#{BJ_Model.get_player_money()}"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts "|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|"
        puts "-_-_Commands: hit / stand                            stop"
    end

    def self.make_bet_display
        puts "\n__________________________________________________________"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts "Dealer                 Score: #{BJ_Model.dealer_score()}                  Cards:#{BJ_State.dealer_cards().length == 1? BJ_Model.deck_length() - 1 : BJ_Model.deck_length()}"
        puts "=========================================================="
        puts ""
        puts "               - - - - - - -- -- -- --- --- --------------"
        puts "__________________________________________________________"
        puts "       ___  __   ___  _________   ___  __________\n       / _ \\/ /  / _ |/ ___/ __/  / _ )/ __/_  __/\n      / ___/ /__/ __ / /__/ _/   / _  / _/  / /\n     /_/  /____/_/ |_\\___/___/  /____/___/ /_/"  
        puts "__________________________________________________________"
        puts ""
        puts "-------------- --- --- -- -- -- - - - - - -"
        puts "__________________________________________________________"
        puts "Player                 Score: #{BJ_Model.player_score()}                      $#{BJ_Model.get_player_money()}"
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts "|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|"
        puts "Enter your bet below                                 stop"
    end

    def self.rules_display
        staggered_display([
            "\n__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-",
            "              ╔═╗┌─┐┌┬┐┌─┐  ╦═╗┬ ┬┬  ┌─┐┌─┐",
            "              ║ ╦├─┤│││├┤   ╠╦╝│ ││  ├┤ └─┐",
            "              ╚═╝┴ ┴┴ ┴└─┘  ╩╚═└─┘┴─┘└─┘└─┘",
            "__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-",
            " FIRST: make a 'bet' to start game",
            "",
            " SECOND: decide whether to:",
            "         'hit' => get another card",
            "         'stand' => let dealer draw",
            "",
            " THIRD: 'stand' when you think your card total is high enough",
            "",
            " FOURTH: wait for the dealer to draw and determine the winner",
            "",
            " FIFTH:  enter \"stop\" to leave game",
            "",
            " * If your cards total more than 21, then you lose the game",
            "",
            " * If your score goes above 21, but you have ace in play,",
            "    that ace will count for 1 instead of 11",
            "",
            " CARD VALUES: Number Cards: their number value",
            "",
            "                Face Cards: 10",
            "",
            "                      Aces: 11 or 1",
            "__________________________________________________________",
        ], 0.1)
    end

    def self.history_display
        staggered_display([
            "\n__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-",
            "                   ╦ ╦┬┌─┐┌┬┐┌─┐┬─┐┬ ┬",
            "                   ╠═╣│└─┐ │ │ │├┬┘└┬┘",
            "                   ╩ ╩┴└─┘ ┴ └─┘┴└─ ┴ ",
            "__________________________________________________________",
            "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        ], 0.1)
        BJ_Model.get_history().each_with_index() {|item, index|
            staggered_display([
            "#{index + 1}) Winner: #{item[:winner]}",
            "                  _________Player_________",
            "                    Cards Total : #{item[:p_total]}",
            "                    Player Score: #{item[:p_score]}",
            "                  _________Dealer_________",
            "                    Cards Total : #{item[:d_total]}",
            "                    Dealer Score: #{item[:d_score]}",
            ""
                ], 0.1)   
        }
        puts"\n__________________________________________________________"
    end

    def self.not_quite_there
        puts"\n:*:*:*::*:* You Aren't Quite There Yet :*:*:*:*:*:"
    end

    def self.dealers_turn()
        puts "\n:*:*:*::*:*:*::*:* Dealers Turn :*:*:*::*:*:*::*:*"
    end

    def self.blackjack
        staggered_display([
            "               ___  __   ___  _______ __  ",
            "              / _ )/ /  / _ |/ ___/ //_/  ",
            "             / _  / /__/ __ / /__/ ,<     ",
            "            /____/____/_/_|_\\___/_/|_|    ",
            "              __ / / _ |/ ___/ //_/       ",
            "             / // / __ / /__/ ,<          ",
            "             \\___/_/ |_\\___/_/|_|         ",
            "",
        ], 0.3)
    end

    def self.push_tie
        staggered_display([
            "                  ______________",
            "                 /_  __/  _/ __/",
            "                  / / _/ // _/  ",
            "                 /_/ /___/___/  ",
            "",
        ], 0.3)
    end

    def self.player_wins
        staggered_display([
            "      ___  __                    _      ___        ",
            "     / _ \\/ /__ ___ _____ ____  | | /| / (_)__  ___",
            "    / ___/ / _ `/ // / -_) __/  | |/ |/ / / _ \\(_-<",
            "   /_/  /_/\\_,_/\\_, /\\__/_/     |__/|__/_/_//_/___/",
            "               /___/                               ",
        ], 0.3)
    end

    def self.dealer_wins
        staggered_display([
            "      ___           __          _      ___        ",
            "     / _ \\___ ___ _/ /__ ____  | | /| / (_)__  ___",
            "    / // / -_) _ `/ / -_) __/  | |/ |/ / / _ \\(_-<",
            "   /____/\\__/\\_,_/_/\\__/_/     |__/|__/_/_//_/___/",
        ], 0.3)
    end

    def self.command_not_recognized
        puts "\n... Command Not Recognized ..."
    end

    def self.stop_game_first
        puts"\n:*:*:*::*:*:*::*: Stop Game First :*:*:*::*::*:*:*:"
    end
    
    def self.already_playing
        puts"\n:*:*:*::*:*:* You Are Already Playing :*:*:*:*:*:*:"
    end
    
    def self.not_playing_yet
        puts"\n:*:*:*::*:*:* You Aren't Playing Yet :*:*:*:*:*:*:"
    end

    def self.bet_prompt
        print "(Cash $#{BJ_Model.get_player_money()}): "
    end

    def self.get_emit_input()
        print("_-_BlackJack: ")
        input = gets.strip();
        input.downcase!()
        BJ_Emitter.emit(input)
    end
end