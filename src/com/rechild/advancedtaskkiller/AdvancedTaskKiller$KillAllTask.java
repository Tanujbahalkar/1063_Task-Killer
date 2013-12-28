// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListView;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller, CommonLibrary

private class this._cls0 extends AsyncTask
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
            CommonLibrary.KillProcess(AdvancedTaskKiller.this, AdvancedTaskKiller.access$0(AdvancedTaskKiller.this), _ActivityManager, true);
            getRunningProcess();
        }
        catch (Exception exception)
        {
            Log.e("ATK", exception.toString());
        }
        return "OK";
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        AdvancedTaskKiller.access$1(AdvancedTaskKiller.this, new pter(AdvancedTaskKiller.this, AdvancedTaskKiller.access$0(AdvancedTaskKiller.this)));
        AdvancedTaskKiller.access$2(AdvancedTaskKiller.this).setAdapter(AdvancedTaskKiller.access$3(AdvancedTaskKiller.this));
        AdvancedTaskKiller.access$4(AdvancedTaskKiller.this);
        Log.e("ATK", "Manually kill ends");
    }

    private pter()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }
}
