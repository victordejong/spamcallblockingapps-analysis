.class public Lcom/appnext/base/moments/services/OperationWorkManager;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static a(Ln3/m0/f;)Lcom/appnext/base/moments/a/a/c;
    .locals 10

    :try_start_0
    const-string v0, "key"

    .line 1
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "cycle"

    .line 2
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "cycle_type"

    .line 3
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "sample"

    .line 4
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "sample_type"

    .line 5
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "service_key"

    .line 6
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "status"

    .line 7
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "data"

    .line 8
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    new-instance p0, Lcom/appnext/base/moments/a/a/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/appnext/base/moments/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/a;->init(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/base/b/b;->init(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/appnext/base/moments/services/OperationWorkManager;->a(Ln3/m0/f;)Lcom/appnext/base/moments/a/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    .line 7
    :cond_1
    new-instance v1, Lcom/appnext/base/moments/services/a;

    invoke-direct {v1}, Lcom/appnext/base/moments/services/a;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/base/b/b;->init(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/b/a;->init(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/base/moments/b/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    const-string v1, "lat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appnext/base/b/b;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/moments/a/a;->T()Lcom/appnext/base/moments/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/base/moments/a/b/c;->k(Ljava/lang/String;)Lcom/appnext/base/moments/a/a/c;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/appnext/base/moments/operations/b;->aj()Lcom/appnext/base/moments/operations/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/base/moments/operations/b;->b(Lcom/appnext/base/moments/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OperationController$scheduleOperation"

    .line 15
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0
.end method
