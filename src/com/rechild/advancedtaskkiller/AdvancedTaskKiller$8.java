// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.DialogInterface;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            AdvancedTaskKiller

class val.bugView
    implements android.content.ckListener
{

    final AdvancedTaskKiller this$0;
    private final View val$bugView;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        showDialog(1);
        EditText edittext = (EditText)val$bugView.findViewById(0x7f070005);
        AdvancedTaskKiller.access$10(AdvancedTaskKiller.this, edittext.getText().toString());
        (new ndBugReportTask(AdvancedTaskKiller.this, null)).execute(new String[] {
            ""
        });
    }

    ndBugReportTask()
    {
        this$0 = final_advancedtaskkiller;
        val$bugView = View.this;
        super();
    }
}
