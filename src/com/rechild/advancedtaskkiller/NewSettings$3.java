// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.SharedPreferences;
import android.preference.Preference;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            NewSettings, Setting

class this._cls0
    implements android.preference.referenceChangeListener
{

    final NewSettings this$0;

    public boolean onPreferenceChange(Preference preference, Object obj)
    {
        android.content.ces.Editor editor = preference.getSharedPreferences().edit();
        editor.putString("AutoKillFrequecyValue", obj.toString());
        editor.commit();
        Setting.AUTO_KILL_FREQUENCY = Long.parseLong(obj.toString());
        NewSettings.access$1(NewSettings.this);
        return true;
    }

    ngeListener()
    {
        this$0 = NewSettings.this;
        super();
    }
}
