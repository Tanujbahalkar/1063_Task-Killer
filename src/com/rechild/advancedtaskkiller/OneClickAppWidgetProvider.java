// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            BackService

public class OneClickAppWidgetProvider extends AppWidgetProvider
{

    static final ComponentName THIS_APPWIDGET = new ComponentName("com.rechild.taskkillerfull", "com.rechild.taskkillerfull.OneClickAppWidgetProvider");
    private static OneClickAppWidgetProvider sInstance;

    public OneClickAppWidgetProvider()
    {
    }

    private void defaultAppWidget(Context context, int ai[])
    {
        context.getResources();
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f030000);
        linkButtons(context, remoteviews);
        pushUpdate(context, ai, remoteviews);
    }

    static OneClickAppWidgetProvider getInstance()
    {
        com/rechild/advancedtaskkiller/OneClickAppWidgetProvider;
        JVM INSTR monitorenter ;
        OneClickAppWidgetProvider oneclickappwidgetprovider;
        if (sInstance == null)
        {
            sInstance = new OneClickAppWidgetProvider();
        }
        oneclickappwidgetprovider = sInstance;
        com/rechild/advancedtaskkiller/OneClickAppWidgetProvider;
        JVM INSTR monitorexit ;
        return oneclickappwidgetprovider;
        Exception exception;
        exception;
        throw exception;
    }

    private void linkButtons(Context context, RemoteViews remoteviews)
    {
        ComponentName componentname = new ComponentName(context, com/rechild/advancedtaskkiller/BackService);
        Intent intent = new Intent("com.rechild.advancedtaskkillerfull.action.killall");
        intent.setComponent(componentname);
        remoteviews.setOnClickPendingIntent(0x7f070000, PendingIntent.getService(context, 0, intent, 0));
    }

    private void pushUpdate(Context context, int ai[], RemoteViews remoteviews)
    {
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(context);
        if (ai != null)
        {
            appwidgetmanager.updateAppWidget(ai, remoteviews);
            return;
        } else
        {
            appwidgetmanager.updateAppWidget(THIS_APPWIDGET, remoteviews);
            return;
        }
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        defaultAppWidget(context, ai);
    }

}
