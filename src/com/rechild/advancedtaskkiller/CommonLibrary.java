// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.os.Process;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            ProcessDetailInfo, Setting, AutoStartReceiver, Log, 
//            AlarmReceiver, BackService

public class CommonLibrary
{

    public static List IgnoreOrUncheckUid;
    public static Date NextRun;
    private static Integer SDK = null;
    public static List SystemUid;
    private static final String TAG = "ATK";
    private static boolean _CanGetUid = true;

    public CommonLibrary()
    {
    }

    public static int GetAppUid(android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo)
    {
        if (!_CanGetUid)
        {
            return runningappprocessinfo.pid;
        }
        int j;
        Field field = android/app/ActivityManager$RunningAppProcessInfo.getDeclaredField("uid");
        field.setAccessible(true);
        j = field.getInt(runningappprocessinfo);
        int i = j;
_L2:
        return i;
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        i = runningappprocessinfo.pid;
        continue; /* Loop/switch isn't completed */
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        i = runningappprocessinfo.pid;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static List GetFrontAppUid(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist;
                }
                runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            } while (runningappprocessinfo.importance != 100);
            arraylist.add(Integer.valueOf(GetAppUid(runningappprocessinfo)));
        } while (true);
    }

    public static List GetIgnoreOrUncheckUid(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (ProcessDetailInfo._IgnoredAppSettings != null || ProcessDetailInfo._SelectedAppSettings != null)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
                String as[] = runningappprocessinfo.pkgList;
                int i = as.length;
                int j = 0;
                while (j < i) 
                {
                    String s = as[j];
                    if (ProcessDetailInfo._IgnoredAppSettings != null && ProcessDetailInfo._IgnoredAppSettings.contains(s))
                    {
                        arraylist.add(Integer.valueOf(GetAppUid(runningappprocessinfo)));
                    }
                    if (ProcessDetailInfo._SelectedAppSettings != null && ProcessDetailInfo._SelectedAppSettings.contains(s))
                    {
                        arraylist.add(Integer.valueOf(GetAppUid(runningappprocessinfo)));
                    }
                    j++;
                }
            }
        }
        return arraylist;
    }

    public static ArrayList GetRunningProcess(Context context, ActivityManager activitymanager)
    {
        return GetRunningProcess(context, activitymanager, 0x80000000);
    }

    public static ArrayList GetRunningProcess(Context context, ActivityManager activitymanager, int i)
    {
        return GetRunningProcess(context, activitymanager, i, Setting.SECURITY_LEVEL, false);
    }

    public static ArrayList GetRunningProcess(Context context, ActivityManager activitymanager, int i, int j, boolean flag)
    {
        List list;
        ArrayList arraylist;
        List list1;
        list = activitymanager.getRunningAppProcesses();
        arraylist = new ArrayList();
        list1 = null;
        if (flag)
        {
            list1 = GetFrontAppUid(list);
        }
        SystemUid = GetSystemAppUid(list);
        if (j != 5) goto _L2; else goto _L1
_L1:
        Iterator iterator2 = list.iterator();
_L6:
        if (iterator2.hasNext()) goto _L4; else goto _L3
_L3:
        return arraylist;
_L4:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo2 = (android.app.ActivityManager.RunningAppProcessInfo)iterator2.next();
        if (runningappprocessinfo2 == null || runningappprocessinfo2.processName == null || runningappprocessinfo2.processName.startsWith("com.android.inputmethod") || runningappprocessinfo2.processName.equalsIgnoreCase("system") || runningappprocessinfo2.processName.equalsIgnoreCase("com.android.phone") || runningappprocessinfo2.processName.equalsIgnoreCase("android.process.acore") || runningappprocessinfo2.importance < i || IsFroyoOrLater() && Setting.IGNORE_SERVICE_FRONT_APP && runningappprocessinfo2.importance <= 300 && !runningappprocessinfo2.processName.equals(context.getPackageName()) || flag && IsFrontApp(list1, runningappprocessinfo2)) goto _L6; else goto _L5
_L5:
        if (runningappprocessinfo2.pkgList == null || runningappprocessinfo2.pkgList.length != 1 || !runningappprocessinfo2.processName.equals(runningappprocessinfo2.pkgList[0])) goto _L6; else goto _L7
_L7:
        ProcessDetailInfo processdetailinfo2 = new ProcessDetailInfo(context, runningappprocessinfo2.processName);
        processdetailinfo2.Importance = runningappprocessinfo2.importance;
        if (processdetailinfo2.isApplication() && !IsSystemApp(runningappprocessinfo2) && processdetailinfo2.isGoodProcess() && !processdetailinfo2.getIgnored())
        {
            arraylist.add(processdetailinfo2);
        }
          goto _L6
        Exception exception2;
        exception2;
        exception2.printStackTrace();
          goto _L6
_L2:
        Iterator iterator1;
        if (j != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        iterator1 = list.iterator();
_L10:
        if (!iterator1.hasNext()) goto _L3; else goto _L8
_L8:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo1 = (android.app.ActivityManager.RunningAppProcessInfo)iterator1.next();
        if (runningappprocessinfo1 == null || runningappprocessinfo1.processName == null || runningappprocessinfo1.processName.startsWith("com.android.inputmethod") || runningappprocessinfo1.processName.equalsIgnoreCase("system") || runningappprocessinfo1.processName.equalsIgnoreCase("com.android.phone") || runningappprocessinfo1.processName.equalsIgnoreCase("android.process.acore") || runningappprocessinfo1.processName.equalsIgnoreCase("com.htc.android.mail") || runningappprocessinfo1.processName.equalsIgnoreCase("com.motorola.android.vvm") || runningappprocessinfo1.processName.equalsIgnoreCase("com.android.alarmclock") || runningappprocessinfo1.importance < i || IsFroyoOrLater() && Setting.IGNORE_SERVICE_FRONT_APP && runningappprocessinfo1.importance <= 300 && !runningappprocessinfo1.processName.equals(context.getPackageName()) || flag && IsFrontApp(list1, runningappprocessinfo1)) goto _L10; else goto _L9
_L9:
        if (runningappprocessinfo1.pkgList == null || runningappprocessinfo1.pkgList.length != 1 || !runningappprocessinfo1.processName.equals(runningappprocessinfo1.pkgList[0])) goto _L10; else goto _L11
_L11:
        ProcessDetailInfo processdetailinfo1 = new ProcessDetailInfo(context, runningappprocessinfo1.processName);
        processdetailinfo1.Importance = runningappprocessinfo1.importance;
        if (processdetailinfo1.isApplication() && !processdetailinfo1.isSystemApp() && !IsSystemApp(runningappprocessinfo1) && processdetailinfo1.isGoodProcess() && !processdetailinfo1.getIgnored())
        {
            arraylist.add(processdetailinfo1);
        }
          goto _L10
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L10
        if (j != 10) goto _L3; else goto _L12
_L12:
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            if (runningappprocessinfo != null && runningappprocessinfo.processName != null && !runningappprocessinfo.processName.equalsIgnoreCase("system") && !runningappprocessinfo.processName.equalsIgnoreCase("com.android.phone") && !runningappprocessinfo.processName.equalsIgnoreCase("android.process.acore") && runningappprocessinfo.importance >= i && (!IsFroyoOrLater() || !Setting.IGNORE_SERVICE_FRONT_APP || runningappprocessinfo.importance > 300 || runningappprocessinfo.processName.equals(context.getPackageName())) && (!flag || !IsFrontApp(list1, runningappprocessinfo)) && !IsSystemApp(runningappprocessinfo))
            {
                try
                {
                    ProcessDetailInfo processdetailinfo = new ProcessDetailInfo(context, runningappprocessinfo.pkgList[0]);
                    processdetailinfo.Importance = runningappprocessinfo.importance;
                    if (!processdetailinfo.getIgnored())
                    {
                        arraylist.add(processdetailinfo);
                    }
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }
        }
          goto _L3
    }

    public static ArrayList GetRunningProcess(Context context, ActivityManager activitymanager, int i, boolean flag)
    {
        return GetRunningProcess(context, activitymanager, i, Setting.SECURITY_LEVEL, flag);
    }

    public static ArrayList GetRunningProcess(Context context, ActivityManager activitymanager, boolean flag)
    {
        return GetRunningProcess(context, activitymanager, 0x80000000, flag);
    }

    public static List GetSystemAppUid(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist;
                }
                runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            } while (!IsSystemProcessName(runningappprocessinfo.processName));
            arraylist.add(Integer.valueOf(GetAppUid(runningappprocessinfo)));
        } while (true);
    }

    public static void InvokeActivity(Activity activity, Class class1)
    {
        Intent intent = new Intent();
        intent.setClass(activity, class1);
        intent.addCategory("android.intent.category.DEFAULT");
        activity.startActivity(intent);
    }

    public static boolean IsFrontApp(List list, android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo)
    {
        int i = GetAppUid(runningappprocessinfo);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (((Integer)iterator.next()).intValue() != i);
        return true;
    }

    public static boolean IsFroyo()
    {
        if (SDK == null)
        {
            SDK = Integer.valueOf(Integer.parseInt(android.os.Build.VERSION.SDK));
        }
        return SDK.intValue() == 8;
    }

    public static boolean IsFroyoOrLater()
    {
        if (SDK == null)
        {
            SDK = Integer.valueOf(Integer.parseInt(android.os.Build.VERSION.SDK));
        }
        return SDK.intValue() >= 8;
    }

    public static boolean IsGingerbreadOrlater()
    {
        if (SDK == null)
        {
            SDK = Integer.valueOf(Integer.parseInt(android.os.Build.VERSION.SDK));
        }
        return SDK.intValue() >= 9;
    }

    public static boolean IsHoneyOrlater()
    {
        if (SDK == null)
        {
            SDK = Integer.valueOf(Integer.parseInt(android.os.Build.VERSION.SDK));
        }
        return SDK.intValue() >= 11;
    }

    public static boolean IsSameUidWithIgnoreOrUncheck(android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo)
    {
        int i = GetAppUid(runningappprocessinfo);
        Iterator iterator = IgnoreOrUncheckUid.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (((Integer)iterator.next()).intValue() != i || ProcessDetailInfo._IgnoredAppSettings.contains(runningappprocessinfo.processName) || ProcessDetailInfo._SelectedAppSettings.contains(runningappprocessinfo.processName));
        return true;
    }

    public static boolean IsSystemApp(android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo)
    {
        int i = GetAppUid(runningappprocessinfo);
        Iterator iterator = SystemUid.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (((Integer)iterator.next()).intValue() != i);
        return true;
    }

    public static boolean IsSystemProcessName(String s)
    {
        return s.equalsIgnoreCase("system") || s.equalsIgnoreCase("com.android.phone") || s.equalsIgnoreCase("android.process.acore") || s.equalsIgnoreCase("android.process.media") || s.equalsIgnoreCase("com.android.bluetooth");
    }

    public static void KillATK(ActivityManager activitymanager, Context context)
    {
        if (IsFroyoOrLater())
        {
            AutoStartReceiver.ClearNotification(context);
            Process.killProcess(Process.myUid());
            System.exit(0);
            return;
        } else
        {
            activitymanager.restartPackage(context.getPackageName());
            return;
        }
    }

    public static void KillApp(Context context, ActivityManager activitymanager, String s)
    {
        if (IsFroyoOrLater())
        {
            try
            {
                android/app/ActivityManager.getMethod("killBackgroundProcesses", new Class[] {
                    java/lang/String
                }).invoke(activitymanager, new Object[] {
                    s
                });
            }
            catch (SecurityException securityexception)
            {
                securityexception.printStackTrace();
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                nosuchmethodexception.printStackTrace();
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                illegalargumentexception.printStackTrace();
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                illegalaccessexception.printStackTrace();
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                invocationtargetexception.printStackTrace();
            }
            try
            {
                activitymanager.restartPackage(s);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return;
        } else
        {
            activitymanager.restartPackage(s);
            return;
        }
    }

    public static int KillProcess(Context context, List list, ActivityManager activitymanager)
    {
        return KillProcess(context, list, activitymanager, true);
    }

    public static int KillProcess(Context context, List list, ActivityManager activitymanager, boolean flag)
    {
        boolean flag1 = false;
        int i = 0;
        Log.BeginTrasaction(context);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (flag1)
                {
                    ProcessDetailInfo processdetailinfo;
                    String s;
                    if (flag)
                    {
                        KillATK(activitymanager, context);
                    } else
                    {
                        AutoStartReceiver.ClearNotification(context);
                    }
                    i++;
                }
                Log.EndTrasaction(context);
                return i;
            }
            processdetailinfo = (ProcessDetailInfo)iterator.next();
            s = processdetailinfo.getPackageName();
            if (s.equals(context.getPackageName()))
            {
                flag1 = processdetailinfo.getSelected();
            } else
            if (processdetailinfo.getSelected())
            {
                KillApp(context, activitymanager, s);
                i++;
                Log.I(context, s);
            }
        } while (true);
    }

    public static String MemoryToString(long l)
    {
        return (new StringBuilder(String.valueOf(String.valueOf(l / 1024L / 1024L)))).append("M").toString();
    }

    public static void ScheduleAutoKill(Context context, boolean flag, long l)
    {
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, new Intent(context, com/rechild/advancedtaskkiller/AlarmReceiver), 0);
        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
        if (flag)
        {
            alarmmanager.cancel(pendingintent);
            NextRun = null;
            return;
        }
        if (l == 0L)
        {
            context.startService(new Intent(context, com/rechild/advancedtaskkiller/BackService));
            return;
        } else
        {
            alarmmanager.setRepeating(1, l + System.currentTimeMillis(), l, pendingintent);
            NextRun = new Date(l + System.currentTimeMillis());
            return;
        }
    }

    public static NotificationManager buildNotification(Context context, CharSequence charsequence, CharSequence charsequence1, int i, int j)
    {
        return buildNotification(context, context.getClass(), charsequence, charsequence1, i, j);
    }

    public static NotificationManager buildNotification(Context context, Class class1, CharSequence charsequence, CharSequence charsequence1, int i, int j)
    {
        NotificationManager notificationmanager = (NotificationManager)context.getSystemService("notification");
        Notification notification = new Notification();
        notification.icon = i;
        notification.flags = 2;
        notification.setLatestEventInfo(context, charsequence, charsequence1, makeMoodIntent(context, class1));
        notificationmanager.notify(j, notification);
        return notificationmanager;
    }

    public static long getAvaliableMemory(ActivityManager activitymanager)
    {
        long l;
        try
        {
            android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
            activitymanager.getMemoryInfo(memoryinfo);
            l = memoryinfo.availMem;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0L;
        }
        return l;
    }

    public static String getStringFromAsset(Context context, String s)
    {
        new String();
        String s1;
        try
        {
            InputStream inputstream = context.getAssets().open(s);
            byte abyte0[] = new byte[inputstream.available()];
            inputstream.read(abyte0);
            inputstream.close();
            s1 = new String(abyte0);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return s1;
    }

    private static PendingIntent makeMoodIntent(Context context, Class class1)
    {
        Intent intent = new Intent(context, class1);
        intent.addFlags(0x400000);
        intent.addFlags(0x4000000);
        return PendingIntent.getActivity(context, 1, intent, 0x10000000);
    }

    static 
    {
        try
        {
            android/app/ActivityManager$RunningAppProcessInfo.getDeclaredField("uid");
        }
        catch (SecurityException securityexception)
        {
            _CanGetUid = false;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            _CanGetUid = false;
        }
    }
}
