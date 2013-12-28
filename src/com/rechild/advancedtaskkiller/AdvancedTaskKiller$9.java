// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller, CommonLibrary, Setting

class this._cls0 extends Handler
{

    final AdvancedTaskKiller this$0;

    public void handleMessage(Message message)
    {
        try
        {
            String s = (new StringBuilder("Available Memory: ")).append(CommonLibrary.MemoryToString(CommonLibrary.getAvaliableMemory(_ActivityManager))).toString();
            setTitle((new StringBuilder(String.valueOf(s))).append("  ").append(Setting.getAutoKillInfo()).toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    _cls9()
    {
        this$0 = AdvancedTaskKiller.this;
        super();
    }
}
