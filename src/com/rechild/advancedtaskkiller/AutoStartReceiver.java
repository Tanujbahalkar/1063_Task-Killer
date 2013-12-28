// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, AdvancedTaskKiller, CommonLibrary

public class AutoStartReceiver extends BroadcastReceiver
{

    private static NotificationManager _NotificationManager;

    public AutoStartReceiver()
    {
    }

    public static void ClearNotification(Context context)
    {
        if (_NotificationManager != null)
        {
            _NotificationManager.cancelAll();
            _NotificationManager = null;
        }
    }

    public static void RefreshNotification(Context context)
    {
        if (Setting.IS_NOTIFICATION_ENABLE)
        {
            if (_NotificationManager == null)
            {
                _NotificationManager = CommonLibrary.buildNotification(context, com/rechild/advancedtaskkiller/AdvancedTaskKiller, "Open Advanced Task Killer", "Menu->Settings to disable this.", 0x7f020003, 0x7f030009);
            }
        } else
        if (_NotificationManager != null)
        {
            _NotificationManager.cancelAll();
            _NotificationManager = null;
            return;
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        Setting.Settings = context.getSharedPreferences("AdvTaskKillerSettings", 0);
        Setting.restoreSettings(context);
        if (Setting.IS_AUTOSTART_ENABLE)
        {
            Intent intent1 = new Intent(context, com/rechild/advancedtaskkiller/AdvancedTaskKiller);
            intent1.setFlags(0x10000000);
            context.startService(intent1);
            if (Setting.IS_NOTIFICATION_ENABLE)
            {
                RefreshNotification(context);
            }
            if (Setting.AUTO_KILL_LEVEL > 0 && CommonLibrary.NextRun == null)
            {
                CommonLibrary.ScheduleAutoKill(context, false, Setting.AUTO_KILL_FREQUENCY);
            }
        }
    }
}
