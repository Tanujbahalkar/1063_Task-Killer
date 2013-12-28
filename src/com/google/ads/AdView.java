// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import d;

// Referenced classes of package com.google.ads:
//            Ad, AdSize, AdRequest, AdListener

public class AdView extends RelativeLayout
    implements Ad
{

    private d a;

    public AdView(Activity activity, AdSize adsize, String s)
    {
        super(activity.getApplicationContext());
        if (!a(activity, adsize))
        {
            return;
        } else
        {
            a(activity, adsize, s);
            return;
        }
    }

    public AdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        if (attributeset == null) goto _L2; else goto _L1
_L1:
        String s = attributeset.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adSize");
        if (s != null) goto _L4; else goto _L3
_L3:
        a(context, "AdView missing required XML attribute \"adSize\".", AdSize.BANNER);
_L2:
        return;
_L4:
        AdSize adsize;
        String s1;
        String s2;
        if ("BANNER".equals(s))
        {
            adsize = AdSize.BANNER;
        } else
        if ("IAB_MRECT".equals(s))
        {
            adsize = AdSize.IAB_MRECT;
        } else
        if ("IAB_BANNER".equals(s))
        {
            adsize = AdSize.IAB_BANNER;
        } else
        if ("IAB_LEADERBOARD".equals(s))
        {
            adsize = AdSize.IAB_LEADERBOARD;
        } else
        {
            a(context, (new StringBuilder()).append("Invalid \"adSize\" value in XML layout: ").append(s).append(".").toString(), AdSize.BANNER);
            return;
        }
        s1 = attributeset.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adUnitId");
        if (s1 == null)
        {
            a(context, "AdView missing required XML attribute \"adUnitId\".", adsize);
            return;
        }
        if (isInEditMode())
        {
            a(context, "Ads by Google", -1, adsize);
            return;
        }
        if (!s1.startsWith("@string/"))
        {
            break MISSING_BLOCK_LABEL_399;
        }
        String s3 = s1.substring("@string/".length());
        String s4 = context.getPackageName();
        TypedValue typedvalue = new TypedValue();
        boolean flag;
        Activity activity;
        try
        {
            getResources().getValue((new StringBuilder()).append(s4).append(":string/").append(s3).toString(), typedvalue, true);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            a(context, (new StringBuilder()).append("Could not find resource for \"adUnitId\": \"").append(s1).append("\".").toString(), adsize);
            return;
        }
        if (typedvalue.string == null) goto _L6; else goto _L5
_L5:
        s2 = typedvalue.string.toString();
_L7:
        flag = attributeset.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", "loadAdOnCreate", false);
        if (context instanceof Activity)
        {
            activity = (Activity)context;
            if (a(context, adsize))
            {
                a(activity, adsize, s2);
                if (flag)
                {
                    loadAd(new AdRequest());
                    return;
                }
            }
        } else
        {
            com.google.ads.util.a.b("AdView was initialized with a Context that wasn't an Activity.");
            return;
        }
        if (true) goto _L2; else goto _L6
_L6:
        a(context, (new StringBuilder()).append("\"adUnitId\" was not a string: \"").append(s1).append("\".").toString(), adsize);
        s2 = s1;
          goto _L7
    }

    public AdView(Context context, AttributeSet attributeset, int i)
    {
        this(context, attributeset);
    }

    private void a(Activity activity, AdSize adsize, String s)
    {
        a = new d(activity, this, adsize, s);
        setGravity(17);
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
        int i = (int)TypedValue.applyDimension(1, adsize.getWidth(), activity.getResources().getDisplayMetrics());
        int j = (int)TypedValue.applyDimension(1, adsize.getHeight(), activity.getResources().getDisplayMetrics());
        addView(a.i(), i, j);
    }

    private void a(Context context, String s, int i, AdSize adsize)
    {
        if (getChildCount() == 0)
        {
            TextView textview = new TextView(context);
            textview.setGravity(17);
            textview.setText(s);
            textview.setTextColor(i);
            textview.setBackgroundColor(0xff000000);
            LinearLayout linearlayout = new LinearLayout(context);
            linearlayout.setGravity(17);
            LinearLayout linearlayout1 = new LinearLayout(context);
            linearlayout1.setGravity(17);
            linearlayout1.setBackgroundColor(i);
            int j = (int)TypedValue.applyDimension(1, adsize.getWidth(), context.getResources().getDisplayMetrics());
            int k = (int)TypedValue.applyDimension(1, adsize.getHeight(), context.getResources().getDisplayMetrics());
            linearlayout.addView(textview, j - 2, k - 2);
            linearlayout1.addView(linearlayout);
            addView(linearlayout1, j, k);
        }
    }

    private void a(Context context, String s, AdSize adsize)
    {
label0:
        {
            com.google.ads.util.a.b(s);
            a(context, s, 0xffff0000, adsize);
            if (!isInEditMode())
            {
                if (!(context instanceof Activity))
                {
                    break label0;
                }
                a((Activity)context, adsize, "");
            }
            return;
        }
        com.google.ads.util.a.b("AdView was initialized with a Context that wasn't an Activity.");
    }

    private boolean a(Context context, AdSize adsize)
    {
        if (!AdUtil.b(context))
        {
            a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adsize);
            return false;
        } else
        {
            return true;
        }
    }

    public void destroy()
    {
        a.b();
    }

    public boolean isReady()
    {
        if (a == null)
        {
            return false;
        } else
        {
            return a.o();
        }
    }

    public boolean isRefreshing()
    {
        return a.p();
    }

    public void loadAd(AdRequest adrequest)
    {
        if (a.e() == null)
        {
            com.google.ads.util.a.e("activity was null while checking permissions.");
            return;
        }
        if (isRefreshing())
        {
            a.c();
        }
        a.a(adrequest);
    }

    public void setAdListener(AdListener adlistener)
    {
        a.a(adlistener);
    }

    public void stopLoading()
    {
        a.y();
    }
}
