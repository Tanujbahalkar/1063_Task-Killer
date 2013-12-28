.class public Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
.super Ljava/lang/Object;
.source "ProcessDetailInfo.java"


# static fields
.field private static AppsTable:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE_PREFS_NAME:Ljava/lang/String; = "IgnoredPackage"

.field public static final SELECT_PREFS_NAME:Ljava/lang/String; = "CleanoidUnselectedPackage"

.field static _IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

.field public static _IgnoredAppSettings:Landroid/content/SharedPreferences;

.field private static _SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

.field public static _SelectedAppSettings:Landroid/content/SharedPreferences;


# instance fields
.field public Importance:I

.field private _AppInfo:Landroid/content/pm/ApplicationInfo;

.field private _Label:Ljava/lang/String;

.field private _PackageName:Ljava/lang/String;

.field private _PkgInfo:Landroid/content/pm/PackageInfo;

.field private _PkgManager:Landroid/content/pm/PackageManager;

.field private _ResolveInfo:Landroid/content/pm/ResolveInfo;

.field private isApplication:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgInfo:Landroid/content/pm/PackageInfo;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isApplication:Z

    .line 39
    invoke-static {p1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->loadApps(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->AppsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 41
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    :goto_0
    iput-object p2, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgManager:Landroid/content/pm/PackageManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 58
    const-string v0, "CleanoidUnselectedPackage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    .line 60
    :cond_1
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_2

    .line 62
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    .line 64
    :cond_2
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 66
    const-string v0, "IgnoredPackage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    .line 68
    :cond_3
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_4

    .line 70
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    .line 73
    :cond_4
    return-void

    .line 48
    :cond_5
    iput-boolean v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isApplication:Z

    goto :goto_0
.end method

.method public static IsPersistentApp(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .parameter "pi"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    if-nez p0, :cond_0

    move v1, v5

    .line 297
    :goto_0
    return v1

    .line 285
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_1

    move v1, v6

    .line 287
    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1

    move v3, v5

    :goto_1
    if-lt v3, v2, :cond_3

    move v1, v5

    .line 297
    goto :goto_0

    .line 290
    :cond_3
    aget-object v0, v1, v3

    .line 292
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_4

    move v1, v6

    .line 294
    goto :goto_0

    .line 290
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static IsUnselectOrIgnore(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 279
    :goto_0
    return v0

    .line 275
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 277
    goto :goto_0

    :cond_1
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public static SetIgnored(ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "isIgnored"
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 233
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "IgnoredPackage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    .line 237
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 239
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    .line 241
    :cond_1
    if-eqz p0, :cond_2

    .line 243
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    :goto_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void

    .line 248
    :cond_2
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgInfo:Landroid/content/pm/PackageInfo;

    return-object v1

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NameNotFoundException"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadApps(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 76
    sget-object v3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->AppsTable:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->AppsTable:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    .end local v0           #mainIntent:Landroid/content/Intent;
    .end local v1           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-void

    .line 84
    .restart local v0       #mainIntent:Landroid/content/Intent;
    .restart local v1       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 86
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 88
    sget-object v4, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->AppsTable:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setSelected(ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "isSelected"
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 192
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "CleanoidUnselectedPackage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    .line 196
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 198
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    .line 200
    :cond_1
    if-eqz p0, :cond_3

    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    :cond_2
    :goto_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void

    .line 205
    :cond_3
    if-nez p0, :cond_2

    .line 207
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public getBaseActivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_ResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIgnored()Z
    .locals 3

    .prologue
    .line 254
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;

    return-object v1

    .line 146
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isApplication()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->isApplication:Z

    return v0
.end method

.method public isGoodProcess()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_AppInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    xor-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIgnored(Z)V
    .locals 3
    .parameter "isIgnored"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 220
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    :goto_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_Label:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "isSelected"

    .prologue
    .line 179
    if-eqz p1, :cond_1

    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :cond_0
    :goto_0
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void

    .line 183
    :cond_1
    if-nez p1, :cond_0

    .line 185
    sget-object v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_PackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
