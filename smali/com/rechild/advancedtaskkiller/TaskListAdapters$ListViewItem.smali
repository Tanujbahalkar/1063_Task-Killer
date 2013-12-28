.class public Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
.super Ljava/lang/Object;
.source "TaskListAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/TaskListAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewItem"
.end annotation


# instance fields
.field detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

.field icon:Landroid/widget/ImageView;

.field iconCheck:Landroid/widget/ImageView;

.field text_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
