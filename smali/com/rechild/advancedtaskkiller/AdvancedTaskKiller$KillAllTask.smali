.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;
.super Landroid/os/AsyncTask;
.source "AdvancedTaskKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KillAllTask"
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
    .line 145
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$0(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v3, v3, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->_ActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->KillProcess(Landroid/content/Context;Ljava/util/List;Landroid/app/ActivityManager;Z)I

    .line 151
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-virtual {v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->getRunningProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const-string v1, "OK"

    return-object v1

    .line 152
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 153
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ATK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    new-instance v1, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v3}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$0(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$1(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$2(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$3(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$KillAllTask;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$4(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    .line 163
    const-string v0, "ATK"

    const-string v1, "Manually kill ends"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method
