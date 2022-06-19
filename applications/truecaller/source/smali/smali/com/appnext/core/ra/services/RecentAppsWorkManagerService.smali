.class public Lcom/appnext/core/ra/services/RecentAppsWorkManagerService;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static b(Ln3/m0/f;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "more_data"

    const-string v1, "action"

    const/4 v2, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v2

    .line 2
    invoke-virtual {p0, v0}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v3

    :catchall_0
    move-exception p0

    const-string v0, "RecentAppsWorkManagerService$createBundleFromData"

    .line 7
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
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

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/appnext/core/ra/services/RecentAppsWorkManagerService;->b(Ln3/m0/f;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v0, v2, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/appnext/core/ra/services/a$a;->values()[Lcom/appnext/core/ra/services/a$a;

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/appnext/core/ra/services/a$a;->values()[Lcom/appnext/core/ra/services/a$a;

    move-result-object v2

    aget-object v0, v2, v0

    .line 7
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/appnext/core/ra/a/c;->a(Landroid/content/Context;Lcom/appnext/core/ra/services/a$a;Landroid/os/Bundle;)Lcom/appnext/core/ra/a/b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/appnext/core/ra/a/b;->aO()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "RecentAppsWorkManagerService$doWork"

    .line 10
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0
.end method
