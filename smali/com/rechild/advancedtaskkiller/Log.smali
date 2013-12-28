.class public Lcom/rechild/advancedtaskkiller/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATK"

.field private static mDatabase:Lcom/rechild/advancedtaskkiller/Database;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BeginTrasaction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->openDatabase(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/Database;->beginTransaction()V

    goto :goto_0
.end method

.method public static EndTrasaction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->openDatabase(Landroid/content/Context;)V

    .line 54
    sget-object v0, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/Database;->endTransaction()V

    goto :goto_0
.end method

.method public static GetAllLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    sget-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-nez v2, :cond_0

    const-string v2, ""

    .line 79
    :goto_0
    return-object v2

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->openDatabase(Landroid/content/Context;)V

    .line 72
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/Database;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 59
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-nez v0, :cond_0

    .line 61
    const-string v0, "ATK"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->openDatabase(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v0, p1}, Lcom/rechild/advancedtaskkiller/Database;->insertData(Ljava/lang/String;)J

    goto :goto_0
.end method

.method private static deleteDB(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    const-string v1, "ATKLogData.db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 14
    .local v0, localFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 18
    :cond_0
    return-void
.end method

.method private static openDatabase(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    if-nez v2, :cond_0

    .line 26
    :try_start_0
    new-instance v2, Lcom/rechild/advancedtaskkiller/Database;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/Database;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    .line 27
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/Database;->open()V

    .line 28
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/Database;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 29
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/16 v3, 0x2bc

    if-le v2, v3, :cond_0

    .line 32
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/Database;->clearTable()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 36
    .local v1, ex:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->deleteDB(Landroid/content/Context;)V

    .line 37
    new-instance v2, Lcom/rechild/advancedtaskkiller/Database;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/Database;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    .line 38
    sget-object v2, Lcom/rechild/advancedtaskkiller/Log;->mDatabase:Lcom/rechild/advancedtaskkiller/Database;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/Database;->open()V

    goto :goto_0
.end method
