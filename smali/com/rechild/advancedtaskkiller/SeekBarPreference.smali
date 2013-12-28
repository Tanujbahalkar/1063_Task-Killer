.class public Lcom/rechild/advancedtaskkiller/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mMin:I

.field private mOriginalValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSplashText:Landroid/widget/TextView;

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mOriginalValue:I

    .line 22
    const/16 v0, 0x24

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    .line 26
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    .line 28
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 29
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDefault:I

    .line 30
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMax:I

    .line 31
    return-void
.end method

.method private setValueText(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, t:Ljava/lang/String;
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    iget v1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMax:I

    iget v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    iget v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x6

    .line 36
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 54
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->getPersistedInt(I)I

    move-result v2

    iput v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMax:I

    iget v4, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    iget-object v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    iget v4, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    invoke-direct {p0, v2}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->setValueText(I)V

    .line 63
    iget v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    iput v2, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mOriginalValue:I

    .line 64
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 88
    if-eqz p1, :cond_1

    .line 90
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    sput v0, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mOriginalValue:I

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->persistInt(I)Z

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seek"
    .parameter "value"
    .parameter "fromTouch"

    .prologue
    .line 101
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->setValueText(I)V

    .line 102
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    .line 105
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->persistInt(I)Z

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    .line 83
    .end local p2
    :goto_1
    return-void

    .line 78
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 115
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 116
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 118
    iput p1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMax:I

    return-void
.end method

.method public setMin(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 121
    iput p1, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 125
    iget v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mMin:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mValue:I

    .line 126
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    :cond_0
    return-void
.end method
