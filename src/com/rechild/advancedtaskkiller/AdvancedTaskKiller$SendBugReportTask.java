// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.os.AsyncTask;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller

private class <init> extends AsyncTask
{

    final AdvancedTaskKiller this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient String doInBackground(String as[])
    {
        try
        {
            AdvancedTaskKiller.access$5(AdvancedTaskKiller.this);
        }
        catch (Exception exception)
        {
            return null;
        }
        return "OK";
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        removeDialog(1);
        if (s != null)
        {
            AdvancedTaskKiller.access$7(AdvancedTaskKiller.this, AdvancedTaskKiller.access$6(AdvancedTaskKiller.this));
        }
    }

    private I()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
