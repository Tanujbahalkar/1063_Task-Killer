.class public final Ld;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/ads/Ad;

.field private d:Lcom/google/ads/AdListener;

.field private e:Lc;

.field private f:Lcom/google/ads/AdRequest;

.field private g:Lcom/google/ads/AdSize;

.field private h:Lf;

.field private i:Ljava/lang/String;

.field private j:Lg;

.field private k:Lh;

.field private l:Landroid/os/Handler;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Landroid/content/SharedPreferences;

.field private q:J

.field private r:Lx;

.field private s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ld;->u:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ld;->c:Lcom/google/ads/Ad;

    iput-object p3, p0, Ld;->g:Lcom/google/ads/AdSize;

    iput-object p4, p0, Ld;->i:Ljava/lang/String;

    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    iput-object v0, p0, Ld;->h:Lf;

    iput-object v2, p0, Ld;->d:Lcom/google/ads/AdListener;

    iput-object v2, p0, Ld;->e:Lc;

    iput-object v2, p0, Ld;->f:Lcom/google/ads/AdRequest;

    iput-boolean v1, p0, Ld;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld;->l:Landroid/os/Handler;

    iput-wide v5, p0, Ld;->q:J

    iput-boolean v1, p0, Ld;->o:Z

    sget-object v0, Ld;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ld;->p:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ld;->p:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gez v3, :cond_0

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Ld;->m:J

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Ld;)V

    iput-object v0, p0, Ld;->r:Lx;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld;->s:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld;->t:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ld;->a()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    return-void

    :cond_0
    :try_start_1
    iput-wide v1, p0, Ld;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized z()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->e:Lc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ld;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "activity was null while trying to create an AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lg;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Ld;->g:Lcom/google/ads/AdSize;

    invoke-direct {v1, v0, v2}, Lg;-><init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Ld;->j:Lg;

    iget-object v0, p0, Ld;->j:Lg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    new-instance v0, Lh;

    sget-object v1, La;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lh;-><init>(Ld;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Ld;->k:Lh;

    :goto_1
    iget-object v0, p0, Ld;->j:Lg;

    iget-object v1, p0, Ld;->k:Lh;

    invoke-virtual {v0, v1}, Lg;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lh;

    sget-object v1, La;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lh;-><init>(Ld;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Ld;->k:Lh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(F)V
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_0
    iput-wide v0, p0, Ld;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ld;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    sget-object v0, Ld;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld;->p:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-wide p1, p0, Ld;->m:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ld;->d:Lcom/google/ads/AdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ld;->e:Lc;

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Ld;->h:Lf;

    invoke-virtual {v0}, Lf;->n()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ld;->h:Lf;

    invoke-virtual {v0}, Lf;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ld;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ld;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "activity is null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld;->n:Z

    iput-object p1, p0, Ld;->f:Lcom/google/ads/AdRequest;

    new-instance v0, Lc;

    invoke-direct {v0, p0}, Lc;-><init>(Ld;)V

    iput-object v0, p0, Ld;->e:Lc;

    iget-object v0, p0, Ld;->e:Lc;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/ads/AdRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ld;->a(Lcom/google/ads/AdListener;)V

    invoke-virtual {p0}, Ld;->y()V

    iget-object v0, p0, Ld;->j:Lg;

    invoke-virtual {v0}, Lg;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->l:Landroid/os/Handler;

    iget-object v1, p0, Ld;->r:Lx;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ld;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ld;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->l:Landroid/os/Handler;

    iget-object v1, p0, Ld;->r:Lx;

    iget-wide v2, p0, Ld;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final e()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Ld;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method final f()Lcom/google/ads/Ad;
    .locals 1

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    return-object v0
.end method

.method public final declared-synchronized g()Lc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->e:Lc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized i()Lg;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->j:Lg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized j()Lh;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->k:Lh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Lcom/google/ads/AdSize;
    .locals 1

    iget-object v0, p0, Ld;->g:Lcom/google/ads/AdSize;

    return-object v0
.end method

.method public final l()Lf;
    .locals 1

    iget-object v0, p0, Ld;->h:Lf;

    return-object v0
.end method

.method public final declared-synchronized m()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()J
    .locals 3

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    sget-object v0, Ld;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Ld;->m:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method public final declared-synchronized o()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized q()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ld;->e:Lc;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->n:Z

    iget-object v0, p0, Ld;->j:Lg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    iget-object v0, p0, Ld;->h:Lf;

    invoke-virtual {v0}, Lf;->c()V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld;->u()V

    :cond_0
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->h:Lf;

    invoke-virtual {v0}, Lf;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->h:Lf;

    invoke-virtual {v0}, Lf;->b()V

    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Ld;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lw;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Ld;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized v()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Ld;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ld;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lw;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lw;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Ld;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized w()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->f:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->c:Lcom/google/ads/Ad;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->f:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Ld;->a(Lcom/google/ads/AdRequest;)V

    :goto_0
    iget-object v0, p0, Ld;->l:Landroid/os/Handler;

    iget-object v1, p0, Ld;->r:Lx;

    iget-wide v2, p0, Ld;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized x()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ld;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->e:Lc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->e:Lc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld;->e:Lc;

    :cond_0
    iget-object v0, p0, Ld;->j:Lg;

    invoke-virtual {v0}, Lg;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
