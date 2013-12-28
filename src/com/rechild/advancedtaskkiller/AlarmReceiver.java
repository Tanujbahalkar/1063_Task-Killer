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
import java.util.Date;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, CommonLibrary

public class AlarmReceiver extends BroadcastReceiver
{

    private static final String TAG = "ATK";
    private static ActivityManager _ActivityManager;

    public AlarmReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        int i;
        int j;
        Log.e("ATK", "Start auto kill");
        CommonLibrary.NextRun = new Date(Setting.AUTO_KILL_FREQUENCY + System.currentTimeMillis());
        _ActivityManager = (ActivityManager)context.getSystemService("activity");
        i = Setting.AUTO_KILL_LEVEL;
        j = 0;
        i;
        JVM INSTR tableswitch 0 3: default 76
    //                   0 76
    //                   1 131
    //                   2 139
    //                   3 147;
           goto _L1 _L1 _L2 _L3 _L4
_L1:
        Toast.makeText(context, (new StringBuilder(String.valueOf(String.valueOf(CommonLibrary.KillProcess(context, CommonLibrary.GetRunningProcess(context, _ActivityManager, j, true), _ActivityManager))))).append(" Apps Killed").toString(), 0).show();
        Log.e("ATK", "Auto kill end");
        return;
_L2:
        j = 500;
        continue; /* Loop/switch isn't completed */
_L3:
        j = 400;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 100;
        if (true) goto _L1; else goto _L5
_L5:
    }
}
