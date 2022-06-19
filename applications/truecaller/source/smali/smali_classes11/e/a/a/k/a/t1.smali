.class public final Le/a/a/k/a/t1;
.super Le/a/f4/b/h/h;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/s1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/b/h/h<",
        "Le/a/t2/a/e/a/b$b;",
        "Le/a/t2/a/e/a/b$a;",
        ">;",
        "Le/a/a/k/a/s1;"
    }
.end annotation


# instance fields
.field public final o:Landroid/content/Context;

.field public final p:Le/a/p5/g;

.field public final q:Le/a/f4/a/d;

.field public final r:Le/a/a/i0;

.field public final s:Le/a/q2/a;

.field public final t:Le/a/p5/u;

.field public final u:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;"
        }
    .end annotation
.end field

.field public final v:Le/a/a/k/a/i1;

.field public final w:Le/a/p4/b;

.field public final x:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Le/a/x3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/f4/a/d;Le/a/a/i0;Le/a/q2/a;Le/a/p5/u;Lo3/a;Le/a/a/k/a/i1;Le/a/p4/b;Lo3/a;Le/a/x3/c;)V
    .locals 18
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "grpc_user_agent"
        .end annotation
    .end param
    .param p10    # Le/a/f4/b/a;
        .annotation runtime Ljavax/inject/Named;
            value = "im_cross_domain_support"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/b0/e/l;",
            "Le/a/b0/e/h;",
            "Le/a/p5/g;",
            "Ljava/lang/String;",
            "Le/a/f4/b/h/c;",
            "Le/a/f4/b/g/b;",
            "Le/a/f4/b/b;",
            "Le/a/f4/b/f/b;",
            "Le/a/f4/b/a;",
            "Le/a/f4/a/d;",
            "Le/a/a/i0;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;",
            "Le/a/a/k/a/i1;",
            "Le/a/p4/b;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;>;",
            "Le/a/x3/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p4

    move-object/from16 v12, p11

    move-object/from16 v11, p12

    move-object/from16 v10, p13

    move-object/from16 v9, p14

    move-object/from16 v8, p15

    move-object/from16 v7, p16

    move-object/from16 v6, p17

    move-object/from16 v5, p18

    move-object/from16 v4, p19

    const-string v0, "context"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryAuthTokenManager"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelNetworkChangesHandler"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeLocationsManager"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    move-object/from16 v13, p8

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainFrontingResolver"

    move-object/from16 v13, p9

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    move-object/from16 v13, p10

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialsChecker"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtils"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v16, Lcom/truecaller/common/network/util/KnownEndpoints;->MESSENGER:Lcom/truecaller/common/network/util/KnownEndpoints;

    const/16 v0, 0x14

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v17

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p5

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p19

    .line 3
    invoke-direct/range {v0 .. v13}, Le/a/f4/b/h/h;-><init>(Landroid/content/Context;Lcom/truecaller/common/network/util/KnownEndpoints;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/Integer;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

    iput-object v15, v14, Le/a/a/k/a/t1;->o:Landroid/content/Context;

    move-object/from16 v0, p4

    iput-object v0, v14, Le/a/a/k/a/t1;->p:Le/a/p5/g;

    move-object/from16 v0, p11

    iput-object v0, v14, Le/a/a/k/a/t1;->q:Le/a/f4/a/d;

    move-object/from16 v0, p12

    iput-object v0, v14, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    move-object/from16 v0, p13

    iput-object v0, v14, Le/a/a/k/a/t1;->s:Le/a/q2/a;

    move-object/from16 v0, p14

    iput-object v0, v14, Le/a/a/k/a/t1;->t:Le/a/p5/u;

    move-object/from16 v0, p15

    iput-object v0, v14, Le/a/a/k/a/t1;->u:Lo3/a;

    move-object/from16 v0, p16

    iput-object v0, v14, Le/a/a/k/a/t1;->v:Le/a/a/k/a/i1;

    move-object/from16 v0, p17

    iput-object v0, v14, Le/a/a/k/a/t1;->w:Le/a/p4/b;

    move-object/from16 v0, p18

    iput-object v0, v14, Le/a/a/k/a/t1;->x:Lo3/a;

    move-object/from16 v0, p19

    iput-object v0, v14, Le/a/a/k/a/t1;->y:Le/a/x3/c;

    return-void
.end method


# virtual methods
.method public b(Le/a/b0/b/e;)Lp3/a/q1/c;
    .locals 1

    const-string v0, "targetDomain"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/a/k/a/t1;->l()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-super {p0, p1}, Le/a/f4/b/h/h;->b(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/b$b;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Le/a/a/k/a/t1;->n(Lp3/a/q1/c;)Lp3/a/q1/c;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/t2/a/e/a/b$b;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c(Le/a/b0/b/e;)Lp3/a/q1/c;
    .locals 1

    const-string v0, "targetDomain"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/a/k/a/t1;->l()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-super {p0, p1}, Le/a/f4/b/h/h;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/b$a;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Le/a/a/k/a/t1;->n(Lp3/a/q1/c;)Lp3/a/q1/c;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/t2/a/e/a/b$a;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e(Lp3/a/o1/d;)V
    .locals 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const-string v2, "keepalive time must be positive"

    .line 2
    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    const-wide/16 v1, 0x2d

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p1, Lp3/a/o1/d;->f:J

    .line 4
    sget-wide v2, Lp3/a/n1/j1;->l:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5
    iput-wide v0, p1, Lp3/a/o1/d;->f:J

    .line 6
    sget-wide v2, Lp3/a/o1/d;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 7
    iput-wide v0, p1, Lp3/a/o1/d;->f:J

    :cond_0
    return-void
.end method

.method public f(Lp3/a/d;)Lp3/a/q1/c;
    .locals 3

    const-string v0, "channel"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lp3/a/c;->k:Lp3/a/c;

    .line 3
    sget-object v1, Lp3/a/q1/e;->b:Lp3/a/c$a;

    sget-object v2, Lp3/a/q1/e$f;->a:Lp3/a/q1/e$f;

    .line 4
    invoke-virtual {v0, v1, v2}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/t2/a/e/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/e/a/b$a;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/e/a/a;)V

    const-string p1, "MessengerGrpc.newBlockingStub(channel)"

    .line 6
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public h(Lp3/a/d;)Lp3/a/q1/c;
    .locals 3

    const-string v0, "channel"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lp3/a/c;->k:Lp3/a/c;

    .line 3
    sget-object v1, Lp3/a/q1/e;->b:Lp3/a/c$a;

    sget-object v2, Lp3/a/q1/e$f;->c:Lp3/a/q1/e$f;

    .line 4
    invoke-virtual {v0, v1, v2}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/t2/a/e/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/e/a/b$b;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/e/a/a;)V

    const-string p1, "MessengerGrpc.newStub(channel)"

    .line 6
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public j()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lp3/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Le/a/f4/e/a;

    iget-object v2, p0, Le/a/a/k/a/t1;->q:Le/a/f4/a/d;

    iget-object v3, p0, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    iget-object v4, p0, Le/a/a/k/a/t1;->x:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "imGroupManager.get()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/r2/f;

    invoke-direct {v1, v2, v3, v4}, Le/a/f4/e/a;-><init>(Le/a/f4/a/d;Le/a/a/i0;Le/a/r2/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Le/a/a/k/a/t1;->o:Landroid/content/Context;

    invoke-static {v1}, Le/a/j4/b/a/h;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Le/a/a/k/a/r1;

    invoke-direct {v1}, Le/a/a/k/a/r1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized l()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/a/k/a/t1;->m()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    .line 2
    :cond_2
    :try_start_1
    iget-object v0, p0, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->h0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    iget-object v1, p0, Le/a/a/k/a/t1;->u:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l4/h;

    invoke-interface {v1}, Le/a/l4/h;->a()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/i0;->F1(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()Z
    .locals 19

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-super {v1, v0}, Le/a/f4/b/h/h;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_4

    .line 2
    iget-object v3, v1, Le/a/a/k/a/t1;->s:Le/a/q2/a;

    const-string v4, "ImRequest"

    const-string v12, "type"

    .line 3
    invoke-static {v4, v12}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v13

    const-string v14, "name"

    const-string v15, "getPeerImId"

    const-string v11, "value"

    move-object v5, v12

    move-object v6, v14

    move-object v7, v15

    move-object v8, v11

    move-object v9, v13

    move-object v10, v12

    move-object v2, v11

    move-object v11, v15

    .line 4
    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 5
    iget-object v6, v1, Le/a/a/k/a/t1;->t:Le/a/p5/u;

    invoke-interface {v6}, Le/a/p5/u;->d()Z

    move-result v6

    const-string v16, "no-connection"

    if-eqz v6, :cond_0

    iget-object v6, v1, Le/a/a/k/a/t1;->t:Le/a/p5/u;

    invoke-interface {v6}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v16

    :goto_0
    const-string v11, "connectionType"

    .line 6
    invoke-static {v11, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v13, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "attempt"

    const-string v10, "status"

    .line 8
    invoke-static {v10, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v13, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v6

    invoke-virtual {v6, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v6, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v6, v13}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v6}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v5

    const-string v13, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v5, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v3, v5}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/a/t2/a/e/a/b$a;->o(Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;)Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;

    move-result-object v0

    .line 13
    iget-object v3, v1, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3, v0}, Le/a/a/i0;->l4(Ljava/lang/String;)V

    .line 14
    iget-object v0, v1, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Le/a/a/i0;->F1(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 15
    instance-of v3, v0, Lp3/a/i1;

    if-eqz v3, :cond_3

    .line 16
    iget-object v3, v1, Le/a/a/k/a/t1;->s:Le/a/q2/a;

    .line 17
    invoke-static {v4, v12}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    move-object v5, v12

    move-object v6, v14

    move-object v7, v15

    move-object v8, v2

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object v3, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v15

    .line 18
    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 19
    iget-object v6, v1, Le/a/a/k/a/t1;->t:Le/a/p5/u;

    invoke-interface {v6}, Le/a/p5/u;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Le/a/a/k/a/t1;->t:Le/a/p5/u;

    invoke-interface {v6}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v16

    :cond_2
    move-object/from16 v6, v16

    .line 20
    invoke-static {v12, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v17

    .line 21
    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "failure"

    .line 22
    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "errorCode"

    .line 24
    move-object v6, v0

    check-cast v6, Lp3/a/i1;

    .line 25
    iget-object v6, v6, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v8, "error.status"

    .line 26
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v6, v6, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 28
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    move-object/from16 v3, v18

    invoke-static {v2, v7, v13, v3}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 32
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register to IM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public final n(Lp3/a/q1/c;)Lp3/a/q1/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lp3/a/q1/c<",
            "TS;>;>(TS;)TS;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    .line 2
    sget-object v1, Lp3/a/o0;->c:Lp3/a/o0$d;

    const-string v2, "Version"

    invoke-static {v2, v1}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v2

    .line 3
    iget-object v3, p0, Le/a/a/k/a/t1;->v:Le/a/a/k/a/i1;

    invoke-interface {v3}, Le/a/a/k/a/i1;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v2, v3}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Le/a/a/k/a/t1;->w:Le/a/p4/b;

    invoke-interface {v2}, Le/a/p4/b;->B1()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "versioning"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v2, p0, Le/a/a/k/a/t1;->w:Le/a/p4/b;

    invoke-interface {v2}, Le/a/p4/b;->t2()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "commands"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v2, p0, Le/a/a/k/a/t1;->w:Le/a/p4/b;

    invoke-interface {v2}, Le/a/p4/b;->E2()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "no-user-info"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object v2, p0, Le/a/a/k/a/t1;->r:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->U2()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Le/a/l4/k;->T()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Le/a/a/k/a/t1;->p:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "tracing"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v5, ","

    .line 11
    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Debug"

    .line 12
    invoke-static {v4, v1}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    :cond_5
    new-array v1, v3, [Lp3/a/g;

    .line 13
    new-instance v2, Lp3/a/q1/g;

    invoke-direct {v2, v0}, Lp3/a/q1/g;-><init>(Lp3/a/o0;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 14
    invoke-virtual {p1, v1}, Lp3/a/q1/c;->b([Lp3/a/g;)Lp3/a/q1/c;

    move-result-object p1

    const-string v0, "MetadataUtils.attachHeaders(this, metadata)"

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
