// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.text.DateFormat;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            CommonLibrary

public class Setting
{

    public static final int ACTION_DETAIL = 4;
    public static final int ACTION_IGNORE = 3;
    public static final int ACTION_KILL = 0;
    public static final int ACTION_MENU = 5;
    public static final int ACTION_SELECT = 1;
    public static final int ACTION_SWITCH = 2;
    public static long AUTO_KILL_FREQUENCY = 0L;
    public static int AUTO_KILL_LEVEL = 0;
    public static final int AUTO_KILL_LEVEL_AGGRESSIVE = 2;
    public static final int AUTO_KILL_LEVEL_CRAZY = 3;
    public static final int AUTO_KILL_LEVEL_DISABLE = 0;
    public static final int AUTO_KILL_LEVEL_SAFE = 1;
    public static int CLICK_ACTION = 0;
    private static android.content.SharedPreferences.Editor Editor;
    public static boolean IGNORE_SERVICE_FRONT_APP = false;
    public static boolean INCLUDE_AUTOKILL_FEATURE = false;
    public static boolean IS_AUTOSTART_ENABLE = false;
    public static boolean IS_FROYO_OR_LATER = false;
    public static boolean IS_LOG_ENABLE = false;
    public static boolean IS_NOTIFICATION_ENABLE = false;
    public static int ITEM_HEIGHT = 0;
    public static final String KEY_AUTOSTART = "IsAutoStartEnabled";
    public static final String KEY_AUTO_KILL_FREQUENCY = "AutoKillFrequecyValue";
    public static final String KEY_AUTO_KILL_LEVEL = "AutoKillLevelValue";
    public static final String KEY_CLICK_ACTION = "ClickActionValue";
    public static final String KEY_IGNORE_SERVICE_FRONT_APP = "IgnoreServiceFrontApp";
    public static final String KEY_IS_FROYO_OR_LATER = "IsFroyoOrLater";
    public static final String KEY_ITEM_HEIGHT = "ItemHeight";
    public static final String KEY_LONG_PRESS_ACTION = "LongPressActionValue";
    public static final String KEY_NOTIFICATION = "IsNotificationEnabled";
    public static final String KEY_PREFS_NAME = "AdvTaskKillerSettings";
    public static final String KEY_SECURITY_LEVEL = "SecurityLevel";
    public static final String KEY_VERSION_CODE = "VersionCode";
    public static int LONG_PRESS_ACTION = 0;
    private static final String LR = "\r\n";
    public static final long ONE_HOUR = 0x36ee80L;
    public static int SECURITY_LEVEL = 0;
    public static final int SECURITY_LEVEL_HIGH = 0;
    public static final int SECURITY_LEVEL_LOW = 10;
    public static final int SECURITY_LEVEL_MEDIUM = 5;
    public static SharedPreferences Settings;
    public static int VERSION_CODE = 0;

    public Setting(SharedPreferences sharedpreferences, Context context)
    {
        restoreSettings(context);
    }

