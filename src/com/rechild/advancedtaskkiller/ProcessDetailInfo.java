// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ProcessDetailInfo
{

    private static HashMap AppsTable;
    public static final String IGNORE_PREFS_NAME = "IgnoredPackage";
    public static final String SELECT_PREFS_NAME = "CleanoidUnselectedPackage";
    static android.content.SharedPreferences.Editor _IgnoredAppEditor;
    public static SharedPreferences _IgnoredAppSettings;
    private static android.content.SharedPreferences.Editor _SelectedAppEditor;
    public static SharedPreferences _SelectedAppSettings;
    public int Importance;
    private ApplicationInfo _AppInfo;
    private String _Label;
    private String _PackageName;
    private PackageInfo _PkgInfo;
    private PackageManager _PkgManager;
    private ResolveInfo _ResolveInfo;
    private boolean isApplication;

    public ProcessDetailInfo(Context context, String s)
        throws Exception
    {
        _AppInfo = null;
        _PkgInfo = null;
        isApplication = true;
        loadApps(context);
        _ResolveInfo = (ResolveInfo)AppsTable.get(s);
        if (_ResolveInfo != null && _ResolveInfo.activityInfo != null && _ResolveInfo.activityInfo.applicationInfo != null)
        {
            _AppInfo = _ResolveInfo.activityInfo.applicationInfo;
        } else
        {
            isApplication = false;
        }
        _PackageName = s;
        if (_PkgManager == null)
        {
            _PkgManager = context.getApplicationContext().getPackageManager();
        }
        if (_SelectedAppSettings == null)
        {
            _SelectedAppSettings = context.getSharedPreferences("CleanoidUnselectedPackage", 0);
        }
        if (_SelectedAppEditor == null)
        {
            _SelectedAppEditor = _SelectedAppSettings.edit();
        }
        if (_IgnoredAppSettings == null)
        {
            _IgnoredAppSettings = context.getSharedPreferences("IgnoredPackage", 0);
        }
        if (_IgnoredAppEditor == null)
        {
            _IgnoredAppEditor = _IgnoredAppSettings.edit();
        }
    }

    public static boolean IsPersistentApp(PackageInfo packageinfo)
    {
        if (packageinfo == null)
        {
            return false;
        }
        if (packageinfo.applicationInfo != null && (8 & packageinfo.applicationInfo.flags) == 8)
        {
            return true;
        }
        if (packageinfo.activities == null)
        {
            return false;
        }
        ActivityInfo aactivityinfo[] = packageinfo.activities;
        int i = aactivityinfo.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return false;
            }
            ActivityInfo activityinfo = aactivityinfo[j];
            if (activityinfo != null && activityinfo.applicationInfo != null && (8 & activityinfo.applicationInfo.flags) == 8)
            {
                return true;
            }
            j++;
        } while (true);
    }

    public static boolean IsUnselectOrIgnore(String s)
    {
        if (_SelectedAppSettings.getBoolean(s, false))
        {
            return true;
        }
        return _IgnoredAppSettings.getBoolean(s, false);
    }

    public static void SetIgnored(boolean flag, Context context, String s)
    {
        if (_IgnoredAppSettings == null)
        {
            _IgnoredAppSettings = context.getSharedPreferences("IgnoredPackage", 0);
        }
        if (_IgnoredAppEditor == null)
        {
            _IgnoredAppEditor = _IgnoredAppSettings.edit();
        }
        if (flag)
        {
            _IgnoredAppEditor.putBoolean(s, true);
        } else
        {
            _IgnoredAppEditor.remove(s);
        }
        _IgnoredAppEditor.commit();
    }

    private PackageInfo getPackageInfo()
    {
        if (_PkgInfo == null)
        {
            try
            {
                _PkgInfo = _PkgManager.getPackageInfo(_AppInfo.packageName, 1);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                Log.e("NameNotFoundException", namenotfoundexception.toString());
            }
        }
        return _PkgInfo;
    }

    private static void loadApps(Context context)
    {
        if (AppsTable != null) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        AppsTable = new HashMap();
        Intent intent = new Intent("android.intent.action.MAIN", null);
        intent.addCategory("android.intent.category.LAUNCHER");
        iterator = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
        if (resolveinfo != null && resolveinfo.activityInfo != null && resolveinfo.activityInfo.packageName != null)
        {
            AppsTable.put(resolveinfo.activityInfo.processName, resolveinfo);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void setSelected(boolean flag, Context context, String s)
    {
        if (_SelectedAppSettings == null)
        {
            _SelectedAppSettings = context.getSharedPreferences("CleanoidUnselectedPackage", 0);
        }
        if (_SelectedAppEditor == null)
        {
            _SelectedAppEditor = _SelectedAppSettings.edit();
        }
        if (!flag || !_SelectedAppSettings.contains(s)) goto _L2; else goto _L1
_L1:
        _SelectedAppEditor.remove(s);
_L4:
        _SelectedAppEditor.commit();
        return;
_L2:
        if (!flag)
        {
            _SelectedAppEditor.putBoolean(s, true);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getBaseActivity()
    {
        if (_ResolveInfo != null)
        {
            return _ResolveInfo.activityInfo.name;
        } else
        {
            return getPackageInfo().activities[0].name;
        }
    }

    public Drawable getIcon()
    {
        if (_AppInfo != null)
        {
            return _AppInfo.loadIcon(_PkgManager);
        } else
        {
            return null;
        }
    }

    public boolean getIgnored()
    {
        return _IgnoredAppSettings.getBoolean(_PackageName, false);
    }

    public String getLabel()
    {
        if (_Label != null) goto _L2; else goto _L1
_L1:
        if (_PackageName == null || !_PackageName.equals(_AppInfo.processName)) goto _L4; else goto _L3
_L3:
        _Label = _AppInfo.loadLabel(_PkgManager).toString();
_L2:
        return _Label;
_L4:
        try
        {
            _Label = _AppInfo.processName;
        }
        catch (Exception exception)
        {
            _Label = _PackageName;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public String getPackageName()
    {
        return _PackageName;
    }

    public String getProcessName()
    {
        return _PackageName;
    }

    public boolean getSelected()
    {
        return !_SelectedAppSettings.getBoolean(_PackageName, false);
    }

    public boolean isApplication()
    {
        return isApplication;
    }

    public boolean isGoodProcess()
    {
        return _AppInfo != null;
    }

    public boolean isSystemApp()
    {
        return _AppInfo != null && (1 ^ _AppInfo.flags) == 1;
    }

    public void setIgnored(boolean flag)
    {
        if (flag)
        {
            _IgnoredAppEditor.putBoolean(_PackageName, true);
        } else
        {
            _IgnoredAppEditor.remove(_PackageName);
        }
        _IgnoredAppEditor.commit();
    }

    public void setLabel(String s)
    {
        _Label = s;
    }

    public void setSelected(boolean flag)
    {
        if (!flag || !_SelectedAppSettings.contains(_PackageName)) goto _L2; else goto _L1
_L1:
        _SelectedAppEditor.remove(_PackageName);
_L4:
        _SelectedAppEditor.commit();
        return;
_L2:
        if (!flag)
        {
            _SelectedAppEditor.putBoolean(_PackageName, true);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
