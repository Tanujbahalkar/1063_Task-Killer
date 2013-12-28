.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/Ad;


# instance fields
.field private a:Ld;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "adSize"
    .parameter "adUnitId"

    .prologue
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/AdSize;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_0

    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    const-string v2, "adSize"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AdView missing required XML attribute \"adSize\"."

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    move-object v2, v1

    :goto_1
    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    const-string v3, "adUnitId"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "AdView missing required XML attribute \"adUnitId\"."

    invoke-direct {p0, p1, v1, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    goto :goto_0

    :cond_2
    const-string v2, "IAB_MRECT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    move-object v2, v1

    goto :goto_1

    :cond_3
    const-string v2, "IAB_BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    move-object v2, v1

    goto :goto_1

    :cond_4
    const-string v2, "IAB_LEADERBOARD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    move-object v2, v1

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \"adSize\" value in XML layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "Ads by Google"

    const/4 v3, -0x1

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;)V

    goto :goto_0

    :cond_7
    const-string v3, "@string/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "@string/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":string/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v5, v4}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iget-object v1, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    const-string v4, "loadAdOnCreate"

    const/4 v5, 0x0

    invoke-interface {p2, v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {p0, p1, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/AdSize;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find resource for \"adUnitId\": \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"adUnitId\" was not a string: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    :cond_9
    move-object v3, v1

    goto :goto_2

    :cond_a
    const-string v1, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-static {v1}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x2

    new-instance v0, Ld;

    invoke-direct {v0, p1, p0, p2, p3}, Ld;-><init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v2}, Ld;->i()Lg;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v3, v7

    sub-int v6, v4, v7

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V
    .locals 1

    invoke-static {p2}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    const/high16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    const-string v0, ""

    invoke-direct {p0, p1, p3, v0}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/AdSize;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->b()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->o()Z

    move-result v0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->p()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/AdRequest;)V
    .locals 1
    .parameter "adRequest"

    .prologue
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "activity was null while checking permissions."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0, p1}, Ld;->a(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/ads/AdListener;)V
    .locals 1
    .parameter "adListener"

    .prologue
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0, p1}, Ld;->a(Lcom/google/ads/AdListener;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->y()V

    return-void
.end method
