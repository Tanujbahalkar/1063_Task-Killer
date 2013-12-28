// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Log

public class LogActivity extends Activity
{

    public LogActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030007);
        TextView textview = (TextView)findViewById(0x7f070017);
        String s = Log.GetAllLog(this);
        if (s != null)
        {
            textview.setText(s);
        }
    }
}
