.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$1;
.super Ljava/lang/Object;
.source "AdvancedTaskKiller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->bindEvent()V
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
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$1;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 108
    const-string v0, "ATK"

    const-string v1, "Start manully kill!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$1;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-static {v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$9(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;)V

    .line 117
    return-void
.end method
