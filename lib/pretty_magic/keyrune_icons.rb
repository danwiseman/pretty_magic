module PrettyMagic
  module KeyruneIcons
    module ClassMethods
      def set_symbols(set_code, options = {})
        options = {color: 'common', size: 1, fixed_width: false, gradient: false}.merge(options)
        
        prettySymbol = "ss-" + set_code.downcase[/{(.*?)}/, 1]  
          
        i_tag(prettySymbol + ' ' + optional_classes(options[:color], options[:size], options[:fixed_width], options[:gradient]))
      end
      
      private
      
      def i_tag(inner_classes)
          '<i class="ss ' + inner_classes +'"></i>'
      end
      
      def optional_classes(color, size, fixed_width, gradient)
          
          class_text = ""
          
          if(color)
            class_text += "ss-#{color} "
          end
          if(size > 1)
            class_text += "ss-#{size}x "
          end
          if(fixed_width)
            class_text += "ss-fw "
          end 
          if(gradient)
            class_text += "ss-grad "
          end
          
          class_text
      end
    end
    
    extend ClassMethods
  end
end