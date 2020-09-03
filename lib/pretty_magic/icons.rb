module PrettyMagic
  class Icons
    def self.mana_symbols(symbolText, options = {})
        options = {cost: true, shadow: false, size: 1, fixed_width: false}.merge(options)

        prettySymbol = ""
      
        case symbolText
            when'{X}'
              prettySymbol ='ms-x'
            when'{Y}'
              prettySymbol ='ms-y'
            when'{Z}'
              prettySymbol ='ms-z'
            when'{0}'
              prettySymbol ='ms-0'
            when'{½}','{1/2}'
              prettySymbol ='ms-1-2'
            when'{1}'
              prettySymbol ='ms-1'
            when'{2}'
              prettySymbol ='ms-2'
            when'{3}'
              prettySymbol ='ms-3'
            when'{4}'
              prettySymbol ='ms-4'
            when'{5}'
              prettySymbol ='ms-5'
            when'{6}'
              prettySymbol ='ms-6'
            when'{7}'
              prettySymbol ='ms-7'
            when'{8}'
              prettySymbol ='ms-8'
            when'{9}'
              prettySymbol ='ms-9'
            when'{10}'
              prettySymbol ='ms-10'
            when'{11}'
              prettySymbol ='ms-11'
            when'{12}'
              prettySymbol ='ms-12'
            when'{13}'
              prettySymbol ='ms-13'
            when'{14}'
              prettySymbol ='ms-14'
            when'{15}'
              prettySymbol ='ms-15'
            when'{16}'
              prettySymbol ='ms-16'
            when'{17}'
              prettySymbol ='ms-17'
            when'{18}'
              prettySymbol ='ms-18'
            when'{19}'
              prettySymbol ='ms-19'
            when'{20}'
              prettySymbol ='ms-20'
            when'{100}'
              prettySymbol ='ms-100'
            when'{1000000}'
              prettySymbol ='ms-1000000'
            when'{∞}','{infinity}'
              prettySymbol ='ms-infinity'
            when'{W/U}'
              prettySymbol ='ms-wu'
            when'{W/B}'
              prettySymbol ='ms-wb'
            when'{B/R}'
              prettySymbol ='ms-br'
            when'{B/G}'
              prettySymbol ='ms-bg'
            when'{U/B}'
              prettySymbol ='ms-ub'
            when'{U/R}'
              prettySymbol ='ms-ur'
            when'{R/G}'
              prettySymbol ='ms-rg'
            when'{R/W}'
              prettySymbol ='ms-rw'
            when'{G/W}'
              prettySymbol ='ms-gw'
            when'{G/U}'
              prettySymbol ='ms-gu'
            when'{2/W}'
              prettySymbol ='ms-2w'
            when'{2/U}'
              prettySymbol ='ms-2u'
            when'{2/B}'
              prettySymbol ='ms-2b'
            when'{2/R}'
              prettySymbol ='ms-2r'
            when'{2/G}'
              prettySymbol ='ms-2g'
            when'{P}'
              prettySymbol ='ms-p'
            when'{W/P}'
              prettySymbol ='ms-wp'
            when'{U/P}'
              prettySymbol ='ms-up'
            when'{B/P}'
              prettySymbol ='ms-bp'
            when'{R/P}'
              prettySymbol ='ms-rp'
            when'{G/P}'
              prettySymbol ='ms-gp'
            when'{HW}'
              prettySymbol ='ms-hw'
            when'{HR}'
              prettySymbol ='ms-hr'
            when'{W}'
              prettySymbol ='ms-w'
            when'{U}'
              prettySymbol ='ms-u'
            when'{B}'
              prettySymbol ='ms-b'
            when'{R}'
              prettySymbol ='ms-r'
            when'{G}'
              prettySymbol ='ms-g'
            when'{C}'
              prettySymbol ='ms-c'
            when'{S}'
              prettySymbol ='ms-s'
            else
              return symbolText
            end
            
            i_tag(prettySymbol + ' ' + optional_classes(options[:cost], options[:shadow], options[:size], options[:fixed_width]))
    end
    
    def self.card_symbols(symbolText, options = {})
        case symbolText
        when'{T}','{tap}'
              prettySymbol ='ms-tap'
            when'{Q}','{untap}'
              prettySymbol ='ms-untap'
            when'{E}'
              prettySymbol ='ms-e'
            when'{PW}'
              prettySymbol ='ms-planeswalker'
            when'{CHAOS}'
              prettySymbol ='ms-chaos'
        end
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