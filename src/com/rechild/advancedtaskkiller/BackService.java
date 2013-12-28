// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, ScreenOffReceiver, CommonLibrary

public class BackService extends Service
{

    public static final String AUTO_KILL_ACTION = "com.rechild.advancedtaskkillerfull.action.autokill";
    public static final String CMD_CANCEL = "cancel";
    public static final String KILL_ALL_ACTION = "com.rechild.advancedtaskkillerfull.action.killall";
    public static final String TAG = "ATK";
    private ScreenOffReceiver ScreenOfReceiver;
    ActivityManager _ActivityManager;

    public BackService()
    {
        _ActivityManager = null;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        _ActivityManager = (ActivityManager)getApplicationContext().getSystemService("activity");
        if (Setting.INCLUDE_AUTOKILL_FEATURE)
        {
            ScreenOfReceiver = new ScreenOffReceiver();
            IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            registerReceiver(ScreenOfReceiver, intentfilter);
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (Setting.INCLUDE_AUTOKILL_FEATURE)
        {
            unregisterReceiver(ScreenOfReceiver);
        }
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
        String s;
        if (intent != null)
        {
            if ((s = intent.getAction()) != null && s.endsWith("killall"))
            {
                Log.e("ATK", "widget kill start");
                int j = CommonLibrary.KillProcess(this, CommonLibrary.GetRunningProcess(this, _ActivityManager, true), _ActivityManager, false);
                long l;
                try
                {
                    Thread.sleep(100L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
                l = CommonLibrary.getAvaliableMemory(_ActivityManager);
                Toast.makeText(this, (new StringBuilder(String.valueOf(String.valueOf(j)))).append(" Apps Killed, ").append(CommonLibrary.MemoryToString(l)).append(" memory available").toString(), 0).show();
                Log.e("ATK", "widget kill end");
                return;
            }
        }
    }
}
