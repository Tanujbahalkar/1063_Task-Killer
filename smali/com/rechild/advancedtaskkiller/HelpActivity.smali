.class public Lcom/rechild/advancedtaskkiller/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadAdmob()V
    .locals 5

    .prologue
    .line 29
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/rechild/advancedtaskkiller/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 30
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14a6ac7fd9f387"

    invoke-direct {v0, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 31
    .local v0, adView:Lcom/google/ads/AdView;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    .line 34
    .local v2, request:Lcom/google/ads/AdRequest;
    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/HelpActivity;->setContentView(I)V

    .line 19
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    .local v1, view:Landroid/widget/TextView;
    const-string v2, "help.txt"

    invoke-static {p0, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method
