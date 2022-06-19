.class public final Lcom/hiya/client/callerid/job/services/CleanCacheService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public f:Lcom/hiya/client/callerid/dao/c;

.field private g:Li/c/b0/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService;->g:Li/c/b0/g/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/c/b0/g/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HiyaJob"

    const-string v1, "onStartJob called for clean cache service"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lg/g/b/a/i/c/d;->a:Lg/g/b/a/i/c/d$a;

    invoke-virtual {v0, p0}, Lg/g/b/a/i/c/d$a;->a(Landroid/content/Context;)Lg/g/b/a/i/c/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lg/g/b/a/i/c/d;->b(Lcom/hiya/client/callerid/job/services/CleanCacheService;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "clean_cache_last_scheduled_time"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService;->f:Lcom/hiya/client/callerid/dao/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hiya/client/callerid/dao/c;->i()Li/c/b0/b/e;

    move-result-object v0

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;-><init>(Lcom/hiya/client/callerid/job/services/CleanCacheService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->H(Li/c/b0/b/g;)Li/c/b0/b/g;

    check-cast v1, Li/c/b0/g/c;

    iput-object v1, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService;->g:Li/c/b0/g/c;

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "callerIdDao"

    .line 9
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/job/services/CleanCacheService;->a()V

    const/4 p1, 0x0

    return p1
.end method
