// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.InterstitialAd;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class c extends AsyncTask
{
    private final class a extends Exception
    {

        final c a;

        public a(String s)
        {
            a = c.this;
            super(s);
        }
    }

    private final class b extends Exception
    {

        final c a;

        public b(String s)
        {
            a = c.this;
            super(s);
        }
    }


    String a;
    public String b;
    public com.google.ads.AdRequest.ErrorCode c;
    private String d;
    private b e;
    private d f;
    private WebView g;
    private boolean h;
    private boolean i;

    public c(d d1)
    {
        f = d1;
        b = null;
        a = null;
        c = null;
        h = false;
        i = false;
        Activity activity = d1.e();
        if (activity != null)
        {
            g = new WebView(activity.getApplicationContext());
            g.getSettings().setJavaScriptEnabled(true);
            g.setWebViewClient(new h(d1, a.a, false, false));
            AdUtil.a(g);
            g.setVisibility(8);
            g.setWillNotDraw(true);
            e = new b(this, d1, activity.getApplicationContext());
            return;
        } else
        {
            g = null;
            e = null;
            com.google.ads.util.a.e("activity was null while trying to create an AdLoader.");
            return;
        }
    }

    private transient com.google.ads.AdRequest.ErrorCode a(AdRequest aadrequest[])
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.AdRequest.ErrorCode errorcode;
        if (g != null && e != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        com.google.ads.util.a.e("adRequestWebView was null while trying to load an ad.");
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode;
        AdRequest adrequest;
        Activity activity;
        adrequest = aadrequest[0];
        activity = f.e();
        if (activity != null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        com.google.ads.AdRequest.ErrorCode errorcode1;
        com.google.ads.util.a.e("activity was null while forming an ad request.");
        errorcode1 = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode1;
        Exception exception;
        exception;
        throw exception;
        String s = a(adrequest, activity);
        long l;
        long l1;
        g.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
        l = f.n();
        l1 = SystemClock.elapsedRealtime();
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        wait(l);
        com.google.ads.AdRequest.ErrorCode errorcode10;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        errorcode10 = c;
        this;
        JVM INSTR monitorexit ;
        return errorcode10;
        b b1;
        b1;
        com.google.ads.AdRequest.ErrorCode errorcode3;
        com.google.ads.util.a.b("Unable to connect to network.", b1);
        errorcode3 = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode3;
        a a1;
        a1;
        com.google.ads.AdRequest.ErrorCode errorcode2;
        com.google.ads.util.a.b("Caught internal exception.", a1);
        errorcode2 = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode2;
        InterruptedException interruptedexception2;
        interruptedexception2;
        com.google.ads.AdRequest.ErrorCode errorcode11;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while getting the URL: ").append(interruptedexception2).toString());
        errorcode11 = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode11;
        com.google.ads.AdRequest.ErrorCode errorcode9;
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while getting the URL.").toString());
        errorcode9 = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode9;
        long l2;
        String as[] = new String[1];
        as[0] = b;
        publishProgress(as);
        l2 = SystemClock.elapsedRealtime();
        long l3;
        l3 = l - (l2 - l1);
        if (l3 <= 0L)
        {
            break MISSING_BLOCK_LABEL_304;
        }
        wait(l3);
        com.google.ads.AdRequest.ErrorCode errorcode7;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_357;
        }
        errorcode7 = c;
        this;
        JVM INSTR monitorexit ;
        return errorcode7;
        InterruptedException interruptedexception1;
        interruptedexception1;
        com.google.ads.AdRequest.ErrorCode errorcode8;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while getting the HTML: ").append(interruptedexception1).toString());
        errorcode8 = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode8;
        com.google.ads.AdRequest.ErrorCode errorcode6;
        if (a != null)
        {
            break MISSING_BLOCK_LABEL_402;
        }
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while getting the HTML.").toString());
        errorcode6 = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode6;
        g g1;
        long l4;
        g1 = f.i();
        f.j().a();
        g1.loadDataWithBaseURL(d, a, "text/html", "utf-8", null);
        l4 = SystemClock.elapsedRealtime();
        long l5;
        l5 = l - (l4 - l1);
        if (l5 <= 0L)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        wait(l5);
        if (!i)
        {
            break MISSING_BLOCK_LABEL_518;
        }
        this;
        JVM INSTR monitorexit ;
        return null;
        InterruptedException interruptedexception;
        interruptedexception;
        com.google.ads.AdRequest.ErrorCode errorcode5;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while loading the HTML: ").append(interruptedexception).toString());
        g1.stopLoading();
        errorcode5 = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode5;
        com.google.ads.AdRequest.ErrorCode errorcode4;
        g1.stopLoading();
        h = true;
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while loading the HTML.").toString());
        errorcode4 = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
        return errorcode4;
    }

    private String a(AdRequest adrequest, Activity activity)
        throws a, b
    {
        Context context = activity.getApplicationContext();
        Map map = adrequest.getRequestMap(context);
        f f1 = f.l();
        long l = f1.h();
        if (l > 0L)
        {
            map.put("prl", Long.valueOf(l));
        }
        String s = f1.g();
        if (s != null)
        {
            map.put("ppcl", s);
        }
        String s1 = f1.f();
        if (s1 != null)
        {
            map.put("pcl", s1);
        }
        long l1 = f1.e();
        if (l1 > 0L)
        {
            map.put("pcc", Long.valueOf(l1));
        }
        map.put("preqs", Long.valueOf(f.i()));
        String s2 = f1.j();
        if (s2 != null)
        {
            map.put("pai", s2);
        }
        if (f1.k())
        {
            map.put("aoi_timeout", "true");
        }
        if (f1.m())
        {
            map.put("aoi_nofill", "true");
        }
        String s3 = f1.p();
        if (s3 != null)
        {
            map.put("pit", s3);
        }
        f1.a();
        f1.d();
        String s5;
        PackageInfo packageinfo;
        int j;
        String s6;
        if (f.f() instanceof InterstitialAd)
        {
            map.put("format", "interstitial_mb");
        } else
        {
            AdSize adsize = f.k();
            String s4 = adsize.toString();
            if (s4 != null)
            {
                map.put("format", s4);
            } else
            {
                HashMap hashmap = new HashMap();
                hashmap.put("w", Integer.valueOf(adsize.getWidth()));
                hashmap.put("h", Integer.valueOf(adsize.getHeight()));
                map.put("ad_frame", hashmap);
            }
        }
        map.put("slotname", f.h());
        map.put("js", "afma-sdk-a-v4.1.0");
        s5 = context.getPackageName();
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s5, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new a("NameNotFound!");
        }
        j = packageinfo.versionCode;
        map.put("msid", context.getPackageName());
        map.put("app_name", (new StringBuilder()).append(j).append(".android.").append(context.getPackageName()).toString());
        map.put("isu", AdUtil.a(context));
        s6 = AdUtil.d(context);
        if (s6 == null)
        {
            throw new b("NETWORK_ERROR");
        }
        map.put("net", s6);
        String s7 = AdUtil.e(context);
        if (s7 != null && s7.length() != 0)
        {
            map.put("cap", s7);
        }
        map.put("u_audio", Integer.valueOf(AdUtil.f(context).ordinal()));
        map.put("u_so", AdUtil.g(context));
        DisplayMetrics displaymetrics = AdUtil.a(activity);
        map.put("u_sd", Float.valueOf(displaymetrics.density));
        map.put("u_h", Integer.valueOf((int)((float)displaymetrics.heightPixels / displaymetrics.density)));
        map.put("u_w", Integer.valueOf((int)((float)displaymetrics.widthPixels / displaymetrics.density)));
        map.put("hl", Locale.getDefault().getLanguage());
        if (AdUtil.a())
        {
            map.put("simulator", Integer.valueOf(1));
        }
        String s8 = AdUtil.a(map);
        String s9 = (new StringBuilder()).append("<html><head><script src=\"http://www.gstatic.com/afma/sdk-core-v40.js\"></script><script>AFMA_buildAdURL(").append(s8).append(");").append("</script></head><body></body></html>").toString();
        com.google.ads.util.a.c((new StringBuilder()).append("adRequestUrlHtml: ").append(s9).toString());
        return s9;
    }

    final void a()
    {
        this;
        JVM INSTR monitorenter ;
        i = true;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(com.google.ads.AdRequest.ErrorCode errorcode)
    {
        this;
        JVM INSTR monitorenter ;
        c = errorcode;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        b = s;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        d = s1;
        a = s;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a((AdRequest[])aobj);
    }

    protected final void onCancelled()
    {
        com.google.ads.util.a.a("AdLoader cancelled.");
        g.stopLoading();
        g.destroy();
        e.cancel(false);
    }

    protected final void onPostExecute(Object obj)
    {
        com.google.ads.AdRequest.ErrorCode errorcode = (com.google.ads.AdRequest.ErrorCode)obj;
        this;
        JVM INSTR monitorenter ;
        if (errorcode != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        f.q();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        g.stopLoading();
        g.destroy();
        e.cancel(false);
        if (h)
        {
            f.i().setVisibility(8);
        }
        f.a(errorcode);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        String as[] = (String[])aobj;
        b b1 = e;
        String as1[] = new String[1];
        as1[0] = as[0];
        b1.execute(as1);
    }
}
