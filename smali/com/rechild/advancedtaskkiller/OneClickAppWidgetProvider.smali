.class public Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "OneClickAppWidgetProvider.java"


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sInstance:Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.rechild.taskkillerfull"

    const-string v2, "com.rechild.taskkillerfull.OneClickAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 33
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1}, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 34
    invoke-direct {p0, p1, p2, v1}, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 35
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->sInstance:Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;

    invoke-direct {v1}, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->sInstance:Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;

    .line 21
    :cond_0
    sget-object v1, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->sInstance:Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/rechild/advancedtaskkiller/BackService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v2, serviceName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.rechild.advancedtaskkillerfull.action.killall"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 57
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v3, 0x7f07

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 58
    return-void
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 40
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Lcom/rechild/advancedtaskkiller/OneClickAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 28
    return-void
.end method
