// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            ProcessDetailInfo, CommonLibrary, Setting, Log, 
//            AutoStartReceiver, NewSettings, HelpActivity, LogActivity, 
//            HealthActivity

public class AdvancedTaskKiller extends Activity
    implements android.widget.AdapterView.OnItemLongClickListener, android.widget.AdapterView.OnItemClickListener
{
    private class IgnoreTask extends AsyncTask
    {

        final AdvancedTaskKiller this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            IgnoreSystemApp();
            return "OK";
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            removeDialog(5);
            refresh();
        }

        private IgnoreTask()
        {
            this$0 = AdvancedTaskKiller.this;
            super();
        }

        IgnoreTask(IgnoreTask ignoretask)
        {
            this();
        }
    }

    private class KillAllTask extends AsyncTask
    {

        final AdvancedTaskKiller this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            try
            {
                CommonLibrary.KillProcess(AdvancedTaskKiller.this, _DetailList, _ActivityManager, true);
                getRunningProcess();
            }
            catch (Exception exception)
            {
                Log.e("ATK", exception.toString());
            }
            return "OK";
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            _Adapter = new TaskListAdapters.ProcessListAdapter(AdvancedTaskKiller.this, _DetailList);
            getListView().setAdapter(_Adapter);
            refreshMem();
            Log.e("ATK", "Manually kill ends");
        }

        private KillAllTask()
        {
            this$0 = AdvancedTaskKiller.this;
            super();
        }
    }

    private class SendBugReportTask extends AsyncTask
    {

        final AdvancedTaskKiller this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            try
            {
                sendBugReport();
            }
            catch (Exception exception)
            {
                return null;
            }
            return "OK";
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            removeDialog(1);
            if (s != null)
            {
                sendEmail(_LogResult);
            }
        }

        private SendBugReportTask()
        {
            this$0 = AdvancedTaskKiller.this;
            super();
        }

        SendBugReportTask(SendBugReportTask sendbugreporttask)
        {
            this();
        }
    }


    private static final int DIALOG_BUG = 4;
    private static final int DIALOG_HELP = 3;
    private static final int DIALOG_IGNORE = 5;
    private static final int DIALOG_IGNORE_SERVICE_ALERT = 6;
    private static final int DIALOG_INFO = 2;
    private static final int DIALOG_LOADING = 1;
    private static final int DIALOG_NEW_VERSION_ALERT = 7;
    private static final String LR = "\r\n";
    public static final String NOTIFY_MESSAGE = "Menu->Settings to disable this.";
    public static final String NOTIFY_TITLE = "Open Advanced Task Killer";
    private static final String TAG = "ATK";
    ActivityManager _ActivityManager;
    private TaskListAdapters.ProcessListAdapter _Adapter;
    private ArrayList _DetailList;
    private String _LogResult;
    private AlertDialog _MenuDialog;
    private Handler mHandler;

    public AdvancedTaskKiller()
    {
        _ActivityManager = null;
    }

    private void IgnoreSystemApp()
    {
        Iterator iterator = getPackageManager().getInstalledPackages(8192).iterator();
        do
        {
            PackageInfo packageinfo;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                packageinfo = (PackageInfo)iterator.next();
            } while ((1 & packageinfo.applicationInfo.flags) != 1 || !ProcessDetailInfo.IsPersistentApp(packageinfo) || packageinfo.applicationInfo == null || CommonLibrary.IsSystemProcessName(packageinfo.applicationInfo.processName));
            ProcessDetailInfo.SetIgnored(true, this, packageinfo.applicationInfo.processName);
        } while (true);
    }

    private void bindEvent()
    {
        findViewById(0x7f070019).setOnClickListener(new android.view.View.OnClickListener() {

            final AdvancedTaskKiller this$0;

            public void onClick(View view)
            {
                Log.e("ATK", "Start manully kill!");
                killAllTasks();
            }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
        });
        findViewById(0x7f070018).setOnClickListener(new android.view.View.OnClickListener() {

            final AdvancedTaskKiller this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent();
                intent.setClass(AdvancedTaskKiller.this, com/rechild/advancedtaskkiller/HealthActivity);
                startActivity(intent);
            }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
        });
        ListView listview = (ListView)findViewById(0x7f07001a);
        listview.setOnItemLongClickListener(this);
        listview.setOnItemClickListener(this);
    }

    private void detail(TaskListAdapters.ListViewItem listviewitem)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!CommonLibrary.IsGingerbreadOrlater()) goto _L2; else goto _L1
