.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;
.super Landroid/os/Handler;
.source "AdvancedTaskKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refreshMem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    .line 524
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 531
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Available Memory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v3, v3, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    invoke-static {v3}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->getAvaliableMemory(Landroid/app/ActivityManager;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->MemoryToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, mem:Ljava/lang/String;
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$9;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/rechild/advancedtaskkiller/Setting;->getAutoKillInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v1           #mem:Ljava/lang/String;
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 536
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
