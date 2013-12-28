// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            HealthActivity

class this._cls0
    implements android.view.ner
{

    final HealthActivity this$0;

    public void onClick(View view)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClassName("com.android.settings", "com.android.settings.battery_history.BatteryHistory");
            startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            Toast.makeText(HealthActivity.this, 0x7f060040, 0).show();
        }
    }

    ()
    {
        this$0 = HealthActivity.this;
        super();
    }
}
