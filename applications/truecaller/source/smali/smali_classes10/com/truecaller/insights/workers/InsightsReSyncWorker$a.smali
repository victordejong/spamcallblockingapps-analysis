.class public final Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/workers/InsightsReSyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;Ljava/lang/String;ZZI)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;->b(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a()Le/a/y2/h;
    .locals 4

    .line 1
    new-instance v0, Le/a/y2/h;

    const-class v1, Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 2
    sget-object v1, Ln3/m0/q;->a:Ln3/m0/q;

    invoke-virtual {v0, v1}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 3
    iget-object v1, v0, Le/a/y2/h;->c:Ln3/m0/d$a;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Ln3/m0/d$a;->d:Z

    .line 5
    iput-boolean v2, v1, Ln3/m0/d$a;->b:Z

    return-object v0
.end method

.method public final b(Ljava/lang/String;ZZ)V
    .locals 7

    sget-object v0, Ln3/m0/q;->a:Ln3/m0/q;

    const-string v1, "context"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 5
    const-class v3, Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    const-string v4, "workerClass"

    .line 6
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Ln3/m0/d$a;

    invoke-direct {v4}, Ln3/m0/d$a;-><init>()V

    .line 8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v6, "re_run_param_clean"

    invoke-virtual {v5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "re_run_param_notify"

    invoke-virtual {v5, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "re_run_context"

    .line 11
    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v5}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 13
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string p2, "data.build()"

    .line 14
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "data"

    .line 15
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "networkType"

    .line 16
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object v0, v4, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 18
    new-instance p2, Ln3/m0/r$a;

    invoke-static {v3}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p3, Ln3/m0/d;

    invoke-direct {p3, v4}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 21
    iget-object v3, p2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p3, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 22
    iget-object p3, p2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, p3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 23
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string p2, "OneTimeWorkRequest.Build\u2026t) }\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    const-string p2, "InsightsReSyncWorkerOneOff"

    .line 24
    invoke-virtual {v1, p2, v2, p1}, Ln3/m0/y;->a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 25
    new-instance p2, Le/a/y2/h;

    const-class p3, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;

    invoke-static {p3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p3

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v3

    invoke-direct {p2, p3, v3}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 26
    invoke-virtual {p2, v0}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 27
    iget-object p3, p2, Le/a/y2/h;->c:Ln3/m0/d$a;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p3, Ln3/m0/d$a;->d:Z

    .line 29
    iput-boolean v0, p3, Ln3/m0/d$a;->b:Z

    .line 30
    invoke-virtual {p2}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 32
    new-instance p2, Le/a/y2/h;

    const-class p3, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;

    invoke-static {p3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p3

    invoke-static {v1, v2}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    const-wide/16 v1, 0x1

    .line 33
    invoke-static {v1, v2}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object p3

    const-string v3, "Duration.standardDays(1)"

    invoke-static {p3, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "interval"

    .line 34
    invoke-static {p3, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p3, p2, Le/a/y2/h;->a:Lw3/b/a/i;

    .line 36
    sget-object p3, Ln3/m0/a;->a:Ln3/m0/a;

    invoke-static {v1, v2}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v1

    const-string v2, "Duration.standardHours(1)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v1}, Le/a/y2/h;->d(Ln3/m0/a;Lw3/b/a/i;)Le/a/y2/h;

    .line 37
    iget-object p3, p2, Le/a/y2/h;->c:Ln3/m0/d$a;

    .line 38
    iput-boolean v0, p3, Ln3/m0/d$a;->a:Z

    .line 39
    iput-boolean v0, p3, Ln3/m0/d$a;->d:Z

    .line 40
    invoke-virtual {p2}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ln3/m0/w;->a()Ln3/m0/s;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsReSyncWorkerOneOff"

    return-object v0
.end method
