.class Lcom/rechild/advancedtaskkiller/NewSettings$1;
.super Ljava/lang/Object;
.source "NewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/NewSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/NewSettings;


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/NewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/NewSettings$1;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings$1;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->access$0(Lcom/rechild/advancedtaskkiller/NewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    .line 27
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings$1;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AutoStartReceiver;->RefreshNotification(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
