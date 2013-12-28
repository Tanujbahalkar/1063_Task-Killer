.class public Lcom/rechild/advancedtaskkiller/Database;
.super Ljava/lang/Object;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "CREATE TABLE Log (_id INTEGER PRIMARY KEY,time TIMESTAMP default CURRENT_TIMESTAMP,data TEXT)"

.field public static final DB_NAME:Ljava/lang/String; = "ATKLogData.db"

.field private static final DB_TABLE:Ljava/lang/String; = "Log"

.field private static final DB_VERSION:I = 0x1

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_TIME:Ljava/lang/String; = "time"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mDatabaseHelper:Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

    .line 40
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/Database;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    return-void
.end method

.method public clearTable()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM Log"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mDatabaseHelper:Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;->close()V

    .line 50
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 75
    return-void
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Log"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "time"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertData(Ljava/lang/String;)J
    .locals 4
    .parameter "data"

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Log"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/Database;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mDatabaseHelper:Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

    .line 45
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mDatabaseHelper:Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/Database;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method
