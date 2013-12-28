// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.DialogInterface;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller

class iewItem
    implements android.content.kListener
{

    final AdvancedTaskKiller this$0;
    private final iewItem val$lvi;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            AdvancedTaskKiller.access$11(AdvancedTaskKiller.this, val$lvi);
            return;

        case 1: // '\001'
            AdvancedTaskKiller.access$12(AdvancedTaskKiller.this, val$lvi);
            return;

        case 2: // '\002'
            AdvancedTaskKiller.access$13(AdvancedTaskKiller.this, val$lvi);
            return;

        case 3: // '\003'
            AdvancedTaskKiller.access$14(AdvancedTaskKiller.this, val$lvi);
            return;

        case 4: // '\004'
            AdvancedTaskKiller.access$15(AdvancedTaskKiller.this, val$lvi);
            break;
        }
    }

    iewItem()
    {
        this$0 = final_advancedtaskkiller;
        val$lvi = iewItem.this;
        super();
    }
}
