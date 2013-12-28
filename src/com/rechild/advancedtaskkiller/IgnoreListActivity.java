// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            ProcessDetailInfo

public class IgnoreListActivity extends Activity
    implements android.widget.AdapterView.OnItemClickListener
{

    private static android.content.SharedPreferences.Editor _IgnoredAppEditor;
    private static SharedPreferences _IgnoredAppSettings;
    private TaskListAdapters.ProcessListAdapter _Adapter;
    private ArrayList _DetailList;
    private PackageManager _PackageManager;

    public IgnoreListActivity()
    {
    }

    private void SetIgnore(String s)
    {
        try
        {
            _PackageManager.getPackageInfo(s, 8192);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return;
        }
        if (!_IgnoredAppSettings.contains(s))
        {
            _IgnoredAppEditor.putBoolean(s, true);
        }
    }

    private void buildRecommendedIgnoreList()
    {
        SetIgnore("com.android.inputmethod.latin");
        SetIgnore("com.android.inputmethod.pinyin");
        SetIgnore("com.android.alarmclock");
        SetIgnore("com.android.providers.media");
        SetIgnore("com.android.mms");
        SetIgnore("com.android.deskclock");
        SetIgnore("com.android.calendar");
        SetIgnore("com.android.voicedialer");
        SetIgnore("android.process.media");
        SetIgnore("com.android.providers.calendar");
        SetIgnore("com.android.clock");
        SetIgnore("com.android.providers.telephony");
        SetIgnore("com.android.heroled");
        SetIgnore("com.android.music");
        SetIgnore("com.android.vending");
        SetIgnore("com.android.wallpaper");
        SetIgnore("com.android.bluetooth");
        SetIgnore("com.google.android.inputmethod.pinyin");
        SetIgnore("com.google.android.providers.gmail");
        SetIgnore("com.google.android.apps.gtalkservice");
        SetIgnore("com.google.android.googleapps");
        SetIgnore("com.google.process.gapps");
        SetIgnore("com.google.android.talk");
        SetIgnore("com.google.android.gm");
        SetIgnore("com.google.android.apps.uploader");
        SetIgnore("com.google.android.apps.maps:FriendService");
        SetIgnore("com.htc.AddProgramWidget");
        SetIgnore("com.htc.android.worldclock");
        SetIgnore("com.htc.photo.widgets");
        SetIgnore("com.htc.music");
        SetIgnore("com.htc.android.mail");
        SetIgnore("com.htc.elroy.Weather");
        SetIgnore("com.htc.calendar");
        SetIgnore("com.htc.htctwitter");
        SetIgnore("com.htc.socialnetwork.accountmanager");
        SetIgnore("com.motorola.widgetapp.weather");
        SetIgnore("com.motorola.android.audioeffect");
        SetIgnore("com.motorola.widget.apncontrol");
        SetIgnore("com.motorola.thumbnailservice");
        SetIgnore("com.motorola.usb");
        SetIgnore("com.motorola.atcmd");
        SetIgnore("com.motorola.android.motophoneportal.androidui");
        SetIgnore("com.motorola.android.vvm");
        SetIgnore("com.timsu.astrid");
        SetIgnore("com.weather.Weather");
        SetIgnore("jp.aplix.midp");
        SetIgnore("jp.aplix.midp.factory");
        SetIgnore("com.svox.pico");
        SetIgnore("com.tmobile.myfaves");
        SetIgnore("com.mclaughlin.HeroLED");
        SetIgnore("com.motorola.blur.contacts");
        _IgnoredAppEditor.commit();
    }

    private void clearIgnoreList()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("IgnoredPackage", 0).edit();
        editor.clear();
        editor.commit();
        Toast.makeText(this, 0x7f06000b, 0).show();
    }

    private void refresh()
    {
        _DetailList = new ArrayList();
        Iterator iterator = _IgnoredAppSettings.getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                _Adapter = new TaskListAdapters.ProcessListAdapter(this, _DetailList);
                _Adapter.setCheckBoxEnable(false);
                ListView listview = (ListView)findViewById(0x7f070011);
                listview.setOnItemClickListener(this);
                listview.setAdapter(_Adapter);
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            try
            {
                ProcessDetailInfo processdetailinfo = new ProcessDetailInfo(this, (String)entry.getKey());
                _DetailList.add(processdetailinfo);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        } while (true);
    }

    private void validateIgnoreList()
    {
        Iterator iterator = _IgnoredAppSettings.getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                _IgnoredAppEditor.commit();
                return;
            }
            String s = (String)((java.util.Map.Entry)iterator.next()).getKey();
            try
            {
                _PackageManager.getPackageInfo(s, 8192);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                _IgnoredAppEditor.remove(s);
            }
        } while (true);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        _IgnoredAppSettings = getSharedPreferences("IgnoredPackage", 0);
        _IgnoredAppEditor = _IgnoredAppSettings.edit();
        setContentView(0x7f030004);
        ((Button)findViewById(0x7f07000f)).setOnClickListener(new android.view.View.OnClickListener() {

            final IgnoreListActivity this$0;

            public void onClick(View view)
            {
                clearIgnoreList();
                refresh();
            }

            
            {
                this$0 = IgnoreListActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f070010)).setOnClickListener(new android.view.View.OnClickListener() {

            final IgnoreListActivity this$0;

            public void onClick(View view)
            {
                buildRecommendedIgnoreList();
                refresh();
            }

            
            {
                this$0 = IgnoreListActivity.this;
                super();
            }
        });
        _PackageManager = getPackageManager();
        refresh();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        TaskListAdapters.ListViewItem listviewitem = (TaskListAdapters.ListViewItem)view.getTag();
        _IgnoredAppEditor.remove(listviewitem.detailProcess.getProcessName());
        _IgnoredAppEditor.commit();
        refresh();
    }



}
