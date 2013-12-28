.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;
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
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, healthCheck:Landroid/content/Intent;
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    const-class v2, Lcom/rechild/advancedtaskkiller/HealthActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$2;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    invoke-virtual {v1, v0}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
