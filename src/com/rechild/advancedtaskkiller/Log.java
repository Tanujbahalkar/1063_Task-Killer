// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import java.io.File;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting, Database

public class Log
{

    private static final String TAG = "ATK";
    private static Database mDatabase;

    public Log()
    {
    }

    public static void BeginTrasaction(Context context)
    {
        if (!Setting.IS_LOG_ENABLE)
        {
            return;
        } else
        {
            openDatabase(context);
            mDatabase.beginTransaction();
            return;
        }
    }

    public static void EndTrasaction(Context context)
    {
        if (!Setting.IS_LOG_ENABLE)
        {
            return;
        } else
        {
            openDatabase(context);
            mDatabase.endTransaction();
            return;
        }
    }

    public static String GetAllLog(Context context)
    {
        if (!Setting.IS_LOG_ENABLE)
        {
            return "";
        }
        openDatabase(context);
        Cursor cursor = mDatabase.fetchAllData();
        StringBuilder stringbuilder = new StringBuilder();
        cursor.moveToFirst();
        do
        {
            if (cursor.isAfterLast())
            {
                return stringbuilder.toString();
            }
            stringbuilder.append((new StringBuilder(String.valueOf(cursor.getString(1)))).append(" ").toString());
            stringbuilder.append((new StringBuilder(String.valueOf(cursor.getString(2)))).append("\r\n").toString());
            cursor.moveToNext();
        } while (true);
    }

    public static void I(Context context, String s)
    {
        if (!Setting.IS_LOG_ENABLE)
        {
            android.util.Log.e("ATK", s);
            return;
        } else
        {
            openDatabase(context);
            mDatabase.insertData(s);
            return;
        }
    }

    private static void deleteDB(Context context)
    {
        File file = context.getDatabasePath("ATKLogData.db");
        if (file != null && file.exists())
        {
            file.delete();
        }
    }

    private static void openDatabase(Context context)
    {
        if (mDatabase != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        mDatabase = new Database(context);
        mDatabase.open();
        Cursor cursor = mDatabase.fetchAllData();
        if (cursor.moveToLast() && cursor.getPosition() > 700)
        {
            mDatabase.clearTable();
        }
        return;
        SQLiteDatabaseCorruptException sqlitedatabasecorruptexception;
        sqlitedatabasecorruptexception;
        deleteDB(context);
        mDatabase = new Database(context);
        mDatabase.open();
        return;
    }
}
