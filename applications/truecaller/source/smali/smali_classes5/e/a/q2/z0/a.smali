.class public final Le/a/q2/z0/a;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/q2/z0/b;


# direct methods
.method public constructor <init>(Le/a/q2/z0/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/q2/z0/a;->c:Le/a/q2/z0/b;

    const-string p1, "AppHeartBeatWorkAction"

    .line 2
    iput-object p1, p0, Le/a/q2/z0/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->Active:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    .line 3
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "WorkManager.getInstance(this)"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x5

    .line 5
    invoke-static {v2, v3}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "beatType"

    .line 8
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, v3}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v3, "Data.Builder().putString\u2026_TYPE, type.name).build()"

    .line 11
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "AppHeartBeatWorkAction"

    .line 12
    invoke-static {v1, v3, p0, v2, v0}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/y2/k;->a:Ln3/m0/f;

    const-string v2, "beatType"

    .line 2
    invoke-virtual {v1, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "it"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    :goto_0
    instance-of v2, v1, Ls1/l$a;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 5
    :goto_1
    check-cast v0, Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    sget-object v0, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->Active:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    .line 7
    :goto_2
    iget-object v1, p0, Le/a/q2/z0/a;->c:Le/a/q2/z0/b;

    invoke-interface {v1, v0}, Le/a/q2/z0/b;->c(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/z0/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/z0/a;->c:Le/a/q2/z0/b;

    invoke-interface {v0}, Le/a/q2/z0/b;->a()Z

    move-result v0

    return v0
.end method
