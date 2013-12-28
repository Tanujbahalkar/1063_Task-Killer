.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;
.super Landroid/os/AsyncTask;
.source "AdvancedTaskKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendBugReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;


# direct methods
.method private constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$5(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const-string v1, "OK"

    :goto_0
    return-object v1

    .line 470
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 471
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->removeDialog(I)V

    .line 479
    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$6(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$7(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method
