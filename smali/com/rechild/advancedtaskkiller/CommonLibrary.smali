.class public Lcom/rechild/advancedtaskkiller/CommonLibrary;
.super Ljava/lang/Object;
.source "CommonLibrary.java"


# static fields
.field public static IgnoreOrUncheckUid:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static NextRun:Ljava/util/Date; = null

.field private static SDK:Ljava/lang/Integer; = null

.field public static SystemUid:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ATK"

.field private static _CanGetUid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lcom/rechild/advancedtaskkiller/CommonLibrary;->_CanGetUid:Z

    .line 33
    :try_start_0
    const-class v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    .line 24
    return-void

    .line 34
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, e:Ljava/lang/SecurityException;
    sput-boolean v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->_CanGetUid:Z

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, e:Ljava/lang/NoSuchFieldException;
    sput-boolean v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->_CanGetUid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .locals 5
    .parameter "process"

    .prologue
    .line 482
    sget-boolean v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->_CanGetUid:Z

    if-nez v3, :cond_0

    .line 484
    iget v3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 499
    :goto_0
    return v3

    .line 486
    :cond_0
    const/4 v2, 0x0

    .line 489
    .local v2, uid:I
    :try_start_0
    const-class v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 490
    .local v1, fUid:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 491
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1           #fUid:Ljava/lang/reflect/Field;
    :goto_1
    move v3, v2

    .line 499
    goto :goto_0

    .line 492
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 494
    .local v0, e:Ljava/lang/NoSuchFieldException;
    iget v2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_1

    .line 496
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 497
    .local v0, e:Ljava/lang/IllegalAccessException;
    iget v2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_1
.end method

