.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$4;
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
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$4;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/Setting;->setIgnoreServiceFrontApp(Z)V

    .line 271
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$4;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$9(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    .line 272
    return-void
.end method
