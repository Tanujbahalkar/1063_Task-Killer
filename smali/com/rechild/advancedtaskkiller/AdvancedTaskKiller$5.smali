.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;
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


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->showDialog(I)V

    .line 285
    new-instance v0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$5;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;-><init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;)V

    .line 286
    .local v0, ignore:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$IgnoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    return-void
.end method
