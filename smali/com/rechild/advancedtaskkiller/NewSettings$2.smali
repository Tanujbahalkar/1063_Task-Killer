.class Lcom/rechild/advancedtaskkiller/NewSettings$2;
.super Ljava/lang/Object;
.source "NewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/NewSettings$2;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "AutoKillLevelValue"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    .line 45
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/NewSettings$2;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/NewSettings;->access$1(Lcom/rechild/advancedtaskkiller/NewSettings;)V

    .line 46
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/NewSettings$2;->this$0:Lcom/rechild/advancedtaskkiller/NewSettings;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rechild/advancedtaskkiller/NewSettings;->access$2(Lcom/rechild/advancedtaskkiller/NewSettings;Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    return v1
.end method
