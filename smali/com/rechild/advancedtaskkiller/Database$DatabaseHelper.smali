.class Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "ATKLogData.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 29
    const-string v0, "CREATE TABLE Log (_id INTEGER PRIMARY KEY,time TIMESTAMP default CURRENT_TIMESTAMP,data TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 34
    const-string v0, "DROP TABLE IF EXISTS Log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/Database$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method
