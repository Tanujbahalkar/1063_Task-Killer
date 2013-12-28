// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, CommonLibrary

public class ScreenOffReceiver extends BroadcastReceiver
{

    private static final String TAG = "ATK";

    public ScreenOffReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        int i;
        int j;
        i = Setting.AUTO_KILL_LEVEL;
        j = 0;
        i;
        JVM INSTR tableswitch 0 3: default 40
    //                   0 119
    //                   1 120
    //                   2 128
    //                   3 136;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (Setting.AUTO_KILL_FREQUENCY == 0L)
        {
            Log.e("ATK", "Screen off kill start");
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            Toast.makeText(context, (new StringBuilder(String.valueOf(String.valueOf(CommonLibrary.KillProcess(context, CommonLibrary.GetRunningProcess(context, activitymanager, j, true), activitymanager))))).append(" Apps Killed").toString(), 0).show();
            Log.e("ATK", "Screen off kill end");
        }
_L2:
        return;
_L3:
        j = 500;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 400;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 100;
        if (true) goto _L1; else goto _L6
_L6:
    }
}
