.class public final Lc;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc$a;,
        Lc$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/ads/AdRequest;",
        "Ljava/lang/String;",
        "Lcom/google/ads/AdRequest$ErrorCode;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/ads/AdRequest$ErrorCode;

.field private d:Ljava/lang/String;

.field private e:Lb;

.field private f:Ld;

.field private g:Landroid/webkit/WebView;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ld;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lc;->f:Ld;

    iput-object v1, p0, Lc;->b:Ljava/lang/String;

    iput-object v1, p0, Lc;->a:Ljava/lang/String;

    iput-object v1, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean v4, p0, Lc;->h:Z

    iput-boolean v4, p0, Lc;->i:Z

    invoke-virtual {p1}, Ld;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    new-instance v2, Lh;

    sget-object v3, La;->a:Ljava/util/Map;

    invoke-direct {v2, p1, v3, v4, v4}, Lh;-><init>(Ld;Ljava/util/Map;ZZ)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    new-instance v1, Lb;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lb;-><init>(Lc;Ld;Landroid/content/Context;)V

    iput-object v1, p0, Lc;->e:Lb;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lc;->g:Landroid/webkit/WebView;

    iput-object v1, p0, Lc;->e:Lb;

    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private varargs a([Lcom/google/ads/AdRequest;)Lcom/google/ads/AdRequest$ErrorCode;
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc;->e:Lb;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lc;->f:Ld;

    invoke-virtual {v1}, Ld;->e()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0, v0, v1}, Lc;->a(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lc$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc$a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc;->f:Ld;

    invoke-virtual {v0}, Ld;->n()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    cmp-long v0, v6, v11

    if-lez v0, :cond_3

    :try_start_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :try_start_4
    iget-object v0, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to connect to network."

    invoke-static {v1, v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Caught internal exception."

    invoke-static {v1, v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lc;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lc;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lc;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v8

    sub-long v0, v6, v0

    cmp-long v2, v0, v11

    if-lez v2, :cond_6

    :try_start_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :try_start_6
    iget-object v0, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the HTML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lc;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lc;->f:Ld;

    invoke-virtual {v0}, Ld;->i()Lg;

    move-result-object v0

    iget-object v1, p0, Lc;->f:Ld;

    invoke-virtual {v1}, Ld;->j()Lh;

    move-result-object v1

    invoke-virtual {v1}, Lh;->a()V

    iget-object v1, p0, Lc;->d:Ljava/lang/String;

    iget-object v2, p0, Lc;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lg;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v1

    sub-long/2addr v1, v8

    sub-long v1, v6, v1

    cmp-long v3, v1, v11

    if-lez v3, :cond_9

    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :try_start_8
    iget-boolean v1, p0, Lc;->i:Z

    if-eqz v1, :cond_a

    monitor-exit p0

    move-object v0, v10

    goto/16 :goto_0

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdLoader InterruptedException while loading the HTML: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg;->stopLoading()V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lg;->stopLoading()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private a(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc$a;,
            Lc$b;
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lc;->f:Ld;

    invoke-virtual {v2}, Ld;->l()Lf;

    move-result-object v2

    invoke-virtual {v2}, Lf;->h()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    const-string v5, "prl"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Lf;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "ppcl"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lf;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "pcl"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lf;->e()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_3

    const-string v5, "pcc"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v3, "preqs"

    invoke-static {}, Lf;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lf;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "pai"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2}, Lf;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "aoi_timeout"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v2}, Lf;->m()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "aoi_nofill"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2}, Lf;->p()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "pit"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v2}, Lf;->a()V

    invoke-virtual {v2}, Lf;->d()V

    iget-object v2, p0, Lc;->f:Ld;

    invoke-virtual {v2}, Ld;->f()Lcom/google/ads/Ad;

    move-result-object v2

    instance-of v2, v2, Lcom/google/ads/InterstitialAd;

    if-eqz v2, :cond_8

    const-string v2, "format"

    const-string v3, "interstitial_mb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "slotname"

    iget-object v3, p0, Lc;->f:Ld;

    invoke-virtual {v3}, Ld;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    const-string v3, "afma-sdk-a-v4.1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v3, "msid"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".android."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isu"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    new-instance v0, Lc$b;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, p0, v1}, Lc$b;-><init>(Lc;Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, p0, Lc;->f:Ld;

    invoke-virtual {v2}, Ld;->k()Lcom/google/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v2, "format"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "w"

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "h"

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_frame"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lc$a;

    const-string v1, "NameNotFound!"

    invoke-direct {v0, p0, v1}, Lc$a;-><init>(Lc;Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v3, "net"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "cap"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v2, "u_audio"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->f(Landroid/content/Context;)Lcom/google/ads/util/AdUtil$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/util/AdUtil$a;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "u_so"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v2, "u_sd"

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "u_h"

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "u_w"

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "simulator"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head><script src=\"http://www.gstatic.com/afma/sdk-core-v40.js\"></script><script>AFMA_buildAdURL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adRequestUrlHtml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc;->i:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
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
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc;->c:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lc;->d:Ljava/lang/String;

    iput-object p1, p0, Lc;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Lcom/google/ads/AdRequest;

    .end local p1
    invoke-direct {p0, p1}, Lc;->a([Lcom/google/ads/AdRequest;)Lcom/google/ads/AdRequest$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    const-string v0, "AdLoader cancelled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lc;->e:Lb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb;->cancel(Z)Z

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "x0"

    .prologue
    check-cast p1, Lcom/google/ads/AdRequest$ErrorCode;

    .end local p1
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lc;->f:Ld;

    invoke-virtual {v0}, Ld;->q()V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lc;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lc;->e:Lb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb;->cancel(Z)Z

    iget-boolean v0, p0, Lc;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc;->f:Ld;

    invoke-virtual {v0}, Ld;->i()Lg;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lc;->f:Ld;

    invoke-virtual {v0, p1}, Ld;->a(Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "x0"

    .prologue
    const/4 v3, 0x0

    check-cast p1, [Ljava/lang/String;

    .end local p1
    iget-object v0, p0, Lc;->e:Lb;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
