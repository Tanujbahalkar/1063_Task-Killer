// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            CommonLibrary

public class HelpActivity extends Activity
{

    public HelpActivity()
    {
    }

    private void loadAdmob()
    {
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f070009);
        AdView adview = new AdView(this, AdSize.BANNER, "a14a6ac7fd9f387");
        linearlayout.addView(adview);
        linearlayout.setVisibility(0);
        adview.loadAd(new AdRequest());
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030003);
        TextView textview = (TextView)findViewById(0x7f07000b);
        String s = CommonLibrary.getStringFromAsset(this, "help.txt");
        if (s != null)
        {
            textview.setText(s);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }
}
