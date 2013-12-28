.class public Lcom/rechild/advancedtaskkiller/ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, killLevel:I
    sget v4, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    packed-switch v4, :pswitch_data_0

    .line 32
    :goto_0
    sget-wide v4, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 34
    const-string v4, "ATK"

    const-string v5, "Screen off kill start"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 36
    .local v0, _ActivityManager:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-static {p1, v0, v1, v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    .local v3, runningProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    invoke-static {p1, v3, v0}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;)I

    move-result v2

    .line 38
    .local v2, killedNumber:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Apps Killed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 39
    const-string v4, "ATK"

    const-string v5, "Screen off kill end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0           #_ActivityManager:Landroid/app/ActivityManager;
    .end local v2           #killedNumber:I
    .end local v3           #runningProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    :cond_0
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    const/16 v1, 0x1f4

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const/16 v1, 0x190

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const/16 v1, 0x64

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
