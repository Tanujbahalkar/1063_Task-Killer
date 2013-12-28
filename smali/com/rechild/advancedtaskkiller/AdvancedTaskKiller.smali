.class public Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;
.super Landroid/app/Activity;
.source "AdvancedTaskKiller.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;,
        Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;,
        Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final DIALOG_BUG:I = 0x4

.field private static final DIALOG_HELP:I = 0x3

.field private static final DIALOG_IGNORE:I = 0x5

.field private static final DIALOG_IGNORE_SERVICE_ALERT:I = 0x6

.field private static final DIALOG_INFO:I = 0x2

.field private static final DIALOG_LOADING:I = 0x1

.field private static final DIALOG_NEW_VERSION_ALERT:I = 0x7

.field private static final LR:Ljava/lang/String; = "\r\n"

.field public static final NOTIFY_MESSAGE:Ljava/lang/String; = "Menu->Settings to disable this."

.field public static final NOTIFY_TITLE:Ljava/lang/String; = "Open Advanced Task Killer"

.field private static final TAG:Ljava/lang/String; = "ATK"


# instance fields
.field _ActivityManager:Landroid/app/ActivityManager;

.field private _Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

.field private _DetailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _LogResult:Ljava/lang/String;

.field private _MenuDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    .line 53
    return-void
.end method

