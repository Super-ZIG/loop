// ═══════════════════════════════════════ LOAD ═══════════════════════════════════════  //

    const std = @import("std");

// ════════════════════════════════════════════════════════════════════════════════════  //



// ═══════════════════════════════════════ CORE ═══════════════════════════════════════  //
    
    pub inline fn until     ( _cond: anytype, _call: anytype )
    void
    {
        while (true)
        {
            _call();

            if(!_cond()) break;
        }
    }

    pub inline fn untilWith ( _cond: anytype, _call: anytype, _args: anytype )
    void
    {
        while (true)
        {
            @call(.auto, _call, _args);

            if(!_cond()) break;
        }
    }

// ════════════════════════════════════════════════════════════════════════════════════  //