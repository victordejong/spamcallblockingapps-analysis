.class public final Lcom/hiya/stingray/data/sync/CallerGridRankingService;
.super Lcom/hiya/stingray/data/sync/a;
.source "SourceFile"


# instance fields
.field public g:Lcom/hiya/stingray/ui/callergrid/j;

.field public h:Li/c/b0/c/a;

.field public i:Lcom/hiya/stingray/ui/login/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/data/sync/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/hiya/stingray/ui/callergrid/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->g:Lcom/hiya/stingray/ui/callergrid/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callerGridHelper"

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

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->a(Lcom/hiya/stingray/data/sync/CallerGridRankingService;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    const/16 v4, 0x232d

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->i:Lcom/hiya/stingray/ui/login/o;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/hiya/stingray/util/n;->a:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "CallerGridRankingService required permissions not granted, exiting."

    .line 3
    invoke-static {v0, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->g:Lcom/hiya/stingray/ui/callergrid/j;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/callergrid/j;->g()Li/c/b0/b/v;

    move-result-object v2

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/hiya/stingray/data/sync/CallerGridRankingService$a;

    invoke-direct {v3, p0, p1}, Lcom/hiya/stingray/data/sync/CallerGridRankingService$a;-><init>(Lcom/hiya/stingray/data/sync/CallerGridRankingService;Landroid/app/job/JobParameters;)V

    .line 7
    new-instance v4, Lcom/hiya/stingray/data/sync/CallerGridRankingService$b;

    invoke-direct {v4, p0, p1}, Lcom/hiya/stingray/data/sync/CallerGridRankingService$b;-><init>(Lcom/hiya/stingray/data/sync/CallerGridRankingService;Landroid/app/job/JobParameters;)V

    .line 8
    invoke-virtual {v2, v3, v4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->h:Li/c/b0/c/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return v0

    :cond_2
    const-string p1, "compositeDisposable"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "callerGridHelper"

    .line 10
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "permissionHandler"

    .line 11
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Unrecognized Job ID for CallerGridRankingService"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    aput-object v1, v0, v2

    const-string p1, "Job ID %d"

    invoke-static {v3, p1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopJob called for CallerGridRankingService at time : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->h:Li/c/b0/c/a;

    const/4 v0, 0x0

    const-string v1, "compositeDisposable"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li/c/b0/c/a;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/data/sync/CallerGridRankingService;->h:Li/c/b0/c/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/c/b0/c/a;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method
