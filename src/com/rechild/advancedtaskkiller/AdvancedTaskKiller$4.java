// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.DialogInterface;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller, Setting

class this._cls0
    implements android.content.ckListener
{

    final AdvancedTaskKiller this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Setting.setIgnoreServiceFrontApp(true);
        AdvancedTaskKiller.access$9(AdvancedTaskKiller.this);
    }

    _cls9()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }
}