_L1:
        intent.setClassName("com.android.settings", "com.android.settings.applications.InstalledAppDetails");
        intent.setData(Uri.fromParts("package", listviewitem.detailProcess.getPackageName(), null));
_L3:
        startActivity(intent);
        return;
_L2:
        Exception exception;
label0:
        {
            if (!CommonLibrary.IsFroyoOrLater())
            {
                break label0;
            }
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("pkg", listviewitem.detailProcess.getPackageName());
        }
          goto _L3
        try
        {
            intent.setComponent(ComponentName.unflattenFromString("com.android.settings/.InstalledAppDetails"));
            intent.putExtra("com.android.settings.ApplicationPkgName", listviewitem.detailProcess.getPackageName());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Log.e("ATK", exception.toString());
            Toast.makeText(this, listviewitem.detailProcess.getPackageName(), 0).show();
            return;
        }
          goto _L3
    }

    private void doAction(TaskListAdapters.ListViewItem listviewitem, int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            kill(listviewitem);
            return;

        case 2: // '\002'
            switchTo(listviewitem);
            return;

        case 1: // '\001'
            selectOrUnselect(listviewitem);
            return;

        case 3: // '\003'
            ignore(listviewitem);
            return;

        case 4: // '\004'
            detail(listviewitem);
            return;

        case 5: // '\005'
            menu(listviewitem);
            break;
        }
    }

    private ListView getListView()
    {
        return (ListView)findViewById(0x7f07001a);
    }

    private String getValuesFromPreference(SharedPreferences sharedpreferences)
    {
        String s = "";
        Iterator iterator = sharedpreferences.getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return s;
            }
            String s1;
            try
            {
                s1 = (new StringBuilder(String.valueOf(s))).append((String)((java.util.Map.Entry)iterator.next()).getKey()).append("\r\n").toString();
            }
            catch (Exception exception)
            {
                return exception.toString();
            }
            s = s1;
        } while (true);
    }

    private int getVersionCode()
    {
        PackageManager packagemanager = getPackageManager();
        int i;
        try
        {
            i = packagemanager.getPackageInfo(getPackageName(), 8192).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return Setting.VERSION_CODE;
        }
        return i;
    }

    private void ignore(TaskListAdapters.ListViewItem listviewitem)
    {
        listviewitem.detailProcess.setIgnored(true);
        refresh();
    }

    private void kill(TaskListAdapters.ListViewItem listviewitem)
    {
        if (listviewitem.detailProcess.getPackageName().equals(getPackageName()))
        {
            CommonLibrary.KillATK(_ActivityManager, this);
            return;
        }
        try
        {
            CommonLibrary.KillApp(this, _ActivityManager, listviewitem.detailProcess.getPackageName());
            _DetailList.remove(listviewitem.detailProcess);
        }
        catch (Exception exception) { }
        _Adapter.notifyDataSetChanged();
        refreshMem();
        return;
    }

    private void killAllTasks()
    {
        CommonLibrary.KillProcess(this, _DetailList, _ActivityManager, true);
        getRunningProcess();
        _Adapter = new TaskListAdapters.ProcessListAdapter(this, _DetailList);
        getListView().setAdapter(_Adapter);
        refreshMem();
        Log.e("ATK", "Manually kill ends");
    }

    private void loadAdmob()
    {
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f070009);
        AdView adview = new AdView(this, AdSize.BANNER, "a14a6ac7fd9f387");
        linearlayout.addView(adview);
        linearlayout.setVisibility(0);
        adview.loadAd(new AdRequest());
    }

    private void menu(final TaskListAdapters.ListViewItem lvi)
    {
        _MenuDialog = (new android.app.AlertDialog.Builder(this)).setTitle(lvi.detailProcess.getLabel()).setIcon(lvi.detailProcess.getIcon()).setItems(0x7f050002, new android.content.DialogInterface.OnClickListener() {

            final AdvancedTaskKiller this$0;
            private final TaskListAdapters.ListViewItem val$lvi;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                switch (i)
                {
                default:
                    return;

                case 0: // '\0'
                    kill(lvi);
                    return;

                case 1: // '\001'
                    selectOrUnselect(lvi);
                    return;

                case 2: // '\002'
                    switchTo(lvi);
                    return;

                case 3: // '\003'
                    ignore(lvi);
                    return;

                case 4: // '\004'
                    detail(lvi);
                    break;
                }
            }

            
            {
                this$0 = AdvancedTaskKiller.this;
                lvi = listviewitem;
                super();
            }
        }).create();
        _MenuDialog.show();
    }

    private void refreshMem()
    {
        if (mHandler == null)
        {
            mHandler = new Handler() {

                final AdvancedTaskKiller this$0;

                public void handleMessage(Message message)
                {
                    try
                    {
                        String s = (new StringBuilder("Available Memory: ")).append(CommonLibrary.MemoryToString(CommonLibrary.getAvaliableMemory(_ActivityManager))).toString();
                        setTitle((new StringBuilder(String.valueOf(s))).append("  ").append(Setting.getAutoKillInfo()).toString());
                        return;
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                    }
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            };
        }
        mHandler.sendEmptyMessageDelayed(0, 700L);
    }

    private void selectOrUnselect(TaskListAdapters.ListViewItem listviewitem)
    {
        if (listviewitem.detailProcess.getSelected())
        {
            listviewitem.iconCheck.setImageResource(0x7f020000);
            listviewitem.detailProcess.setSelected(false);
            return;
        } else
        {
            listviewitem.iconCheck.setImageResource(0x7f020001);
            listviewitem.detailProcess.setSelected(true);
            return;
        }
    }

    private void sendBugReport()
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        Iterator iterator1;
        String s;
        stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder(String.valueOf(_LogResult))).append("\r\n").toString());
        PackageManager packagemanager = getApplicationContext().getPackageManager();
        ArrayList arraylist;
        BufferedReader bufferedreader;
        try
        {
            stringbuilder.append((new StringBuilder("ATK build ")).append(String.valueOf(packagemanager.getPackageInfo(getPackageName(), 8192).versionCode)).append("\r\n").toString());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            stringbuilder.append("Error: name not found");
        }
        stringbuilder.append((new StringBuilder("Device ")).append(Build.DEVICE).append("\r\n").toString());
        stringbuilder.append((new StringBuilder("SDK ")).append(android.os.Build.VERSION.SDK).append("\r\n").toString());
        stringbuilder.append((new StringBuilder("Release ")).append(android.os.Build.VERSION.RELEASE).append("\r\n").toString());
        stringbuilder.append(Setting.GetAllValues());
        stringbuilder.append("Unselected apps\r\n");
        stringbuilder.append(getValuesFromPreference(ProcessDetailInfo._SelectedAppSettings));
        stringbuilder.append("Ignored apps\r\n");
        stringbuilder.append(getValuesFromPreference(ProcessDetailInfo._IgnoredAppSettings));
        stringbuilder.append("Current running apps\r\n");
        iterator = _ActivityManager.getRunningAppProcesses().iterator();
