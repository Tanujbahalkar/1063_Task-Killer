.class public final Ln;
.super Ljava/lang/Object;

# interfaces
.implements Li;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "Could not get URL from click gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lw;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lw;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
