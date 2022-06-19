.class public final Lcom/hiya/stingray/data/sync/SendTextEventsJobService;
.super Lcom/hiya/stingray/data/sync/a;
.source "SourceFile"


# instance fields
.field public g:Lcom/hiya/stingray/manager/d4;

.field public h:Lcom/hiya/stingray/manager/h2;

.field public i:Lcom/hiya/stingray/manager/h4;

.field public j:Li/c/b0/c/a;

.field public k:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/data/sync/a;-><init>()V

    return-void
.end method

.method public static final synthetic d(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Ljava/util/List;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->g(Ljava/util/List;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private final g(Ljava/util/List;Landroid/app/job/JobParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/d;",
            ">;",
            "Landroid/app/job/JobParameters;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/hiya/stingray/q/c/d;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/s/k;->h0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->g:Lcom/hiya/stingray/manager/d4;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/manager/d4;->a(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$a;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$a;-><init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doAfterTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p2

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p2

    .line 8
    new-instance v0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;-><init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Ljava/util/List;)V

    .line 9
    sget-object p1, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$c;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService$c;

    .line 10
    invoke-virtual {p2, v0, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    const-string p2, "smsEventManager.getRealm\u2026s, sms event receiver\")})"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->j:Li/c/b0/c/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_1
    const-string p1, "compositeDisposable"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "smsEventManager"

    .line 12
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final e()Lcom/hiya/stingray/manager/h2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->h:Lcom/hiya/stingray/manager/h2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dataIngestingAgent"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()Lcom/hiya/stingray/manager/o2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->k:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceUserInfoManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->b()Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->d(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const-string v0, "jobParams"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x232c

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unrecognized Job ID for SendTextEventsJobService"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Job ID %d"

    invoke-static {v0, p1, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->g:Lcom/hiya/stingray/manager/d4;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d4;->b()Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v3, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;

    invoke-direct {v3, p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;-><init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v3}, Li/c/b0/b/v;->takeWhile(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v0, v3}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    new-instance v3, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;

    invoke-direct {v3, p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;-><init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V

    .line 7
    new-instance v4, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;

    invoke-direct {v4, p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;-><init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V

    .line 8
    invoke-virtual {v0, v3, v4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    const-string v0, "smsEventManager.getSmsEv\u2026                       })"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->j:Li/c/b0/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return v1

    :cond_1
    const-string p1, "compositeDisposable"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "smsEventManager"

    .line 10
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "onStop SendTextEventsJobService time: %d"

    invoke-static {v0, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->j:Li/c/b0/c/a;

    const/4 v0, 0x0

    const-string v2, "compositeDisposable"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li/c/b0/c/a;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->j:Li/c/b0/c/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/c/b0/c/a;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method
