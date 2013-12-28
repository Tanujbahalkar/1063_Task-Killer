.class Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;
.super Ljava/lang/Object;
.source "AdvancedTaskKiller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->menu(Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

.field private final synthetic val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;


# direct methods
.method constructor <init>(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iput-object p2, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 632
    packed-switch p2, :pswitch_data_0

    .line 649
    :goto_0
    return-void

    .line 635
    :pswitch_0
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$11(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$12(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$13(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 644
    :pswitch_3
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$14(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 647
    :pswitch_4
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->this$0:Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;

    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller$10;->val$lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    invoke-static {v0, v1}, Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;->access$15(Lcom/rechild/advancedtaskkiller/AdvancedTaskKiller;Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;)V

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
