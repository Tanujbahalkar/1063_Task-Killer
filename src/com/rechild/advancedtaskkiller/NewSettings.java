// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, CommonLibrary, AutoStartReceiver

public class NewSettings extends PreferenceActivity
{

    private ListPreference mAutoKillLevel;
    private ListPreference mKillFrequency;
    private CheckBoxPreference mNotification;

    public NewSettings()
    {
    }

    private void setAutoKill()
    {
        if (Setting.AUTO_KILL_LEVEL > 0)
        {
            CommonLibrary.ScheduleAutoKill(this, false, Long.valueOf(Setting.AUTO_KILL_FREQUENCY).longValue());
            return;
        } else
        {
            CommonLibrary.ScheduleAutoKill(this, true, Long.valueOf(Setting.AUTO_KILL_FREQUENCY).longValue());
            return;
        }
    }

    private void setKillFrequencyEnableOrDisable(String s)
    {
        if (s.equals(String.valueOf(0)))
        {
            mKillFrequency.setEnabled(false);
            return;
        } else
        {
            mKillFrequency.setEnabled(true);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f040001);
        mNotification = (CheckBoxPreference)findPreference("IsNotificationEnabled");
        mNotification.setOnPreferenceClickListener(new android.preference.Preference.OnPreferenceClickListener() {

            final NewSettings this$0;

            public boolean onPreferenceClick(Preference preference)
            {
                Setting.IS_NOTIFICATION_ENABLE = mNotification.isChecked();
                AutoStartReceiver.RefreshNotification(NewSettings.this);
                return true;
            }

            
            {
                this$0 = NewSettings.this;
                super();
            }
        });
        if (Setting.INCLUDE_AUTOKILL_FEATURE)
        {
            mAutoKillLevel = (ListPreference)findPreference("AutoKillLevelValue");
            mAutoKillLevel.setOnPreferenceChangeListener(new android.preference.Preference.OnPreferenceChangeListener() {

                final NewSettings this$0;

                public boolean onPreferenceChange(Preference preference, Object obj)
                {
                    android.content.SharedPreferences.Editor editor = preference.getSharedPreferences().edit();
                    editor.putString("AutoKillLevelValue", obj.toString());
                    editor.commit();
                    Setting.AUTO_KILL_LEVEL = Integer.parseInt(obj.toString());
                    setAutoKill();
                    setKillFrequencyEnableOrDisable(obj.toString());
                    return true;
                }

            
            {
                this$0 = NewSettings.this;
                super();
            }
            });
            mKillFrequency = (ListPreference)findPreference("AutoKillFrequecyValue");
            mKillFrequency.setOnPreferenceChangeListener(new android.preference.Preference.OnPreferenceChangeListener() {

                final NewSettings this$0;

                public boolean onPreferenceChange(Preference preference, Object obj)
                {
                    android.content.SharedPreferences.Editor editor = preference.getSharedPreferences().edit();
                    editor.putString("AutoKillFrequecyValue", obj.toString());
                    editor.commit();
                    Setting.AUTO_KILL_FREQUENCY = Long.parseLong(obj.toString());
                    setAutoKill();
                    return true;
                }

            
            {
                this$0 = NewSettings.this;
                super();
            }
            });
            setKillFrequencyEnableOrDisable(mAutoKillLevel.getValue());
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Setting.restoreSettings(this);
    }



}
