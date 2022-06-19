.class public Lcom/appnext/core/crashes/CrashesReportWorkManagerService;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/appnext/core/crashes/CrashesReportWorkManagerService;

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "methodName"

    .line 2
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "exception"

    .line 3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 6
    new-instance p2, Ln3/m0/d$a;

    invoke-direct {p2}, Ln3/m0/d$a;-><init>()V

    .line 7
    sget-object v1, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v1, p2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, p2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v2, Ln3/m0/r$a;

    invoke-direct {v2, v0}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 12
    iget-object v0, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 13
    iget-object v0, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 14
    iget-object p1, v2, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 16
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    check-cast p1, Ln3/m0/r;

    .line 17
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p0

    .line 18
    sget-object v0, Ln3/m0/h;->c:Ln3/m0/h;

    .line 19
    invoke-virtual {p0, p2, v0, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    :cond_0
    const-string v1, "methodName"

    .line 3
    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    .line 4
    invoke-virtual {v0, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/appnext/core/crashes/a;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/appnext/core/crashes/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/appnext/core/crashes/a;->aE()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0
.end method
