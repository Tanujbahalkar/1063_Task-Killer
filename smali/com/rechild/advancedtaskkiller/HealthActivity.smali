.class public Lcom/rechild/advancedtaskkiller/HealthActivity;
.super Landroid/app/Activity;
.source "HealthActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadAdmob()V
    .locals 5

    .prologue
    .line 41
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/rechild/advancedtaskkiller/HealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 42
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14a6ac7fd9f387"

    invoke-direct {v0, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 43
    .local v0, adView:Lcom/google/ads/AdView;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    .line 46
    .local v2, request:Lcom/google/ads/AdRequest;
    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/HealthActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/HealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rechild/advancedtaskkiller/HealthActivity$1;

    invoke-direct {v1, p0}, Lcom/rechild/advancedtaskkiller/HealthActivity$1;-><init>(Lcom/rechild/advancedtaskkiller/HealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/HealthActivity;->loadAdmob()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    return-void
.end method
