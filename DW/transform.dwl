%dw 2.0
output application/json
import * from dw::core::Numbers
---
flatten(payload groupBy ($.oderId ++ $.operation ++ $.componentId) 
    filterObject (sizeOf($) == 1) 
    pluck $)