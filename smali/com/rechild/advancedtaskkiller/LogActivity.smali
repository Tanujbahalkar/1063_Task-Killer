.class public Lcom/rechild/advancedtaskkiller/LogActivity;
.super Landroid/app/Activity;
.source "LogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/LogActivity;->setContentView(I)V

    .line 12
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 13
    .local v1, view:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Log;->GetAllLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    return-void
.end method
