// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;

public class InstallReceiver extends BroadcastReceiver
{

    public InstallReceiver()
    {
    }

    private static String a(String s, String s1, String s2)
    {
        int i = 0;
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = s.split("&");
        j = as.length;
        StringBuilder stringbuilder = null;
_L12:
        if (i >= j) goto _L4; else goto _L3
_L3:
        String s3 = as[i];
        if (!s3.startsWith("admob_")) goto _L6; else goto _L5
_L5:
        String s4;
        String s5;
        String as1[] = s3.substring("admob_".length()).split("=");
        s4 = URLEncoder.encode(as1[0], "UTF-8");
        s5 = URLEncoder.encode(as1[1], "UTF-8");
        if (stringbuilder != null) goto _L8; else goto _L7
_L7:
        stringbuilder = new StringBuilder(128);
_L9:
        stringbuilder.append(s4).append("=").append(s5);
          goto _L6
_L8:
        stringbuilder.append("&");
          goto _L9
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        com.google.ads.util.a.a("Could not create install URL.  Install not tracked.", unsupportedencodingexception);
_L2:
        return null;
_L4:
        if (stringbuilder == null) goto _L2; else goto _L10
_L10:
        String s8;
        String s6 = URLEncoder.encode(s1, "UTF-8");
        stringbuilder.append("&").append("isu").append("=").append(s6);
        String s7 = URLEncoder.encode(s2, "UTF-8");
        stringbuilder.append("&").append("app_id").append("=").append(s7);
        s8 = (new StringBuilder()).append("http://a.admob.com/f0?").append(stringbuilder.toString()).toString();
        return s8;
_L6:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public void forwardIntent(Context context, Intent intent)
    {
        PackageManager packagemanager;
        android.content.pm.ActivityInfo activityinfo;
        Set set;
        Iterator iterator;
        String s;
        Exception exception3;
        String s1;
        String s2;
        Exception exception4;
        try
        {
            packagemanager = context.getPackageManager();
        }
        catch (Exception exception)
        {
            com.google.ads.util.a.c("Unhandled exception while forwarding install intents. Possibly lost some install information.", exception);
            return;
        }
        if (packagemanager == null) goto _L2; else goto _L1
_L1:
        activityinfo = packagemanager.getReceiverInfo(new ComponentName(context, com/google/ads/InstallReceiver), 128);
        if (activityinfo == null) goto _L2; else goto _L3
_L3:
        if (((PackageItemInfo) (activityinfo)).metaData == null) goto _L2; else goto _L4
_L4:
        set = ((PackageItemInfo) (activityinfo)).metaData.keySet();
        if (set == null) goto _L2; else goto _L5
_L5:
        iterator = set.iterator();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L6
_L6:
        s = (String)iterator.next();
        s2 = ((PackageItemInfo) (activityinfo)).metaData.getString(s);
        if (s2.equals("com.google.android.apps.analytics.AnalyticsReceiver")) goto _L8; else goto _L7
_L7:
        ((BroadcastReceiver)Class.forName(s2).newInstance()).onReceive(context, intent);
        com.google.ads.util.a.a((new StringBuilder()).append("Successfully forwarded install notification to ").append(s2).toString());
          goto _L8
        exception4;
        s1 = s2;
        exception3 = exception4;
_L9:
        com.google.ads.util.a.c((new StringBuilder()).append("Could not forward Market's INSTALL_REFERRER intent to ").append(s1).toString(), exception3);
          goto _L8
_L2:
        ((BroadcastReceiver)Class.forName("com.google.android.apps.analytics.AnalyticsReceiver").newInstance()).onReceive(context, intent);
        com.google.ads.util.a.a("Successfully forwarded install notification to com.google.android.apps.analytics.AnalyticsReceiver");
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        com.google.ads.util.a.d("Google Analytics not installed.");
        return;
        Exception exception1;
        exception1;
        com.google.ads.util.a.c("Exception from the Google Analytics install receiver.", exception1);
        return;
        Exception exception2;
        exception2;
        exception3 = exception2;
        s1 = null;
          goto _L9
    }

    public void onReceive(Context context, Intent intent)
    {
        String s1;
        String s2;
        HttpURLConnection httpurlconnection;
        try
        {
            String s = intent.getStringExtra("referrer");
            s1 = AdUtil.a(context);
            s2 = a(s, s1, context.getPackageName());
        }
        catch (Exception exception)
        {
            com.google.ads.util.a.a("Unhandled exception processing Market install.", exception);
            return;
        }
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        com.google.ads.util.a.d((new StringBuilder()).append("Processing install from an AdMob ad (").append(s2).append(").").toString());
        httpurlconnection = (HttpURLConnection)(new URL(s2)).openConnection();
        AdUtil.a(httpurlconnection, context.getApplicationContext());
        httpurlconnection.setRequestProperty("X-Admob-Isu", s1);
        httpurlconnection.getResponseCode();
        forwardIntent(context, intent);
        return;
    }
}
