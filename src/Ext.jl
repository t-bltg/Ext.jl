module Ext
    isdefined(Base, :get_extension) || import Requires: @require

    __init__() = begin
        println("Ext __init__")
        @static if !isdefined(Base, :get_extension)  # COV_EXCL_LINE
          @require FreeType = "b38be410-82b0-50bf-ab77-7b57e271db43" begin
              println("FreeTypeExt include")
              include(normpath(@__DIR__, "..", "ext", "FreeTypeExt.jl"))
          end
        end
    end
end