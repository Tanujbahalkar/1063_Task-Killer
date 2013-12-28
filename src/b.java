// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.AsyncTask;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.StringTokenizer;

public final class b extends AsyncTask
{

    private c a;
    private d b;
    private Context c;

    b(c c1, d d1, Context context)
    {
        a = c1;
        b = d1;
        c = context;
    }

    private transient Void a(String as[])
    {
        String s = as[0];
_L1:
        int i;
        StringBuilder stringbuilder;
        HttpURLConnection httpurlconnection;
        BufferedReader bufferedreader;
        String s1;
        try
        {
            httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
            AdUtil.a(httpurlconnection, c);
            httpurlconnection.setInstanceFollowRedirects(false);
            httpurlconnection.connect();
            i = httpurlconnection.getResponseCode();
        }
        catch (MalformedURLException malformedurlexception)
        {
            com.google.ads.util.a.a("Received malformed ad url from javascript.", malformedurlexception);
            a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
            return null;
        }
        catch (IOException ioexception)
        {
            com.google.ads.util.a.c("IOException connecting to ad url.", ioexception);
            a.a(com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR);
            return null;
        }
        if (300 > i || i >= 400)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        s = httpurlconnection.getHeaderField("Location");
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        com.google.ads.util.a.c((new StringBuilder()).append("Could not get redirect location from a ").append(i).append(" redirect.").toString());
        a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
        return null;
        a(httpurlconnection);
          goto _L1
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_335;
        }
        a(httpurlconnection);
        bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection.getInputStream()), 4096);
        stringbuilder = new StringBuilder();
_L2:
        s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        stringbuilder.append(s1);
        stringbuilder.append("\n");
          goto _L2
        String s2;
        s2 = stringbuilder.toString();
        com.google.ads.util.a.a((new StringBuilder()).append("Response content is: ").append(s2).toString());
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        if (s2.trim().length() > 0)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        com.google.ads.util.a.a((new StringBuilder()).append("Response message is null or zero length: ").append(s2).toString());
        a.a(com.google.ads.AdRequest.ErrorCode.NO_FILL);
        return null;
        a.a(s2, s);
        return null;
        if (i != 400)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        com.google.ads.util.a.c("Bad request");
        a.a(com.google.ads.AdRequest.ErrorCode.INVALID_REQUEST);
        return null;
        com.google.ads.util.a.c((new StringBuilder()).append("Invalid response code: ").append(i).toString());
        a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
        return null;
    }

    private void a(HttpURLConnection httpurlconnection)
    {
        String s = httpurlconnection.getHeaderField("X-Afma-Tracking-Urls");
        if (s != null)
        {
            String s4;
            for (StringTokenizer stringtokenizer = new StringTokenizer(s); stringtokenizer.hasMoreTokens(); b.a(s4))
            {
                s4 = stringtokenizer.nextToken();
            }

        }
        b(httpurlconnection);
        String s1 = httpurlconnection.getHeaderField("X-Afma-Refresh-Rate");
        String s2;
        String s3;
        if (s1 != null)
        {
            try
            {
                float f1 = Float.parseFloat(s1);
                b.a(f1);
                if (!b.p())
                {
                    b.d();
                }
            }
            catch (NumberFormatException numberformatexception1)
            {
                com.google.ads.util.a.c((new StringBuilder()).append("Could not get refresh value: ").append(s1).toString(), numberformatexception1);
            }
        }
        s2 = httpurlconnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (s2 != null)
        {
            try
            {
                float f = Float.parseFloat(s2);
                b.a((long)(f * 1000F));
            }
            catch (NumberFormatException numberformatexception)
            {
                com.google.ads.util.a.c((new StringBuilder()).append("Could not get timeout value: ").append(s2).toString(), numberformatexception);
            }
        }
        s3 = httpurlconnection.getHeaderField("X-Afma-Orientation");
        if (s3 != null)
        {
            if (s3.equals("portrait"))
            {
                b.a(1);
            } else
            if (s3.equals("landscape"))
            {
                b.a(0);
                return;
            }
        }
    }

    private void b(HttpURLConnection httpurlconnection)
    {
        String s = httpurlconnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (s != null)
        {
            String s1;
            for (StringTokenizer stringtokenizer = new StringTokenizer(s); stringtokenizer.hasMoreTokens(); b.b(s1))
            {
                s1 = stringtokenizer.nextToken();
            }

        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }
}
