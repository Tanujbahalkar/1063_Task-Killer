.class public Lcom/rechild/advancedtaskkiller/AutoStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoStartReceiver.java"


# static fields
.field private static _NotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static ClearNotification(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    sget-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    .line 61
    :cond_0
    return-void
.end method

.method public static RefreshNotification(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 37
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 41
    const-class v1, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const-string v2, "Open Advanced Task Killer"

    const-string v3, "Menu->Settings to disable this."

    const v4, 0x7f020003

    const v5, 0x7f030009

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->buildNotification(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Landroid/app/NotificationManager;

    move-result-object v0

    sput-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->_NotificationManager:Landroid/app/NotificationManager;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 14
    const-string v1, "AdvTaskKillerSettings"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/rechild/advancedtaskkiller/Setting;->Settings:Landroid/content/SharedPreferences;

    .line 15
    invoke-static {p1}, Lcom/rechild/advancedtaskkiller/Setting;->restoreSettings(Landroid/content/Context;)V

    .line 17
    sget-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_AUTOSTART_ENABLE:Z

    if-eqz v1, :cond_1

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    sget-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p1}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->RefreshNotification(Landroid/content/Context;)V

    .line 27
    :cond_0
    sget v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    if-lez v1, :cond_1

    sget-object v1, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 29
    sget-wide v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {p1, v3, v1, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->ScheduleAutoKill(Landroid/content/Context;ZJ)V

    .line 33
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method