    public static String GetAllValues()
    {
        return (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder("AutoKillFrequecyValue ")).append(String.valueOf(AUTO_KILL_FREQUENCY)).append("\r\n").toString()))).append("AutoKillLevelValue ").append(String.valueOf(AUTO_KILL_LEVEL)).append("\r\n").toString()))).append("IsNotificationEnabled ").append(String.valueOf(IS_NOTIFICATION_ENABLE)).append("\r\n").toString()))).append("SecurityLevel ").append(String.valueOf(SECURITY_LEVEL)).append("\r\n").toString()))).append("LongPressActionValue ").append(String.valueOf(LONG_PRESS_ACTION)).append("\r\n").toString()))).append("ClickActionValue ").append(String.valueOf(CLICK_ACTION)).append("\r\n").toString()))).append("ItemHeight ").append(String.valueOf(ITEM_HEIGHT)).append("\r\n").toString()))).append("IsAutoStartEnabled ").append(String.valueOf(IS_AUTOSTART_ENABLE)).append("\r\n").toString()))).append("VersionCode ").append(String.valueOf(VERSION_CODE)).append("\r\n").toString()))).append("IsFroyoOrLater ").append(String.valueOf(IS_FROYO_OR_LATER)).append("\r\n").toString()))).append("IgnoreServiceFrontApp ").append(String.valueOf(IGNORE_SERVICE_FRONT_APP)).append("\r\n").toString();
    }

    public static String getAutoKillInfo()
    {
        if (AUTO_KILL_LEVEL == 0)
        {
            return "";
        }
        String s;
        if (AUTO_KILL_FREQUENCY != 0L)
        {
            s = (new StringBuilder(String.valueOf("Auto-Kill: "))).append(DateFormat.getTimeInstance(3).format(CommonLibrary.NextRun)).toString();
        } else
        {
            s = (new StringBuilder(String.valueOf("Auto-Kill: "))).append("ON").toString();
        }
        return s;
    }

    public static void restoreSettings(Context context)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (sharedpreferences.contains("IsNotificationEnabled"))
        {
            IS_NOTIFICATION_ENABLE = sharedpreferences.getBoolean("IsNotificationEnabled", false);
        }
        if (sharedpreferences.contains("IsAutoStartEnabled"))
        {
            IS_AUTOSTART_ENABLE = sharedpreferences.getBoolean("IsAutoStartEnabled", false);
        }
        if (sharedpreferences.contains("ClickActionValue"))
        {
            CLICK_ACTION = Integer.valueOf(sharedpreferences.getString("ClickActionValue", String.valueOf(1))).intValue();
        }
        if (sharedpreferences.contains("LongPressActionValue"))
        {
            LONG_PRESS_ACTION = Integer.valueOf(sharedpreferences.getString("LongPressActionValue", String.valueOf(5))).intValue();
        }
        if (sharedpreferences.contains("AutoKillLevelValue"))
        {
            AUTO_KILL_LEVEL = Integer.valueOf(sharedpreferences.getString("AutoKillLevelValue", String.valueOf(0))).intValue();
        }
        if (sharedpreferences.contains("AutoKillFrequecyValue"))
        {
            AUTO_KILL_FREQUENCY = Long.valueOf(sharedpreferences.getString("AutoKillFrequecyValue", String.valueOf(AUTO_KILL_FREQUENCY))).longValue();
        }
        if (sharedpreferences.contains("ItemHeight"))
        {
            ITEM_HEIGHT = sharedpreferences.getInt("ItemHeight", ITEM_HEIGHT);
        }
        if (sharedpreferences.contains("SecurityLevel"))
        {
            SECURITY_LEVEL = Integer.valueOf(sharedpreferences.getString("SecurityLevel", String.valueOf(SECURITY_LEVEL))).intValue();
        }
        if (sharedpreferences.contains("VersionCode"))
        {
            VERSION_CODE = sharedpreferences.getInt("VersionCode", 0);
        }
        if (sharedpreferences.contains("IgnoreServiceFrontApp"))
        {
            IGNORE_SERVICE_FRONT_APP = sharedpreferences.getBoolean("IgnoreServiceFrontApp", false);
        }
        if (sharedpreferences.contains("IsFroyoOrLater"))
        {
            IS_FROYO_OR_LATER = sharedpreferences.getBoolean("IsFroyoOrLater", false);
        }
        if (Editor == null)
        {
            Editor = sharedpreferences.edit();
        }
    }

    public static void setAutoKillFrequency(long l)
    {
        AUTO_KILL_FREQUENCY = l;
        Editor.putLong("AutoKillFrequecyValue", l);
        Editor.commit();
    }

    public static void setAutoStart(boolean flag)
    {
        IS_AUTOSTART_ENABLE = flag;
        Editor.putBoolean("IsAutoStartEnabled", flag);
        Editor.commit();
    }

    public static void setClickAction(int i)
    {
        CLICK_ACTION = i;
        Editor.putInt("ClickActionValue", i);
        Editor.commit();
    }

    public static void setIgnoreServiceFrontApp(boolean flag)
    {
        IGNORE_SERVICE_FRONT_APP = flag;
        Editor.putBoolean("IgnoreServiceFrontApp", flag);
        Editor.commit();
    }

    public static void setIsFroyoOrLater(boolean flag)
    {
        IS_FROYO_OR_LATER = flag;
        Editor.putBoolean("IsFroyoOrLater", flag);
        Editor.commit();
    }

    public static void setKillLevel(int i)
    {
        AUTO_KILL_LEVEL = i;
        Editor.putInt("AutoKillLevelValue", i);
        Editor.commit();
    }

    public static void setLongPressAction(int i)
    {
        LONG_PRESS_ACTION = i;
        Editor.putInt("LongPressActionValue", i);
        Editor.commit();
    }

    public static void setNotification(boolean flag)
    {
        IS_NOTIFICATION_ENABLE = flag;
        Editor.putBoolean("IsNotificationEnabled", flag);
        Editor.commit();
    }

    public static void setSecurityLevel(int i)
    {
        SECURITY_LEVEL = i;
        Editor.putInt("SecurityLevel", i);
        Editor.commit();
    }

    public static void setVersionCode(int i)
    {
        VERSION_CODE = i;
        Editor.putInt("VersionCode", i);
        Editor.commit();
    }

    static 
    {
        IS_LOG_ENABLE = false;
        INCLUDE_AUTOKILL_FEATURE = true;
        IS_NOTIFICATION_ENABLE = true;
        IS_AUTOSTART_ENABLE = true;
        ITEM_HEIGHT = 36;
        CLICK_ACTION = 1;
        LONG_PRESS_ACTION = 5;
        AUTO_KILL_LEVEL = 0;
        AUTO_KILL_FREQUENCY = 0x36ee80L;
        SECURITY_LEVEL = 0;
        IGNORE_SERVICE_FRONT_APP = false;
        IS_FROYO_OR_LATER = false;
    }
}
