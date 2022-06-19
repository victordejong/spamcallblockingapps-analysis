.class public final Le/a/c/i/m/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/m/f;


# instance fields
.field public final a:Le/a/c/c0/o;

.field public final b:Le/a/c/c/f/n;

.field public final c:Le/a/c/b/e;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c0/o;Le/a/c/c/f/n;Le/a/c/b/e;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    iput-object p2, p0, Le/a/c/i/m/g;->b:Le/a/c/c/f/n;

    iput-object p3, p0, Le/a/c/i/m/g;->c:Le/a/c/b/e;

    iput-object p4, p0, Le/a/c/i/m/g;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    .line 2
    iget-object v0, p0, Le/a/c/i/m/g;->d:Ls1/w/f;

    new-instance v1, Le/a/c/i/m/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/i/m/g$a;-><init>(Le/a/c/i/m/g;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->h0()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->h0()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 10

    sget-object v0, Ln3/m0/q;->a:Ln3/m0/q;

    const-string v1, "context"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v3, Le/a/y2/h;

    const-class v4, Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const-wide/16 v5, 0x6

    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 7
    invoke-virtual {v3, v0}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 8
    iget-object v4, v3, Le/a/y2/h;->c:Ln3/m0/d$a;

    const/4 v7, 0x1

    .line 9
    iput-boolean v7, v4, Ln3/m0/d$a;->d:Z

    .line 10
    iput-boolean v7, v4, Ln3/m0/d$a;->b:Z

    .line 11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 12
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "re_run_param_clean"

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "re_run_param_notify"

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "re_run_context"

    .line 14
    invoke-virtual {v4, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v4}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 16
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v4, "data.build()"

    .line 17
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Le/a/y2/h;->e(Ln3/m0/f;)Le/a/y2/h;

    .line 18
    invoke-virtual {v3}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object p1

    const-string v3, "InsightsReSyncWorkerOneOff"

    .line 19
    invoke-virtual {v1, v3, v2, p1}, Ln3/m0/y;->a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 20
    const-class v1, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    const-string v2, "workerClass"

    .line 21
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    const-string v4, "networkType"

    .line 23
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v0, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 25
    iput-boolean v7, v3, Ln3/m0/d$a;->d:Z

    .line 26
    iput-boolean v7, v3, Ln3/m0/d$a;->b:Z

    .line 27
    new-instance v0, Ln3/m0/r$a;

    invoke-static {v1}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 28
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 29
    iget-object v3, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 30
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026t) }\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/m0/r;

    .line 31
    invoke-virtual {p1, v0}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 32
    const-class v0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    .line 33
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    const-wide/16 v3, 0x1

    .line 35
    invoke-static {v3, v4}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v5

    const-string v6, "Duration.standardDays(1)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "interval"

    .line 36
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v5, Ln3/m0/a;->a:Ln3/m0/a;

    invoke-static {v3, v4}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v3

    const-string v4, "Duration.standardHours(1)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "backoffPolicy"

    .line 38
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "backoffDelay"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-boolean v7, v2, Ln3/m0/d$a;->a:Z

    .line 40
    iput-boolean v7, v2, Ln3/m0/d$a;->d:Z

    .line 41
    new-instance v4, Ln3/m0/r$a;

    invoke-static {v0}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v4, v0}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 42
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 43
    iget-object v2, v4, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 44
    iget-wide v2, v3, Lw3/b/a/e0/f;->a:J

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v2, v3, v0}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    .line 46
    invoke-virtual {v4}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/m0/r;

    .line 47
    invoke-virtual {p1, v0}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ln3/m0/w;->a()Ln3/m0/s;

    .line 49
    iget-object p1, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {p1, v7}, Le/a/c/c0/o;->c(I)V

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->h0()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->A()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Le/a/c/i/m/g;->c:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    iget-object v2, p0, Le/a/c/i/m/g;->c:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/c/c0/o;->L(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->h0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/c/i/m/g;->a:Le/a/c/c0/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/c/c0/o;->c(I)V

    :goto_0
    return-void
.end method
