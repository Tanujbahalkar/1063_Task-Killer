// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.SystemClock;
import com.google.ads.util.a;
import java.util.LinkedList;

public final class f
{

    private static long f = 0L;
    public String a;
    private LinkedList b;
    private long c;
    private long d;
    private LinkedList e;
    private String g;
    private boolean h;
    private boolean i;

    f()
    {
        h = false;
        i = false;
        b = new LinkedList();
        e = new LinkedList();
        a();
    }

    static long i()
    {
        return f;
    }

    final void a()
    {
        b.clear();
        c = 0L;
        d = 0L;
        e.clear();
        g = null;
        h = false;
        i = false;
    }

    public final void a(String s)
    {
        com.google.ads.util.a.d((new StringBuilder()).append("Prior ad identifier = ").append(s).toString());
        g = s;
    }

    final void b()
    {
        com.google.ads.util.a.d("Ad clicked.");
        b.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    public final void b(String s)
    {
        com.google.ads.util.a.d((new StringBuilder()).append("Prior impression ticket = ").append(s).toString());
        a = s;
    }

    final void c()
    {
        com.google.ads.util.a.d("Ad request loaded.");
        c = SystemClock.elapsedRealtime();
    }

    final void d()
    {
        com.google.ads.util.a.d("Ad request started.");
        d = SystemClock.elapsedRealtime();
        f = 1L + f;
    }

    final long e()
    {
        if (b.size() != e.size())
        {
            return -1L;
        } else
        {
            return (long)b.size();
        }
    }

    final String f()
    {
        if (b.isEmpty() || b.size() != e.size())
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i1 = 0; i1 < b.size(); i1++)
        {
            if (i1 != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Long.toString(((Long)e.get(i1)).longValue() - ((Long)b.get(i1)).longValue()));
        }

        return stringbuilder.toString();
    }

    final String g()
    {
        if (b.isEmpty())
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i1 = 0; i1 < b.size(); i1++)
        {
            if (i1 != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Long.toString(((Long)b.get(i1)).longValue() - c));
        }

        return stringbuilder.toString();
    }

    final long h()
    {
        return c - d;
    }

    final String j()
    {
        return g;
    }

    final boolean k()
    {
        return h;
    }

    final void l()
    {
        com.google.ads.util.a.d("Interstitial network error.");
        h = true;
    }

    final boolean m()
    {
        return i;
    }

    final void n()
    {
        com.google.ads.util.a.d("Interstitial no fill.");
        i = true;
    }

    public final void o()
    {
        com.google.ads.util.a.d("Landing page dismissed.");
        e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    final String p()
    {
        return a;
    }

}
