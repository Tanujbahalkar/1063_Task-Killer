// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.preference.CheckBoxPreference;
import android.preference.Preference;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            NewSettings, Setting, AutoStartReceiver

class this._cls0
    implements android.preference.referenceClickListener
{

    final NewSettings this$0;

    public boolean onPreferenceClick(Preference preference)
    {
        Setting.IS_NOTIFICATION_ENABLE = NewSettings.access$0(NewSettings.this).isChecked();
        AutoStartReceiver.RefreshNotification(NewSettings.this);
        return true;
    }

    ver()
    {
        this$0 = NewSettings.this;
        super();
    }
}