_L7:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        iterator1 = CommonLibrary.GetRunningProcess(this, _ActivityManager).iterator();
_L8:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        if (Setting.IS_LOG_ENABLE)
        {
            stringbuilder.append(Log.GetAllLog(this));
        }
        arraylist = new ArrayList();
        arraylist.add("logcat");
        arraylist.add("-d");
        arraylist.add("-v");
        arraylist.add("long");
        arraylist.add("*:E");
        bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[])arraylist.toArray(new String[arraylist.size()])).getInputStream()), 4024);
_L9:
        s = bufferedreader.readLine();
        if (s != null) goto _L6; else goto _L5
_L5:
        _LogResult = stringbuilder.toString();
        return;
_L2:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        if (runningappprocessinfo != null && runningappprocessinfo.processName != null)
        {
            stringbuilder.append(runningappprocessinfo.processName);
            stringbuilder.append(" ");
            stringbuilder.append(CommonLibrary.GetAppUid(runningappprocessinfo));
            stringbuilder.append(" ");
            stringbuilder.append(runningappprocessinfo.pid);
            stringbuilder.append("\r\n");
        }
          goto _L7
_L4:
        ProcessDetailInfo processdetailinfo = (ProcessDetailInfo)iterator1.next();
        stringbuilder.append(processdetailinfo.getLabel());
        stringbuilder.append(" ");
        stringbuilder.append(processdetailinfo.getPackageName());
        stringbuilder.append("\r\n");
          goto _L8
