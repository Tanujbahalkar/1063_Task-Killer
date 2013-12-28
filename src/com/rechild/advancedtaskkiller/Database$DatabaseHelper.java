// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Database

private static class  extends SQLiteOpenHelper
{

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE Log (_id INTEGER PRIMARY KEY,time TIMESTAMP default CURRENT_TIMESTAMP,data TEXT)");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS Log");
        onCreate(sqlitedatabase);
    }

    (Context context)
    {
        super(context, "ATKLogData.db", null, 1);
    }
}