.method private IgnoreSystemApp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 735
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 736
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 737
    .local v1, pis:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 750
    return-void

    .line 737
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 739
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 741
    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->IsPersistentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsSystemProcessName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 745
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v5, p0, v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->SetIgnored(ZLandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    return-void
.end method

.method static synthetic access$10(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_LogResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->kill(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    return-void
.end method

.method static synthetic access$12(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->selectOrUnselect(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    return-void
.end method

.method static synthetic access$13(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->switchTo(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    return-void
.end method

.method static synthetic access$14(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->ignore(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    return-void
.end method

.method static synthetic access$15(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->detail(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refreshMem()V

    return-void
.end method

.method static synthetic access$5(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->sendBugReport()V

    return-void
.end method

.method static synthetic access$6(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_LogResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->IgnoreSystemApp()V

    return-void
.end method

.method static synthetic access$9(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->killAllTasks()V

    return-void
.end method

.method private bindEvent()V
    .locals 3

    .prologue
    .line 104
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$1;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$1;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 131
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method

.method private detail(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 6
    .parameter "lvi"

    .prologue
    .line 665
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsGingerbreadOrlater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.applications.InstalledAppDetails"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v3, "package"

    iget-object v4, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 670
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 681
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V

    .line 688
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 672
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->IsFroyoOrLater()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v3, "pkg"

    iget-object v4, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 685
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "ATK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v3, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 678
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "com.android.settings/.InstalledAppDetails"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 679
    const-string v3, "com.android.settings.ApplicationPkgName"

    iget-object v4, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doAction(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;I)V
    .locals 0
    .parameter "lvi"
    .parameter "action"

    .prologue
    .line 170
    packed-switch p2, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->kill(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->switchTo(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->selectOrUnselect(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->ignore(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 185
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->detail(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->menu(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 509
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    return-object p0
.end method

.method private getValuesFromPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5
    .parameter "prefs"

    .prologue
    .line 448
    const-string v2, ""

    .line 451
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 452
    .end local p0
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    .line 461
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    return-object v3

    .line 454
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 457
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 459
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getVersionCode()I
    .locals 4

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 756
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    return v2

    .line 757
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 758
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    goto :goto_0
.end method

.method private ignore(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 2
    .parameter "lvi"

    .prologue
    .line 657
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->setIgnored(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refresh()V

    .line 659
    return-void
.end method

.method private kill(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 2
    .parameter "lvi"

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0, p0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillATK(Landroid/app/ActivityManager;Landroid/content/Context;)V

    .line 622
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillApp(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_1
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->notifyDataSetChanged()V

    .line 621
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refreshMem()V

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private killAllTasks()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;Z)I

    .line 138
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getRunningProcess()V

    .line 139
    new-instance v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    .line 140
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refreshMem()V

    .line 142
    const-string v0, "ATK"

    const-string v1, "Manually kill ends"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private loadAdmob()V
    .locals 5

    .prologue
    .line 94
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14a6ac7fd9f387"

    invoke-direct {v0, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 96
    .local v0, adView:Lcom/google/ads/AdView;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    .line 99
    .local v2, request:Lcom/google/ads/AdRequest;
    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 100
    return-void
.end method

.method private menu(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 3
    .parameter "lvi"

    .prologue
    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    iget-object v1, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 628
    iget-object v1, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 629
    const v1, 0x7f050002

    new-instance v2, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;

    invoke-direct {v2, p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 626
    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_MenuDialog:Landroid/app/AlertDialog;

    .line 652
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_MenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 653
    return-void
.end method

.method private refreshMem()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;

    invoke-direct {v0, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->mHandler:Landroid/os/Handler;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 542
    return-void
.end method

.method private selectOrUnselect(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 2
    .parameter "lvi"

    .prologue
    .line 577
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 580
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->setSelected(Z)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v0, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->setSelected(Z)V

    goto :goto_0
.end method

.method private sendBugReport()V
    .locals 14

    .prologue
    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v9, sb:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_LogResult:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 341
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ATK build "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-virtual {v5, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Device "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SDK "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Release "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {}, Lcom/rechild/advancedtaskkiller/Setting;->GetAllValues()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v11, "Unselected apps\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    sget-object v11, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_SelectedAppSettings:Landroid/content/SharedPreferences;

    invoke-direct {p0, v11}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getValuesFromPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v11, "Ignored apps\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget-object v11, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-direct {p0, v11}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getValuesFromPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v11, "Current running apps\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v11, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 359
    .local v8, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 372
    iget-object v11, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {p0, v11}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v7

    .line 374
    .local v7, runningPDIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 382
    sget-boolean v11, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-eqz v11, :cond_1

    .line 384
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->GetAllLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, commandLine:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "logcat"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v11, "-d"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v11, "-v"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v11, "long"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v11, "*:E"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 430
    .local v6, process:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0xfb8

    invoke-direct {v1, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 433
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, b:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 441
    .end local v0           #b:Ljava/lang/String;
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #commandLine:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #process:Ljava/lang/Process;
    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_LogResult:Ljava/lang/String;

    .line 443
    return-void

    .line 342
    .end local v7           #runningPDIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    .end local v8           #runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 343
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "Error: name not found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 359
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 361
    .local v10, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v10, :cond_0

    iget-object v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 363
    iget-object v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v10}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetAppUid(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    const-string v12, "\r\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 374
    .end local v10           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v7       #runningPDIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    .line 376
    .local v4, pdi:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    invoke-virtual {v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v4}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v12, "\r\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 435
    .end local v4           #pdi:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    .restart local v0       #b:Ljava/lang/String;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #commandLine:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #process:Ljava/lang/Process;
    :cond_4
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 438
    .end local v0           #b:Ljava/lang/String;
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #commandLine:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #process:Ljava/lang/Process;
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 439
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "body"

    .prologue
    .line 488
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v2, returnIt:Landroid/content/Intent;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rechild.dev@gmail.com"

    aput-object v6, v4, v5

    .line 490
    .local v4, tos:[Ljava/lang/String;
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v3, ""

    .line 495
    .local v3, title:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 496
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Bug Report"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 501
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v5, "message/rfc882"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v5, "Choose Email Client"

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V

    .line 506
    return-void

    .line 497
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 499
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showRunningServices()V
    .locals 4

    .prologue
    .line 723
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 724
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.RunningServices"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 728
    .local v0, ex:Ljava/lang/Exception;
    const v2, 0x7f060040

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private switchTo(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 3
    .parameter "lvi"

    .prologue
    .line 591
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 593
    iget-object v1, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v1}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getBaseActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private uninstall(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 4
    .parameter "lvi"

    .prologue
    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v3}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 693
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method


# virtual methods
.method public getRunningProcess()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {p0, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    .line 572
    new-instance v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_DetailList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    .line 573
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 550
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/rechild/advancedtaskkiller/Setting;

    const-string v2, "AdvTaskKillerSettings"

    invoke-virtual {p0, v2, v4}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/rechild/advancedtaskkiller/Setting;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 76
    .local v0, setting:Lcom/rechild/advancedtaskkiller/Setting;
    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    if-lez v2, :cond_0

    sget-object v2, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 78
    sget-wide v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {p0, v4, v2, v3}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->ScheduleAutoKill(Landroid/content/Context;ZJ)V

    .line 80
    :cond_0
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->setContentView(I)V

    .line 81
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    .line 82
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getVersionCode()I

    move-result v1

    .line 83
    .local v1, versionCode:I
    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    if-eq v1, v2, :cond_1

    .line 85
    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/Setting;->setVersionCode(I)V

    .line 87
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->loadAdmob()V

    .line 90
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v7, 0x7f030006

    const v11, 0x104000a

    const/4 v10, 0x0

    const/4 v8, 0x0

    const v9, 0x1080041

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_0
    return-object v7

    .line 247
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 248
    .local v1, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, loadingView:Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 252
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v4           #loadingView:Landroid/view/View;
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 253
    .local v2, factoryIgnore:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, loadingViewIgnore:Landroid/view/View;
    const v7, 0x7f070016

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 255
    .local v6, tv:Landroid/widget/TextView;
    const-string v7, "Building system ignore list for first running!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 259
    .end local v2           #factoryIgnore:Landroid/view/LayoutInflater;
    .end local v5           #loadingViewIgnore:Landroid/view/View;
    .end local v6           #tv:Landroid/widget/TextView;
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    const v8, 0x7f060035

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 261
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 262
    const v8, 0x7f060036

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 263
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 264
    const-string v8, "No, I want to force stop them"

    new-instance v9, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$3;

    invoke-direct {v9, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$3;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 268
    const-string v8, "Yes, Ignore service and front app"

    new-instance v9, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$4;

    invoke-direct {v9, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$4;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 274
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 277
    :pswitch_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    const v8, 0x7f06003e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 279
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 280
    const v8, 0x7f06003f

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 281
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 282
    const-string v8, "OK"

    new-instance v9, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;

    invoke-direct {v9, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 289
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 292
    :pswitch_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    const v8, 0x7f060030

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 294
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 295
    const-string v8, "about.txt"

    invoke-static {p0, v8}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 296
    new-instance v8, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$6;

    invoke-direct {v8, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$6;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 300
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 303
    :pswitch_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    const v8, 0x7f060031

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 305
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 306
    const-string v8, "help.txt"

    invoke-static {p0, v8}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 307
    new-instance v8, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$7;

    invoke-direct {v8, p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$7;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 311
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 313
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 314
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, bugView:Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 317
    const-string v8, "Send via email"

    new-instance v9, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;

    invoke-direct {v9, p0, v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Landroid/view/View;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 327
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    const-string v0, "Settings"

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    const-string v0, "Report Bug"

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 198
    const-string v0, "Help"

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 199
    const-string v0, "Info"

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 200
    const-string v0, "Service"

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 201
    const/4 v0, 0x5

    const/4 v1, 0x5

    const-string v2, "Exit"

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x6

    const/4 v1, 0x6

    const-string v2, "Log"

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080034

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    :cond_0
    return v4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 567
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    .line 716
    .local v0, lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    sget v1, Lcom/rechild/advancedtaskkiller/Setting;->CLICK_ACTION:I

    invoke-direct {p0, v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->doAction(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;I)V

    .line 717
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    .line 701
    .local v0, lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    sget v1, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->ClearNotification(Landroid/content/Context;)V

    .line 704
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->finish()V

    .line 710
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 708
    :cond_0
    sget v1, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    invoke-direct {p0, v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->doAction(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x2

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    .line 240
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 214
    :pswitch_0
    const-class v0, Lcom/rechild/advancedtaskkiller/NewSettings;

    invoke-static {p0, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->InvokeActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 217
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    goto :goto_0

    .line 220
    :pswitch_2
    const-class v0, Lcom/rechild/advancedtaskkiller/HelpActivity;

    invoke-static {p0, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->InvokeActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    goto :goto_0

    .line 226
    :pswitch_4
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showRunningServices()V

    goto :goto_0

    .line 229
    :pswitch_5
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->ClearNotification(Landroid/content/Context;)V

    .line 230
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 233
    :pswitch_6
    const-class v0, Lcom/rechild/advancedtaskkiller/LogActivity;

    invoke-static {p0, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->InvokeActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 555
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 560
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refresh()V

    .line 561
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getRunningProcess()V

    .line 514
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->bindEvent()V

    .line 516
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refreshMem()V

    .line 517
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->RefreshNotification(Landroid/content/Context;)V

    .line 518
    return-void
.end method
