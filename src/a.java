// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class a
{

    public static final Map a;
    public static final Map b;

    private a()
    {
    }

    public static void a(WebView webview)
    {
        com.google.ads.util.a.d("Calling onshow.");
        a(webview, "onshow", "{'version': 'afma-sdk-a-v4.1.0'}");
    }

    public static void a(WebView webview, String s1)
    {
        webview.loadUrl((new StringBuilder()).append("javascript:").append(s1).toString());
    }

    private static void a(WebView webview, String s1, String s2)
    {
        if (s2 != null)
        {
            a(webview, (new StringBuilder()).append("AFMA_ReceiveMessage").append("('").append(s1).append("', ").append(s2).append(");").toString());
            return;
        } else
        {
            a(webview, (new StringBuilder()).append("AFMA_ReceiveMessage").append("('").append(s1).append("');").toString());
            return;
        }
    }

    public static void a(WebView webview, Map map)
    {
        a(webview, "openableURLs", (new JSONObject(map)).toString());
    }

    static void a(d d, Map map, Uri uri, WebView webview)
    {
        HashMap hashmap = AdUtil.b(uri);
        if (hashmap == null)
        {
            com.google.ads.util.a.e("An error occurred while parsing the message parameters.");
            return;
        }
        String s1;
        if (c(uri))
        {
            String s2 = uri.getHost();
            if (s2 == null)
            {
                com.google.ads.util.a.e("An error occurred while parsing the AMSG parameters.");
                s1 = null;
            } else
            if (s2.equals("launch"))
            {
                hashmap.put("a", "intent");
                hashmap.put("u", hashmap.get("url"));
                hashmap.remove("url");
                s1 = "/open";
            } else
            if (s2.equals("closecanvas"))
            {
                s1 = "/close";
            } else
            if (s2.equals("log"))
            {
                s1 = "/log";
            } else
            {
                com.google.ads.util.a.e((new StringBuilder()).append("An error occurred while parsing the AMSG: ").append(uri.toString()).toString());
                s1 = null;
            }
        } else
        if (b(uri))
        {
            s1 = uri.getPath();
        } else
        {
            com.google.ads.util.a.e("Message was neither a GMSG nor an AMSG.");
            s1 = null;
        }
        if (s1 == null)
        {
            com.google.ads.util.a.e("An error occurred while parsing the message.");
            return;
        }
        i i1 = (i)map.get(s1);
        if (i1 == null)
        {
            com.google.ads.util.a.e((new StringBuilder()).append("No AdResponse found, <message: ").append(s1).append(">").toString());
            return;
        } else
        {
            i1.a(d, hashmap, webview);
            return;
        }
    }

    public static boolean a(Uri uri)
    {
        if (uri == null || !uri.isHierarchical())
        {
            return false;
        }
        return b(uri) || c(uri);
    }

    public static void b(WebView webview)
    {
        com.google.ads.util.a.d("Calling onhide.");
        a(webview, "onhide", null);
    }

    private static boolean b(Uri uri)
    {
        String s1 = uri.getScheme();
        if (s1 == null || !s1.equals("gmsg"))
        {
            return false;
        }
        String s2 = uri.getAuthority();
        return s2 != null && s2.equals("mobileads.google.com");
    }

    private static boolean c(Uri uri)
    {
        String s1 = uri.getScheme();
        return s1 != null && s1.equals("admob");
    }

    static 
    {
        HashMap hashmap = new HashMap();
        hashmap.put("/invalidRequest", new o());
        hashmap.put("/loadAdURL", new p());
        a = Collections.unmodifiableMap(hashmap);
        HashMap hashmap1 = new HashMap();
        hashmap1.put("/open", new r());
        hashmap1.put("/canOpenURLs", new j());
        hashmap1.put("/close", new l());
        hashmap1.put("/evalInOpener", new m());
        hashmap1.put("/log", new q());
        hashmap1.put("/click", new k());
        hashmap1.put("/httpTrack", new n());
        hashmap1.put("/reloadRequest", new s());
        hashmap1.put("/settings", new t());
        hashmap1.put("/touch", new u());
        hashmap1.put("/video", new v());
        b = Collections.unmodifiableMap(hashmap1);
    }
}
