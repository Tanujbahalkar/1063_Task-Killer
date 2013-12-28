.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;
.super Landroid/os/AsyncTask;
.source "AdvancedTaskKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgnoreTask"
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
    .line 762
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$8(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    .line 767
    const-string v0, "OK"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->removeDialog(I)V

    .line 773
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->refresh()V

    .line 774
    return-void
.end method
