module PrettyMagic
  class Icons
    def self.mana_symbols(symbolText, options = {})
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
        
        puts easy_match
        puts split_match
        
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
    
    def self.card_symbols(symbolText, options = {})
        options = {cost: false, shadow: false, size: 1, fixed_width: false, loyalty: nil, saga_number: nil}.merge(options)

        prettySymbol = ""
        loyalty = options[:loyalty]
        saga_number = options[:saga_number]
        
        case symbolText.upcase
          when'{T}','{TAP}'
            prettySymbol ='ms-tap'
          when'{Q}','{UNTAP}'
            prettySymbol ='ms-untap'
          when '{TAP-ALT}'
            prettySymbol ='ms-tap-alt'
          when'{CHAOS}'
            prettySymbol ='ms-chaos'
          when '{ARTIFACT}'
            prettySymbol = 'ms-artifact'
          when '{CREATURE}'
            prettySymbol = 'ms-creature'
          when '{ENCHANTMENT}'
            prettySymbol = 'ms-enchantment'
          when '{INSTANT}'
            prettySymbol = 'ms-instant'
          when '{LAND}'
            prettySymbol = 'ms-land'
          when'{PW}','{PLANESWALKER}'
            prettySymbol ='ms-planeswalker'
          when'{SORCERY}'
            prettySymbol = 'ms-sorcery'
          when '{MULTIPLE}'
            prettySymbol = 'ms-multiple'
          when '{FLASHBACK}'
            prettySymbol = 'ms-flashback'
          when '{LOYALTY-UP}'
            prettySymbol = ((0...20) === loyalty) ? "ms-loyalty-up ms-loyalty-#{loyalty}" : 'ms-loyalty-up'
          when '{LOYALTY-DOWN}'
            prettySymbol = ((0...20) === loyalty) ? "ms-loyalty-down ms-loyalty-#{loyalty}" : 'ms-loyalty-down'
          when '{LOYALTY-ZERO}'
            prettySymbol = ((0...20) === loyalty) ? "ms-loyalty-zero ms-loyalty-#{loyalty}" : 'ms-loyalty-zero'
          when '{LOYALTY-START}'
            prettySymbol = ((0...20) === loyalty) ? "ms-loyalty-start ms-loyalty-#{loyalty}" : 'ms-loyalty-start'
          when '{DFC-DAY}'
            prettySymbol = 'ms-dfc-day'
          when '{DFC-NIGHT}'
            prettySymbol = 'ms-dfc-night'
          when '{DFC-SPARK}'
            prettySymbol = 'ms-dfc-spark'
          when '{DFC-IGNITE}'
            prettySymbol = 'ms-dfc-ignite'
          when '{DFC-MOON}'
            prettySymbol = 'ms-dfc-moon'
          when '{DFC-EMRAKUL}'
            prettySymbol = 'ms-dfc-emrakul'
          when '{DFC-ENCHANTMENT}'
            prettySymbol = 'ms-dfc-enchantment'
          when '{POWER}'
            prettySymbol = 'ms-power'
          when '{TOUGHNESS}'
            prettySymbol = 'ms-toughness'
          when '{ARTIST-BRUSH}'
            prettySymbol = 'ms-artist-brush'
          when '{ARTIST-NIB}'
            prettySymbol = 'ms-artist-nib'
          when '{SAGA}'
            prettySymbol = ((0...5) === saga_number) ? "ms-saga ms-saga-#{saga_number}" : 'ms-saga'
          when'{ACORN}'
            prettySymbol ='ms-acorn'
          else
            return symbolText
        end
        
        i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
    end
    
    def self.guild_symbols(symbolText, options = {})
        
    end
    
    def self.poleis_symbols(symbolText, options = {})
    
    end
    
    private
    
    def self.i_tag(inner_classes)
        '<i class="ms ' + inner_classes +'"></i>'
    end
    
    def self.optional_classes(cost, shadow, size, fixed_width)
        
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
  end
end