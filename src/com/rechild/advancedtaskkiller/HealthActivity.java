// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;

public class HealthActivity extends Activity
{

    public HealthActivity()
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
        setContentView(0x7f030002);
        findViewById(0x7f070007).setOnClickListener(new android.view.View.OnClickListener() {

            final HealthActivity this$0;

            public void onClick(View view)
            {
                try
                {
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setClassName("com.android.settings", "com.android.settings.battery_history.BatteryHistory");
                    startActivity(intent);
                    return;
                }
                catch (Exception exception)
                {
                    Toast.makeText(HealthActivity.this, 0x7f060040, 0).show();
                }
            }

            
            {
                this$0 = HealthActivity.this;
                super();
            }
        });
        loadAdmob();
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
