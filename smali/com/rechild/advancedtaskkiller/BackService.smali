.class public Lcom/rechild/advancedtaskkiller/BackService;
.super Landroid/app/Service;
.source "BackService.java"


# static fields
.field public static final AUTO_KILL_ACTION:Ljava/lang/String; = "com.rechild.advancedtaskkillerfull.action.autokill"

.field public static final CMD_CANCEL:Ljava/lang/String; = "cancel"

.field public static final KILL_ALL_ACTION:Ljava/lang/String; = "com.rechild.advancedtaskkillerfull.action.killall"

.field public static final TAG:Ljava/lang/String; = "ATK"


# instance fields
.field private ScreenOfReceiver:Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;

.field _ActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/BackService;->_ActivityManager:Landroid/app/ActivityManager;

    .line 13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/BackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/BackService;->_ActivityManager:Landroid/app/ActivityManager;

    .line 31
    sget-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->INCLUDE_AUTOKILL_FEATURE:Z

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;

    invoke-direct {v1}, Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;-><init>()V

    iput-object v1, p0, Lcom/rechild/advancedtaskkiller/BackService;->ScreenOfReceiver:Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, screenOffFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/BackService;->ScreenOfReceiver:Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/rechild/advancedtaskkiller/BackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .end local v0           #screenOffFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 71
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->INCLUDE_AUTOKILL_FEATURE:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/BackService;->ScreenOfReceiver:Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/BackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 44
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v5, 0x0

    .line 49
    .local v5, processDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "killall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    const-string v6, "ATK"

    const-string v7, "widget kill start"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/BackService;->_ActivityManager:Landroid/app/ActivityManager;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/BackService;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {p0, v5, v6, v8}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;Z)I

    move-result v4

    .line 56
    .local v4, killedNumber:I
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/BackService;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {v6}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->getAvaliableMemory(Landroid/app/ActivityManager;)J

    move-result-wide v1

    .line 62
    .local v1, avaliableMemoryAfter:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " Apps Killed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->MemoryToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 63
    const-string v6, "ATK"

    const-string v7, "widget kill end"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v1           #avaliableMemoryAfter:J
    :catch_0
    move-exception v3

    .line 59
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
