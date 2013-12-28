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
        AdvancedTaskKiller.access$8(AdvancedTaskKiller.this);
        return "OK";
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        removeDialog(5);
        refresh();
    }

    private ()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
