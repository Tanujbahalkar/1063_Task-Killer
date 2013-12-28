// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class Database
{
    private static class DatabaseHelper extends SQLiteOpenHelper
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

        DatabaseHelper(Context context)
        {
            super(context, "ATKLogData.db", null, 1);
        }
    }


    private static final String DB_CREATE = "CREATE TABLE Log (_id INTEGER PRIMARY KEY,time TIMESTAMP default CURRENT_TIMESTAMP,data TEXT)";
    public static final String DB_NAME = "ATKLogData.db";
    private static final String DB_TABLE = "Log";
    private static final int DB_VERSION = 1;
    public static final String KEY_DATA = "data";
    public static final String KEY_ID = "_id";
    public static final String KEY_TIME = "time";
    private Context mContext;
    private DatabaseHelper mDatabaseHelper;
    private SQLiteDatabase mSQLiteDatabase;

    public Database(Context context)
    {
        mContext = null;
        mSQLiteDatabase = null;
        mDatabaseHelper = null;
        mContext = context;
    }

    public void beginTransaction()
    {
        mSQLiteDatabase.beginTransaction();
    }

    public void clearTable()
    {
        mSQLiteDatabase.execSQL("DELETE FROM Log");
    }

    public void close()
    {
        mDatabaseHelper.close();
    }

    public void endTransaction()
    {
        mSQLiteDatabase.endTransaction();
    }

    public Cursor fetchAllData()
    {
        return mSQLiteDatabase.query("Log", new String[] {
            "_id", "time", "data"
        }, null, null, null, null, null);
    }

    public long insertData(String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("data", s);
        return mSQLiteDatabase.insert("Log", "_id", contentvalues);
    }

    public void open()
        throws SQLException
    {
        mDatabaseHelper = new DatabaseHelper(mContext);
        mSQLiteDatabase = mDatabaseHelper.getWritableDatabase();
    }
}
