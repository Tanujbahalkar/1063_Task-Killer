.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;
.super Ljava/lang/Object;
.source "AdvancedTaskKiller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

.field private final synthetic val$bugView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iput-object p2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->val$bugView:Landroid/view/View;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 319
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-virtual {v2, v4}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    .line 320
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->val$bugView:Landroid/view/View;

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 322
    .local v0, msgEditText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$10(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$8;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;)V

    .line 324
    .local v1, task:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$SendBugReportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method
