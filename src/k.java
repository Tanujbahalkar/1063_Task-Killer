// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class k
    implements i
{

    public k()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s;
        f f1;
        s = (String)hashmap.get("u");
        if (s == null)
        {
            com.google.ads.util.a.e("Could not get URL from click gmsg.");
            return;
        }
        String s1 = (String)hashmap.get("ai");
        d1.l().a(s1);
        f1 = d1.l();
        if (f1 == null) goto _L2; else goto _L1
_L1:
        Uri uri;
        String s2;
        uri = Uri.parse(s);
        s2 = uri.getHost();
        if (s2 == null || !s2.toLowerCase().endsWith(".admob.com")) goto _L2; else goto _L3
_L3:
        String s3 = uri.getPath();
        if (s3 == null) goto _L5; else goto _L4
_L4:
        String as[] = s3.split("/");
        if (as.length < 4) goto _L5; else goto _L6
_L6:
        String s4 = (new StringBuilder()).append(as[2]).append("/").append(as[3]).toString();
_L8:
        f1.b(s4);
_L2:
        (new Thread(new w(s, webview.getContext().getApplicationContext()))).start();
        return;
_L5:
        s4 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
