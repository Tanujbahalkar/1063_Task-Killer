.class public Lcom/rechild/advancedtaskkiller/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATK"

.field private static _ActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    const-string v3, "ATK"

    const-string v4, "Start auto kill"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v3, Ljava/util/Date;

    sget-wide v4, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    .line 20
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/rechild/advancedtaskkiller/AlarmReceiver;->_ActivityManager:Landroid/app/ActivityManager;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, killLevel:I
    sget v3, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    packed-switch v3, :pswitch_data_0

    .line 37
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/rechild/advancedtaskkiller/AlarmReceiver;->_ActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-static {p1, v3, v0, v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->GetRunningProcess(Landroid/content/Context;Landroid/app/ActivityManager;IZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    .local v2, runningProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    sget-object v3, Lcom/rechild/advancedtaskkiller/AlarmReceiver;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1, v2, v3}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;)I

    move-result v1

    .line 39
    .local v1, killedNumber:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Apps Killed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 40
    const-string v3, "ATK"

    const-string v4, "Auto kill end"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 27
    .end local v1           #killedNumber:I
    .end local v2           #runningProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    :pswitch_1
    const/16 v0, 0x1f4

    .line 28
    goto :goto_0

    .line 30
    :pswitch_2
    const/16 v0, 0x190

    .line 31
    goto :goto_0

    .line 33
    :pswitch_3
    const/16 v0, 0x64

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
