.class Lcom/rechild/advancedtaskkiller/HealthActivity$1;
.super Ljava/lang/Object;
.source "HealthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/HealthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/HealthActivity;


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/HealthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/HealthActivity$1;->this$0:Lcom/rechild/advancedtaskkiller/HealthActivity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.battery_history.BatteryHistory"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/HealthActivity$1;->this$0:Lcom/rechild/advancedtaskkiller/HealthActivity;

    invoke-virtual {v2, v1}, Lcom/rechild/advancedtaskkiller/HealthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 31
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/HealthActivity$1;->this$0:Lcom/rechild/advancedtaskkiller/HealthActivity;

    const v3, 0x7f060040

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
