module PrettyMagic
  class Icons
    def self.mana(symbolText, options = {})
        options = {cost: true, shadow: false, size: 1, fixed_width: false}.merge(options)

        prettySymbol = ""
        classText = ""
        
        if(options[:cost])
          classText += "ms-cost "
        end
        if(options[:shadow])
          classText += "ms-shadow "
        end
        if(options[:size] > 1)
          classText += "ms-#{options[:size]}x "
        end
        if(options[:fixed_width])
          classText += "ms-fw "
        end
        
        
        case symbolText
            when '{T}'
              prettySymbol = '<i class="ms ms-tap ' + classText + '"></i>'
            when '{Q}'
              prettySymbol = '<i class="ms ms-untap ' + classText + '"></i>'
            when '{E}'
              prettySymbol = '<i class="ms ms-e ' + classText + '"></i>'
            when '{PW}'
              prettySymbol = '<i class="ms ms-planeswalker ' + classText + '"></i>'
            when '{CHAOS}'
              prettySymbol = '<i class="ms ms-chaos ' + classText + '"></i>'
            when '{X}'
              prettySymbol = '<i class="ms ms-x ' + classText + '"></i>'
            when '{Y}'
              prettySymbol = '<i class="ms ms-y ' + classText + '"></i>'
            when '{Z}'
              prettySymbol = '<i class="ms ms-z ' + classText + '"></i>'
            when '{0}'
              prettySymbol = '<i class="ms ms-0 ' + classText + '"></i>'
            when '{½}'
              prettySymbol = '<i class="ms ms-1-2 ' + classText + '"></i>'
            when '{1}'
              prettySymbol = '<i class="ms ms-1 ' + classText + '"></i>'
            when '{2}'
              prettySymbol = '<i class="ms ms-2 ' + classText + '"></i>'
            when '{3}'
              prettySymbol = '<i class="ms ms-3 ' + classText + '"></i>'
            when '{4}'
              prettySymbol = '<i class="ms ms-4 ' + classText + '"></i>'
            when '{5}'
              prettySymbol = '<i class="ms ms-5 ' + classText + '"></i>'
            when '{6}'
              prettySymbol = '<i class="ms ms-6 ' + classText + '"></i>'
            when '{7}'
              prettySymbol = '<i class="ms ms-7 ' + classText + '"></i>'
            when '{8}'
              prettySymbol = '<i class="ms ms-8 ' + classText + '"></i>'
            when '{9}'
              prettySymbol = '<i class="ms ms-9 ' + classText + '"></i>'
            when '{10}'
              prettySymbol = '<i class="ms ms-10 ' + classText + '"></i>'
            when '{11}'
              prettySymbol = '<i class="ms ms-11 ' + classText + '"></i>'
            when '{12}'
              prettySymbol = '<i class="ms ms-12 ' + classText + '"></i>'
            when '{13}'
              prettySymbol = '<i class="ms ms-13 ' + classText + '"></i>'
            when '{14}'
              prettySymbol = '<i class="ms ms-14 ' + classText + '"></i>'
            when '{15}'
              prettySymbol = '<i class="ms ms-15 ' + classText + '"></i>'
            when '{16}'
              prettySymbol = '<i class="ms ms-16 ' + classText + '"></i>'
            when '{17}'
              prettySymbol = '<i class="ms ms-17 ' + classText + '"></i>'
            when '{18}'
              prettySymbol = '<i class="ms ms-18 ' + classText + '"></i>'
            when '{19}'
              prettySymbol = '<i class="ms ms-19 ' + classText + '"></i>'
            when '{20}'
              prettySymbol = '<i class="ms ms-20 ' + classText + '"></i>'
            when '{100}'
              prettySymbol = '<i class="ms ms-100 ' + classText + '"></i>'
            when '{1000000}'
              prettySymbol = '<i class="ms ms-1000000 ' + classText + '"></i>'
            when '{∞}'
              prettySymbol = '<i class="ms ms-infinity ' + classText + '"></i>'
            when '{W/U}'
              prettySymbol = '<i class="ms ms-wu ' + classText + '"></i>'
            when '{W/B}'
              prettySymbol = '<i class="ms ms-wb ' + classText + '"></i>'
            when '{B/R}'
              prettySymbol = '<i class="ms ms-br ' + classText + '"></i>'
            when '{B/G}'
              prettySymbol = '<i class="ms ms-bg ' + classText + '"></i>'
            when '{U/B}'
              prettySymbol = '<i class="ms ms-ub ' + classText + '"></i>'
            when '{U/R}'
              prettySymbol = '<i class="ms ms-ur ' + classText + '"></i>'
            when '{R/G}'
              prettySymbol = '<i class="ms ms-rg ' + classText + '"></i>'
            when '{R/W}'
              prettySymbol = '<i class="ms ms-rw ' + classText + '"></i>'
            when '{G/W}'
              prettySymbol = '<i class="ms ms-gw ' + classText + '"></i>'
            when '{G/U}'
              prettySymbol = '<i class="ms ms-gu ' + classText + '"></i>'
            when '{2/W}'
              prettySymbol = '<i class="ms ms-2w ' + classText + '"></i>'
            when '{2/U}'
              prettySymbol = '<i class="ms ms-2u ' + classText + '"></i>'
            when '{2/B}'
              prettySymbol = '<i class="ms ms-2b ' + classText + '"></i>'
            when '{2/R}'
              prettySymbol = '<i class="ms ms-2r ' + classText + '"></i>'
            when '{2/G}'
              prettySymbol = '<i class="ms ms-2g ' + classText + '"></i>'
            when '{P}'
              prettySymbol = '<i class="ms ms-p ' + classText + '"></i>'
            when '{W/P}'
              prettySymbol = '<i class="ms ms-wp ' + classText + '"></i>'
            when '{U/P}'
              prettySymbol = '<i class="ms ms-up ' + classText + '"></i>'
            when '{B/P}'
              prettySymbol = '<i class="ms ms-bp ' + classText + '"></i>'
            when '{R/P}'
              prettySymbol = '<i class="ms ms-rp ' + classText + '"></i>'
            when '{G/P}'
              prettySymbol = '<i class="ms ms-gp ' + classText + '"></i>'
            when '{HW}'
              prettySymbol = '<i class="ms ms-hw ' + classText + '"></i>'
            when '{HR}'
              prettySymbol = '<i class="ms ms-hr ' + classText + '"></i>'
            when '{W}'
              prettySymbol = '<i class="ms ms-w ' + classText + '"></i>'
            when '{U}'
              prettySymbol = '<i class="ms ms-u ' + classText + '"></i>'
            when '{B}'
              prettySymbol = '<i class="ms ms-b ' + classText + '"></i>'
            when '{R}'
              prettySymbol = '<i class="ms ms-r ' + classText + '"></i>'
            when '{G}'
              prettySymbol = '<i class="ms ms-g ' + classText + '"></i>'
            when '{C}'
              prettySymbol = '<i class="ms ms-c ' + classText + '"></i>'
            when '{S}'
              prettySymbol = '<i class="ms ms-s ' + classText + '"></i>'
            else
              prettySymbol = symbolText
            end
            
            prettySymbol
    end
  end
end