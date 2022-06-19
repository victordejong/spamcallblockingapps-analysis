.class public final Le/a/h/b/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/b/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Le/a/h/b/d/b/h;

.field public final d:Le/a/h/b/d/b/f;

.field public e:Z

.field public f:I

.field public g:Landroid/os/CancellationSignal;

.field public final h:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Le/a/h/b/d/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/b0/q/v;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public final m:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/h/b/d/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/h/b/d/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ls1/w/f;

.field public final p:Ls1/w/f;

.field public final q:Le/a/l0/g;

.field public final r:Le/a/l0/t;

.field public final s:Le/a/q2/s0;

.field public final t:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Le/a/l0/k;

.field public final v:Z


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/l0/g;Le/a/l0/t;Le/a/q2/s0;Lo3/a;Le/a/l0/k;Z)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "FEATURE_CALL_LOG_PERFORMANCE"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/l0/g;",
            "Le/a/l0/t;",
            "Le/a/q2/s0;",
            "Lo3/a<",
            "Le/a/d/f;",
            ">;",
            "Le/a/l0/k;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncManagerState"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timingAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerCacheManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/b/e;->o:Ls1/w/f;

    iput-object p2, p0, Le/a/h/b/d/b/e;->p:Ls1/w/f;

    iput-object p3, p0, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    iput-object p4, p0, Le/a/h/b/d/b/e;->r:Le/a/l0/t;

    iput-object p5, p0, Le/a/h/b/d/b/e;->s:Le/a/q2/s0;

    iput-object p6, p0, Le/a/h/b/d/b/e;->t:Lo3/a;

    iput-object p7, p0, Le/a/h/b/d/b/e;->u:Le/a/l0/k;

    iput-boolean p8, p0, Le/a/h/b/d/b/e;->v:Z

    .line 2
    sget-object p2, Le/a/h/b/d/b/e$e;->b:Le/a/h/b/d/b/e$e;

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/h/b/d/b/e;->a:Ls1/g;

    .line 3
    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq3/a/p1;

    .line 4
    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/d/b/e;->b:Ls1/w/f;

    .line 5
    new-instance p1, Le/a/h/b/d/b/h;

    invoke-direct {p1}, Le/a/h/b/d/b/h;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/b/e;->c:Le/a/h/b/d/b/h;

    .line 6
    new-instance p1, Le/a/h/b/d/b/f;

    invoke-direct {p1}, Le/a/h/b/d/b/f;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/b/e;->d:Le/a/h/b/d/b/f;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Le/a/h/b/d/b/e;->e:Z

    const/16 p2, 0x64

    .line 8
    iput p2, p0, Le/a/h/b/d/b/e;->f:I

    .line 9
    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    .line 10
    sget-object p2, Lq3/a/w2/i;->b:Lq3/a/w2/i;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p1, p3, p2, p4}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p2

    iput-object p2, p0, Le/a/h/b/d/b/e;->h:Lq3/a/x2/z0;

    .line 11
    new-instance p2, Le/a/b0/q/v;

    new-instance p3, Le/a/h/b/d/b/e$a;

    invoke-direct {p3, p0}, Le/a/h/b/d/b/e$a;-><init>(Le/a/h/b/d/b/e;)V

    invoke-direct {p2, p3}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object p2, p0, Le/a/h/b/d/b/e;->i:Le/a/b0/q/v;

    .line 12
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iput-object p2, p0, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    .line 13
    iput-boolean p1, p0, Le/a/h/b/d/b/e;->l:Z

    .line 14
    sget-object p1, Le/a/h/b/d/b/c$b$b;->a:Le/a/h/b/d/b/c$b$b;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/d/b/e;->m:Lq3/a/x2/a1;

    .line 15
    iput-object p1, p0, Le/a/h/b/d/b/e;->n:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->r:Le/a/l0/t;

    invoke-interface {v0}, Le/a/l0/t;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/h/b/d/b/e;->o:Ls1/w/f;

    new-instance v0, Le/a/h/b/d/b/e$c;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/h/b/d/b/e$c;-><init>(Le/a/h/b/d/b/e;Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/h/b/d/b/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->n:Lq3/a/x2/i1;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/h/b/d/b/e;->f:I

    const/16 v1, 0x1900

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public e(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v5, p0, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Le/a/h/b/d/b/e;->i(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/h/b/d/b/e;->o:Ls1/w/f;

    new-instance v3, Le/a/h/b/d/b/e$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/h/b/d/b/e$b;-><init>(Le/a/h/b/d/b/e;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/h/b/d/b/e;->l:Z

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->b:Ls1/w/f;

    return-object v0
.end method

.method public h(ZZLcom/truecaller/callhistory/data/FilterType;)V
    .locals 9

    const-string v0, "filter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->i:Le/a/b0/q/v;

    invoke-virtual {v0}, Le/a/b0/q/v;->a()V

    .line 2
    sget-object v0, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    .line 3
    iget-boolean v3, p0, Le/a/h/b/d/b/e;->k:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Le/a/h/b/d/b/e;->l:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 4
    iget-object p1, p0, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 5
    iput-boolean v2, p0, Le/a/h/b/d/b/e;->k:Z

    .line 6
    iget-object p1, p0, Le/a/h/b/d/b/e;->m:Lq3/a/x2/a1;

    new-instance p2, Le/a/h/b/d/b/c$b$c;

    iget-object p3, p0, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    invoke-direct {p2, p3}, Le/a/h/b/d/b/c$b$c;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    iput-boolean v1, p0, Le/a/h/b/d/b/e;->l:Z

    :cond_1
    if-eq p3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 8
    :goto_0
    iput-boolean v1, p0, Le/a/h/b/d/b/e;->k:Z

    .line 9
    new-instance v0, Le/a/h/b/d/b/c$a;

    invoke-direct {v0, p1, p2, p3}, Le/a/h/b/d/b/c$a;-><init>(ZZLcom/truecaller/callhistory/data/FilterType;)V

    .line 10
    iget-boolean p1, p0, Le/a/h/b/d/b/e;->e:Z

    if-eqz p1, :cond_3

    .line 11
    iput-boolean v2, p0, Le/a/h/b/d/b/e;->e:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    new-instance v6, Le/a/h/b/d/b/e$h;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v0, p1}, Le/a/h/b/d/b/e$h;-><init>(Le/a/h/b/d/b/e;Le/a/h/b/d/b/c$a;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/h/b/d/b/e;->h:Lq3/a/x2/z0;

    invoke-interface {p1, v0}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final synthetic i(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-boolean v0, v8, Le/a/h/b/d/b/e;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Le/a/h/b/d/b/e;->p:Ls1/w/f;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Le/a/h/b/d/b/e;->o:Ls1/w/f;

    :goto_0
    move-object v9, v0

    new-instance v10, Le/a/h/b/d/b/e$d;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Le/a/h/b/d/b/e$d;-><init>(Le/a/h/b/d/b/e;ZLjava/lang/Integer;Lcom/truecaller/callhistory/data/FilterType;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)V

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j(Ljava/util/List;Ljava/lang/Integer;Le/a/h/b/d/b/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;",
            "Ljava/lang/Integer;",
            "Le/a/h/b/d/b/g<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e;->s:Le/a/q2/s0;

    .line 2
    sget-object v1, Lcom/truecaller/analytics/TimingEvent;->CALL_LOG_MERGE:Lcom/truecaller/analytics/TimingEvent;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p2, "merger:"

    .line 4
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p3}, Le/a/h/b/d/b/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Le/a/h/b/d/b/e$f;

    const/4 p2, 0x0

    invoke-direct {v4, p1, p3, p2}, Le/a/h/b/d/b/e$f;-><init>(Ljava/util/List;Le/a/h/b/d/b/g;Ls1/w/d;)V

    move-object v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->C1(Le/a/q2/s0;Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Le/a/h/b/d/b/c$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/b/d/b/c$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/h/b/d/b/e$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/h/b/d/b/e$g;

    iget v1, v0, Le/a/h/b/d/b/e$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h/b/d/b/e$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h/b/d/b/e$g;

    invoke-direct {v0, p0, p2}, Le/a/h/b/d/b/e$g;-><init>(Le/a/h/b/d/b/e;Ls1/w/d;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Le/a/h/b/d/b/e$g;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/h/b/d/b/e$g;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Le/a/h/b/d/b/e$g;->h:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/d/b/c$a;

    iget-object v0, v7, Le/a/h/b/d/b/e$g;->g:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/d/b/e;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v7, Le/a/h/b/d/b/e$g;->h:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/d/b/c$a;

    iget-object v1, v7, Le/a/h/b/d/b/e$g;->g:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/d/b/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->cancel()V

    .line 5
    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    .line 6
    iget-object p2, p0, Le/a/h/b/d/b/e;->u:Le/a/l0/k;

    iput-object p0, v7, Le/a/h/b/d/b/e$g;->g:Ljava/lang/Object;

    iput-object p1, v7, Le/a/h/b/d/b/e$g;->h:Ljava/lang/Object;

    iput v3, v7, Le/a/h/b/d/b/e$g;->e:I

    invoke-interface {p2, v7}, Le/a/l0/k;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object p2, p0

    .line 7
    :goto_1
    iget-boolean v1, p1, Le/a/h/b/d/b/c$a;->b:Z

    if-eqz v1, :cond_6

    .line 8
    iget v1, p2, Le/a/h/b/d/b/e;->f:I

    const/16 v4, 0x1900

    if-ne v1, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    mul-int/2addr v1, v2

    .line 9
    iput v1, p2, Le/a/h/b/d/b/e;->f:I

    :cond_6
    const-string v1, "Fetching call log - slim:"

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-boolean v3, p1, Le/a/h/b/d/b/c$a;->a:Z

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " filter:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v3, p1, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " increasePage:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-boolean v3, p1, Le/a/h/b/d/b/c$a;->b:Z

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " limit:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Le/a/h/b/d/b/e;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    :try_start_1
    iget-boolean v3, p1, Le/a/h/b/d/b/c$a;->a:Z

    .line 18
    iget-object v4, p1, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    .line 19
    iget v1, p2, Le/a/h/b/d/b/e;->f:I

    .line 20
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 21
    iget-object v6, p2, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    iget-object v8, p2, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    iput-object p2, v7, Le/a/h/b/d/b/e$g;->g:Ljava/lang/Object;

    iput-object p1, v7, Le/a/h/b/d/b/e$g;->h:Ljava/lang/Object;

    iput v2, v7, Le/a/h/b/d/b/e$g;->e:I

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Le/a/h/b/d/b/e;->i(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p2

    move-object p2, v1

    .line 22
    :goto_3
    :try_start_2
    check-cast p2, Ljava/util/List;

    .line 23
    iget-object v1, v0, Le/a/h/b/d/b/e;->g:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    iget-object p1, p1, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    .line 25
    sget-object v1, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    if-ne p1, v1, :cond_9

    .line 26
    iput-object p2, v0, Le/a/h/b/d/b/e;->j:Ljava/util/List;

    .line 27
    :cond_9
    iget-object p1, v0, Le/a/h/b/d/b/e;->m:Lq3/a/x2/a1;

    new-instance v1, Le/a/h/b/d/b/c$b$c;

    invoke-direct {v1, p2}, Le/a/h/b/d/b/c$b$c;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-object v0, p2

    .line 28
    :catch_1
    iget-object p1, v0, Le/a/h/b/d/b/e;->m:Lq3/a/x2/a1;

    sget-object p2, Le/a/h/b/d/b/c$b$a;->a:Le/a/h/b/d/b/c$b$a;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 29
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