.method public static GetFrontAppUid(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, uids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    return-object v2

    .line 362
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 364
    .local v0, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    .line 366
    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v1

    .line 367
    .local v1, appUid:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static GetIgnoreOrUncheckUid(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v2, uids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    sget-object v3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 419
    :cond_0
    return-object v2

    .line 409
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 411
    .local v1, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 413
    .local v0, s:Ljava/lang/String;
    sget-object v7, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 414
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_3
    sget-object v7, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 416
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "activityManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/high16 v0, -0x8000

    invoke-static {p0, p1, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;I)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .parameter "activityManager"
    .parameter "killLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget v0, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IIZ)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .parameter "activityManager"
    .parameter "killLevel"
    .parameter "securityLevel"
    .parameter "excludeFrontApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            "IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance p1, Ljava/util/ArrayList;

    .end local p1
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local p1, detailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, frontUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_0

    .line 76
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetFrontAppUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 79
    :cond_0
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetSystemAppUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SystemUid:Ljava/util/List;

    .line 80
    const/4 v2, 0x5

    if-ne p3, v2, :cond_6

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v1           #runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local p3
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    .line 240
    :cond_2
    return-object p1

    .line 82
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v1, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.inputmethod"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 84
    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "system"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "android.process.acore"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 88
    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt p3, p2, :cond_1

    .line 93
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-boolean p3, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    if-eqz p3, :cond_4

    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x12c

    if-gt p3, v3, :cond_4

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 97
    :cond_4
    if-eqz p4, :cond_5

    .line 99
    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFrontApp(Ljava/util/List;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 105
    :cond_5
    :try_start_0
    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length p3, p3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 107
    new-instance p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p3, p0, v3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .local p3, dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v3, p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->Importance:I

    .line 114
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isApplication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsSystemApp(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v1

    .end local v1           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v1, :cond_1

    .line 122
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isGoodProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getIgnored()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    .end local p3           #dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    :catch_0
    move-exception p3

    .line 130
    .local p3, e:Ljava/lang/Exception;
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    .local v1, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p3, securityLevel:I
    :cond_6
    if-nez p3, :cond_a

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v1           #runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local p3           #securityLevel:I
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 138
    .local v1, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.inputmethod"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 139
    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "system"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "android.process.acore"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.motorola.android.vvm"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.alarmclock"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 143
    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt p3, p2, :cond_7

    .line 148
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result p3

    if-eqz p3, :cond_8

    sget-boolean p3, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    if-eqz p3, :cond_8

    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x12c

    if-gt p3, v3, :cond_8

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 152
    :cond_8
    if-eqz p4, :cond_9

    .line 154
    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFrontApp(Ljava/util/List;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 160
    :cond_9
    :try_start_1
    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length p3, p3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_7

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 162
    new-instance p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p3, p0, v3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    .local p3, dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v3, p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->Importance:I

    .line 169
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isApplication()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_7

    .line 177
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsSystemApp(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v1

    .end local v1           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v1, :cond_7

    .line 181
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isGoodProcess()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getIgnored()Z

    move-result v1

    if-nez v1, :cond_7

    .line 190
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 192
    .end local p3           #dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    :catch_1
    move-exception p3

    .line 193
    .local p3, e:Ljava/lang/Exception;
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 197
    .local v1, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p3, securityLevel:I
    :cond_a
    const/16 v2, 0xa

    if-ne p3, v2, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v1           #runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local p3           #securityLevel:I
    :cond_b
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 200
    .local v1, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_b

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p3, :cond_b

    .line 201
    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "system"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "android.process.acore"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 205
    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt p3, p2, :cond_b

    .line 210
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result p3

    if-eqz p3, :cond_c

    sget-boolean p3, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    if-eqz p3, :cond_c

    iget p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x12c

    if-gt p3, v3, :cond_c

    iget-object p3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 214
    :cond_c
    if-eqz p4, :cond_d

    .line 216
    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFrontApp(Ljava/util/List;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 221
    :cond_d
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsSystemApp(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 226
    :try_start_2
    new-instance p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p3, p0, v3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .local p3, dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .end local v1           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iput v1, p3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->Importance:I

    .line 228
    invoke-virtual {p3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getIgnored()Z

    move-result v1

    if-nez v1, :cond_b

    .line 232
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 233
    .end local p3           #dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    :catch_2
    move-exception p3

    .line 234
    .local p3, e:Ljava/lang/Exception;
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "activityManager"
    .parameter "killLevel"
    .parameter "excludeFrontApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget v0, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    invoke-static {p0, p1, p2, v0, p3}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "activityManager"
    .parameter "excludeFrontApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/high16 v0, -0x8000

    invoke-static {p0, p1, v0, p2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static GetSystemAppUid(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, uids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    return-object v2

    .line 376
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 378
    .local v1, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsSystemProcessName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v0

    .line 381
    .local v0, appUid:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static InvokeActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .parameter "orignalActivity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public static IsFrontApp(Ljava/util/List;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 5
    .parameter
    .parameter "ri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, uids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v1

    .line 425
    .local v1, appUid:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 425
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 427
    .local v2, uid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, UidInt:I
    if-ne v0, v1, :cond_0

    .line 429
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static IsFroyo()Z
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 574
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    .line 576
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 578
    const/4 v0, 0x1

    .line 582
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsFroyoOrLater()Z
    .locals 2

    .prologue
    .line 556
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    .line 560
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 562
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsGingerbreadOrlater()Z
    .locals 2

    .prologue
    .line 604
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 606
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    .line 608
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 610
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsHoneyOrlater()Z
    .locals 2

    .prologue
    .line 588
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 590
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    .line 592
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SDK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 594
    const/4 v0, 0x1

    .line 598
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsSameUidWithIgnoreOrUncheck(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 6
    .parameter "ri"

    .prologue
    .line 449
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v1

    .line 451
    .local v1, appUid:I
    sget-object v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IgnoreOrUncheckUid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 459
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 451
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 453
    .local v2, uid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 454
    .local v0, UidInt:I
    if-ne v0, v1, :cond_0

    sget-object v4, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    iget-object v5, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    iget-object v5, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static IsSystemApp(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 5
    .parameter "ri"

    .prologue
    .line 436
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v1

    .line 438
    .local v1, appUid:I
    sget-object v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->SystemUid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 438
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 440
    .local v2, uid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 441
    .local v0, UidInt:I
    if-ne v0, v1, :cond_0

    .line 442
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static IsSystemProcessName(Ljava/lang/String;)Z
    .locals 1
    .parameter "processName"

    .prologue
    .line 389
    const-string v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const-string v0, "android.process.acore"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const-string v0, "android.process.media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const-string v0, "com.android.bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KillATK(Landroid/app/ActivityManager;Landroid/content/Context;)V
    .locals 1
    .parameter "activityManager"
    .parameter "context"

    .prologue
    .line 505
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-static {p1}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->ClearNotification(Landroid/content/Context;)V

    .line 508
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 509
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static KillApp(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "activityManager"
    .parameter "packageName"

    .prologue
    .line 519
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    :try_start_0
    const-class v3, Landroid/app/ActivityManager;

    const-string v4, "killBackgroundProcesses"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 523
    .local v2, killMethod:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 542
    .end local v2           #killMethod:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 552
    :goto_1
    return-void

    .line 524
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 526
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 527
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 529
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 530
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 532
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 535
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 538
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 545
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 550
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;)I
    .locals 1
    .parameter "context"
    .parameter
    .parameter "activityManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;",
            "Landroid/app/ActivityManager;",
            ")I"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, processList:Ljava/util/List;,"Ljava/util/List<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;Z)I

    move-result v0

    return v0
.end method

.method public static KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;Z)I
    .locals 6
    .parameter "context"
    .parameter
    .parameter "activityManager"
    .parameter "realSuicide"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;",
            "Landroid/app/ActivityManager;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, processList:Ljava/util/List;,"Ljava/util/List<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, isSelected:Z
    const/4 v2, 0x0

    .line 252
    .local v2, killedNumber:I
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->BeginTrasaction(Landroid/content/Context;)V

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 269
    if-eqz v1, :cond_1

    .line 271
    if-eqz p3, :cond_4

    .line 273
    invoke-static {p2, p0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillATK(Landroid/app/ActivityManager;Landroid/content/Context;)V

    .line 278
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 280
    :cond_1
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->EndTrasaction(Landroid/content/Context;)V

    .line 281
    return v2

    .line 253
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    .line 255
    .local v0, dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getSelected()Z

    move-result v1

    .line 259
    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    invoke-static {p0, p2, v3}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillApp(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    invoke-static {p0, v3}, Lcom/rechild/advancedtaskkiller/Log;->I(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v0           #dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->ClearNotification(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static MemoryToString(J)Ljava/lang/String;
    .locals 5
    .parameter "memory"

    .prologue
    const-wide/16 v3, 0x400

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p0, v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ScheduleAutoKill(Landroid/content/Context;ZJ)V
    .locals 9
    .parameter "context"
    .parameter "cancel"
    .parameter "interval"

    .prologue
    const/4 v2, 0x0

    .line 288
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/rechild/advancedtaskkiller/AlarmReceiver;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p0, v2, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 290
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 291
    .local v0, alarmManager:Landroid/app/AlarmManager;
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 294
    const/4 v1, 0x0

    sput-object v1, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    .line 309
    :goto_0
    return-void

    .line 298
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 300
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/rechild/advancedtaskkiller/BackService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 305
    .end local v7           #i:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 306
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v1, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    goto :goto_0
.end method

.method public static buildNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Landroid/app/NotificationManager;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "layout"

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->buildNotification(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public static buildNotification(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Landroid/app/NotificationManager;
    .locals 3
    .parameter "context"
    .parameter "clss"
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "layout"

    .prologue
    .line 315
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 316
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 317
    .local v0, notification:Landroid/app/Notification;
    iput p4, v0, Landroid/app/Notification;->icon:I

    .line 318
    const/4 v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 319
    invoke-static {p0, p1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->makeMoodIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 320
    invoke-virtual {v1, p5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 321
    return-object v1
.end method

.method public static getAvaliableMemory(Landroid/app/ActivityManager;)J
    .locals 5
    .parameter "activityManager"

    .prologue
    .line 341
    const-wide/16 v0, 0x0

    .line 344
    .local v0, avaliableMemory:J
    :try_start_0
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 345
    .local v3, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 346
    iget-wide v0, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v3           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v0

    .line 347
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 349
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 464
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 466
    .local v4, text:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 467
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 468
    .local v3, size:I
    new-array v0, v3, [B

    .line 469
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 470
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 471
    new-instance v4, Ljava/lang/String;

    .end local v4           #text:Ljava/lang/String;
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .restart local v4       #text:Ljava/lang/String;
    return-object v4

    .line 472
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #size:I
    .end local v4           #text:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 474
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static makeMoodIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "clss"

    .prologue
    .line 329
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    const/4 v2, 0x1

    .line 335
    const/high16 v3, 0x1000

    .line 333
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 336
    .local v0, contentIntent:Landroid/app/PendingIntent;
    return-object v0
.end method