_L6:
        stringbuilder.append(s);
        stringbuilder.append("\r\n");
          goto _L9
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L5
    }

    private void sendEmail(String s)
    {
        Intent intent;
        String s1;
        intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            "rechild.dev@gmail.com"
        });
        intent.putExtra("android.intent.extra.TEXT", s);
        s1 = "";
        String s2;
        ApplicationInfo applicationinfo = getPackageManager().getApplicationInfo(getPackageName(), 8192);
        s2 = (new StringBuilder()).append(applicationinfo.loadLabel(getPackageManager())).append(" Bug Report").toString();
        s1 = s2;
_L2:
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.setType("message/rfc882");
        Intent.createChooser(intent, "Choose Email Client");
        startActivity(intent);
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void showRunningServices()
    {
        try
        {
            Intent intent = new Intent();
            intent.setClassName("com.android.settings", "com.android.settings.RunningServices");
            startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            Toast.makeText(this, 0x7f060040, 0).show();
        }
    }

    private void switchTo(TaskListAdapters.ListViewItem listviewitem)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addFlags(0x10000000);
            intent.setClassName(listviewitem.detailProcess.getPackageName(), listviewitem.detailProcess.getBaseActivity());
            startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void uninstall(TaskListAdapters.ListViewItem listviewitem)
    {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse((new StringBuilder("package:")).append(listviewitem.detailProcess.getPackageName()).toString())));
    }

    public void getRunningProcess()
    {
        _DetailList = CommonLibrary.GetRunningProcess(this, _ActivityManager);
        _Adapter = new TaskListAdapters.ProcessListAdapter(this, _DetailList);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        new Setting(getSharedPreferences("AdvTaskKillerSettings", 0), this);
        if (Setting.AUTO_KILL_LEVEL > 0 && CommonLibrary.NextRun == null)
        {
            CommonLibrary.ScheduleAutoKill(this, false, Setting.AUTO_KILL_FREQUENCY);
        }
        setContentView(0x7f030008);
        _ActivityManager = (ActivityManager)getSystemService("activity");
        int i = getVersionCode();
        if (i != Setting.VERSION_CODE)
        {
            Setting.setVersionCode(i);
            showDialog(7);
        }
        loadAdmob();
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        default:
            return super.onCreateDialog(i);

        case 1: // '\001'
            View view1 = LayoutInflater.from(this).inflate(0x7f030006, null);
            return (new android.app.AlertDialog.Builder(this)).setView(view1).create();

        case 5: // '\005'
            View view = LayoutInflater.from(this).inflate(0x7f030006, null);
            ((TextView)view.findViewById(0x7f070016)).setText("Building system ignore list for first running!");
            return (new android.app.AlertDialog.Builder(this)).setView(view).create();

        case 6: // '\006'
            return (new android.app.AlertDialog.Builder(this)).setTitle(0x7f060035).setIcon(0x1080041).setMessage(0x7f060036).setCancelable(false).setNegativeButton("No, I want to force stop them", new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            }).setPositiveButton("Yes, Ignore service and front app", new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    Setting.setIgnoreServiceFrontApp(true);
                    killAllTasks();
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            }).create();

        case 7: // '\007'
            return (new android.app.AlertDialog.Builder(this)).setTitle(0x7f06003e).setIcon(0x1080041).setMessage(0x7f06003f).setCancelable(false).setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    showDialog(5);
                    (new IgnoreTask(null)).execute(new String[] {
                        ""
                    });
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            }).create();

        case 2: // '\002'
            return (new android.app.AlertDialog.Builder(this)).setTitle(0x7f060030).setIcon(0x1080041).setMessage(CommonLibrary.getStringFromAsset(this, "about.txt")).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            }).create();

        case 3: // '\003'
            return (new android.app.AlertDialog.Builder(this)).setTitle(0x7f060031).setIcon(0x1080041).setMessage(CommonLibrary.getStringFromAsset(this, "help.txt")).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                super();
            }
            }).create();

        case 4: // '\004'
            final View bugView = LayoutInflater.from(this).inflate(0x7f030001, null);
            return (new android.app.AlertDialog.Builder(this)).setView(bugView).setPositiveButton("Send via email", new android.content.DialogInterface.OnClickListener() {

                final AdvancedTaskKiller this$0;
                private final View val$bugView;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    showDialog(1);
                    EditText edittext = (EditText)bugView.findViewById(0x7f070005);
                    _LogResult = edittext.getText().toString();
                    (new SendBugReportTask(null)).execute(new String[] {
                        ""
                    });
                }

            
            {
                this$0 = AdvancedTaskKiller.this;
                bugView = view;
                super();
            }
            }).create();
        }
    }

    public boolean onCreateOptionsMenu(Menu menu1)
    {
        menu1.add(0, 0, 0, "Settings").setIcon(0x1080049);
        menu1.add(0, 1, 1, "Report Bug").setIcon(0x108003e);
        menu1.add(0, 2, 2, "Help").setIcon(0x1080040);
        menu1.add(0, 3, 3, "Info").setIcon(0x1080041);
        menu1.add(0, 4, 4, "Service").setIcon(0x1080057);
        menu1.add(0, 5, 5, "Exit").setIcon(0x1080038);
        if (Setting.IS_LOG_ENABLE)
        {
            menu1.add(0, 6, 6, "Log").setIcon(0x1080034);
        }
        return true;
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        doAction((TaskListAdapters.ListViewItem)view.getTag(), Setting.CLICK_ACTION);
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        TaskListAdapters.ListViewItem listviewitem = (TaskListAdapters.ListViewItem)view.getTag();
        if (Setting.LONG_PRESS_ACTION == 0 && getPackageName().equals(listviewitem.detailProcess.getPackageName()))
        {
            AutoStartReceiver.ClearNotification(this);
            finish();
        } else
        {
            doAction(listviewitem, Setting.LONG_PRESS_ACTION);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 6: default 48
    //                   0 55
    //                   1 65
    //                   2 73
    //                   3 83
    //                   4 91
    //                   5 98
    //                   6 109;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        showDialog(2);
_L10:
        return true;
_L2:
        CommonLibrary.InvokeActivity(this, com/rechild/advancedtaskkiller/NewSettings);
        continue; /* Loop/switch isn't completed */
_L3:
        showDialog(4);
        continue; /* Loop/switch isn't completed */
_L4:
        CommonLibrary.InvokeActivity(this, com/rechild/advancedtaskkiller/HelpActivity);
        continue; /* Loop/switch isn't completed */
_L5:
        showDialog(2);
        continue; /* Loop/switch isn't completed */
_L6:
        showRunningServices();
        continue; /* Loop/switch isn't completed */
_L7:
        AutoStartReceiver.ClearNotification(this);
        System.exit(0);
        continue; /* Loop/switch isn't completed */
_L8:
        CommonLibrary.InvokeActivity(this, com/rechild/advancedtaskkiller/LogActivity);
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        refresh();
    }

    public void refresh()
    {
        getRunningProcess();
        getListView().setAdapter(_Adapter);
        bindEvent();
        refreshMem();
        AutoStartReceiver.RefreshNotification(this);
    }
















}
