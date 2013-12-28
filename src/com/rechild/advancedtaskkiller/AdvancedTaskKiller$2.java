// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller, HealthActivity

class this._cls0
    implements android.view.ancedTaskKiller._cls2
{

    final AdvancedTaskKiller this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent();
        intent.setClass(AdvancedTaskKiller.this, com/rechild/advancedtaskkiller/HealthActivity);
        startActivity(intent);
    }

    _cls9()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }
}
