module PrettyMagic
  module ManaIcons
    module ClassMethods
      def mana_symbols(symbolText, options = {})
          options = {cost: true, shadow: false, size: 1, fixed_width: false}.merge(options)
  
          prettySymbol = ""
          easy_match = ""
          split_match = ""
          
          # first handle special cases that are not that easy to convert
          case symbolText.upcase
            when '{½}', '{1/2}'
              prettySymbol = "ms-1-2"
            when '{∞}'
              prettySymbol = "ms-infinity"
            else
              prettySymbol = ""
          end
        
          # easy matches, just one letter or number
          easy_match = symbolText.upcase[/{(X|Y|Z|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|100|1000000|INFINITY|P|HW|HR|W|U|B|R|G|C|S|E)}/, 1]
          # split or hybrids
          split_match = symbolText.upcase[/{(W\/U|W\/B|B\/R|B\/G|U\/B|U\/R|R\/G|R\/W|G\/W|G\/U|2\/W|2\/U|2\/B|2\/R|2\/G|W\/P|U\/P|B\/P|R\/P|G\/P)}/, 1]
   
   
          unless easy_match.nil?
            prettySymbol = "ms-#{easy_match.downcase}"
          end
          unless split_match.nil?
            prettySymbol = "ms-#{split_match.downcase.gsub("/", "")}"
          end
          
          if prettySymbol == ""
            symbolText
          else
            i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
          end
          
      end
      
      def card_symbols(symbolText, options = {})
          options = {cost: false, shadow: false, size: 1, fixed_width: false, loyalty: nil, saga_number: nil}.merge(options)
  
          prettySymbol = ""
          loyalty = options[:loyalty]
          saga_number = options[:saga_number]
          
          case symbolText.upcase
            when '{T}'
              prettySymbol = "ms-tap"
            when '{Q}'
              prettySymbol = "ms-untap"
            when '{PW}'
              prettySymbol = "ms-planeswalker"
            else
              prettySymbol = ""
          end
          
          easy_match = symbolText.upcase[/{(TAP|UNTAP|TAP-ALT|CHAOS|ARTIFACT|CREATURE|ENCHANTMENT|INSTANT|LAND|PLANESWALKER|SORCERY|MULTIPLE|FLASHBACK|LOYALTY-UP|LOYALTY-DOWN|LOYALTY-ZERO|LOYALTY-START|DFC-DAY|DFC-NIGHT|DFC-SPARK|DFC-IGNITE|DFC-MOON|DFC-EMRAKUL|DFC-ENCHANTMENT|POWER|TOUGHNESS|ARTIST-BRUSH|ARTIST-NIB|SAGA|ACORN)}/, 1]
          unless easy_match.nil?
            prettySymbol = "ms-#{easy_match.downcase}"
          end
          
          if prettySymbol == ""
            symbolText
          else
            prettySymbol = ((0...20) === loyalty) ? prettySymbol + " ms-loyalty-#{loyalty}" : prettySymbol
            prettySymbol = ((0...5) === saga_number) ? prettySymbol + " ms-saga-#{saga_number}" : prettySymbol
            
            i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
          end
          
      end
      
      def guild_symbols(symbolText, options = {})
          options = {cost: false, shadow: false, size: 1, fixed_width: false}.merge(options)
  
          prettySymbol = ""
          
          
          guild_match = symbolText.upcase[/{(AZORIUS|BOROS|DIMIR|GOLGARI|GRUUL|IZZET|ORZHOV|RAKDOS|SELESNYA|SIMIC)}/, 1]
          unless guild_match.nil?
            prettySymbol = "ms-guild-#{guild_match.downcase}"
          end
          
          clan_match = symbolText.upcase[/{(ABZAN|JESKAI|MARDU|SULTAI|TEMUR|ATARKA|DROMOKA|KOLAGHAN|OJUTAI|SILUMGAR)}/, 1]
          unless clan_match.nil?
            prettySymbol = "ms-clan-#{clan_match.downcase}"
          end
          
          if prettySymbol == ""
            symbolText
          else
            i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
          end
      end
      
      def poleis_symbols(symbolText, options = {})
          options = {cost: false, shadow: false, size: 1, fixed_width: false}.merge(options)
  
          prettySymbol = ""
          
          
          poleis_match = symbolText.upcase[/{(SETESSA|AKROS|MELETIS)}/, 1]
          unless poleis_match.nil?
            # according to mana font docs, polis not poleis for css code
            prettySymbol = "ms-polis-#{poleis_match.downcase}"
          end
          
          if prettySymbol == ""
            symbolText
          else
            i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
          end
      end
      
      def add_icons_to_text(long_text, options = {})
        options = {cost: true, shadow: false, size: 1, fixed_width: false}.merge(options)
    
        pretty_text = long_text.gsub(/{.+?}/) { |symbolText|
            use_all_symbols(symbolText, { cost: options[:cost], shadow: options[:shadow], size: options[:size],
                fixed_width: options[:fixed_width]} )
          }
        
        pretty_text
      end
      
      private
      
      def i_tag(inner_classes)
          '<i class="ms ' + inner_classes +'"></i>'
      end
      
      def optional_classes(cost, shadow, size, fixed_width)
          
          class_text = ""
          
          if(cost)
            class_text += "ms-cost "
          end
          if(shadow)
            class_text += "ms-shadow "
          end
          if(size > 1)
            class_text += "ms-#{options[:size]}x "
          end
          if(fixed_width)
            class_text += "ms-fw "
          end 
          
          class_text
      end
      
      def use_all_symbols(symbolText, options = {})
        options = {cost: true, shadow: false, size: 1, fixed_width: false}.merge(options)
        replaced = mana_symbols(symbolText, { cost: options[:cost], shadow: options[:shadow], size: options[:size],
          fixed_width: options[:fixed_width]} )
        replaced = card_symbols(replaced, { cost: options[:cost], shadow: options[:shadow], size: options[:size],
          fixed_width: options[:fixed_width]} )
        replaced = guild_symbols(replaced, { cost: options[:cost], shadow: options[:shadow], size: options[:size],
          fixed_width: options[:fixed_width]} )
        replaced = poleis_symbols(replaced, { cost: options[:cost], shadow: options[:shadow], size: options[:size],
          fixed_width: options[:fixed_width]} )
        replaced
        
      end
    end
    
    extend ClassMethods
    
  end
end