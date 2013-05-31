module Jekyll
    module OffsetFilter
        def offset(array, off)
            array.drop(off) if array.respond_to?(:drop)
        end
    end
    module LimitFilter
        def limit(array, lim)
            array.take(lim) if array.respond_to?(:take)
        end
    end
end

Liquid::Template::register_filter(Jekyll::OffsetFilter)
Liquid::Template::register_filter(Jekyll::LimitFilter)
