.class public final Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskListAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rechild/advancedtaskkiller/TaskListAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessListAdapter"
.end annotation


# instance fields
.field private _Inflater:Landroid/view/LayoutInflater;

.field private _IsCheckBoxEnable:Z

.field private _List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_IsCheckBoxEnable:Z

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_List:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getCheckBoxEnable()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_IsCheckBoxEnable:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_List:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_List:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    .line 56
    .local v0, dp:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    if-nez p2, :cond_2

    .line 57
    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-direct {v2}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;-><init>()V

    .line 59
    .local v2, listViewItem:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    const v3, 0x7f070013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->icon:Landroid/widget/ImageView;

    .line 60
    const v3, 0x7f070015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->text_name:Landroid/widget/TextView;

    .line 61
    iput-object v0, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-boolean v3, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_IsCheckBoxEnable:Z

    if-eqz v3, :cond_0

    .line 65
    const v3, 0x7f070014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    sget v3, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 74
    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 77
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_1
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->text_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-boolean v3, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_IsCheckBoxEnable:Z

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    iget v3, v3, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->Importance:I

    const/16 v4, 0x12c

    if-gt v3, v4, :cond_4

    .line 89
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->text_name:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :goto_2
    invoke-virtual {v0}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_1
    :goto_3
    return-object p2

    .line 68
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #listViewItem:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    .line 69
    .restart local v2       #listViewItem:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    iput-object v0, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    goto :goto_0

    .line 81
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->icon:Landroid/widget/ImageView;

    const v4, 0x1080041

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 92
    :cond_4
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->text_name:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 99
    :cond_5
    iget-object v3, v2, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->iconCheck:Landroid/widget/ImageView;

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public setCheckBoxEnable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->_IsCheckBoxEnable:Z

    .line 38
    return-void
.end method
