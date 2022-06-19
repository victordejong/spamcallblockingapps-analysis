.class public final Le/a/e3/k/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/i;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/e3/k/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/e3/k/o;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lq3/a/p1;

.field public final f:Ls1/w/f;

.field public final g:Le/a/p5/v0/b;

.field public final h:Le/a/e4/p;

.field public final i:Le/a/p5/c;

.field public final j:Le/a/e3/k/f;

.field public final k:Le/a/b0/q/z;

.field public final l:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/v0/b;Le/a/e4/p;Le/a/p5/c;Le/a/e3/k/f;Le/a/b0/q/z;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/k/k;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/e3/k/k;->g:Le/a/p5/v0/b;

    iput-object p3, p0, Le/a/e3/k/k;->h:Le/a/e4/p;

    iput-object p4, p0, Le/a/e3/k/k;->i:Le/a/p5/c;

    iput-object p5, p0, Le/a/e3/k/k;->j:Le/a/e3/k/f;

    iput-object p6, p0, Le/a/e3/k/k;->k:Le/a/b0/q/z;

    iput-object p7, p0, Le/a/e3/k/k;->l:Le/a/q2/a;

    .line 2
    iput-object p1, p0, Le/a/e3/k/k;->a:Ls1/w/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/e3/k/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget-object p1, Le/a/e3/k/o$b;->a:Le/a/e3/k/o$b;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p2

    iput-object p2, p0, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    .line 5
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/e3/k/k;->d:Lq3/a/x2/a1;

    return-void
.end method

.method public static final e(Le/a/e3/k/k;Le/a/e3/k/o$a;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Le/a/e3/k/k;->i:Le/a/p5/c;

    invoke-interface {p0}, Le/a/p5/c;->a()J

    move-result-wide v0

    .line 2
    iget-wide p0, p1, Le/a/e3/k/o$a;->b:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p1, Le/a/e3/k/k$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/e3/k/k$a;

    iget v2, v1, Le/a/e3/k/k$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/e3/k/k$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/e3/k/k$a;

    invoke-direct {v1, p0, p1}, Le/a/e3/k/k$a;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/e3/k/k$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/e3/k/k$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget v1, v1, Le/a/e3/k/k$a;->g:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/e3/k/k;->h:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->h()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Le/a/e3/k/k;->g()V

    .line 6
    invoke-virtual {p0}, Le/a/e3/k/k;->f()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iput p1, v1, Le/a/e3/k/k$a;->g:I

    iput v4, v1, Le/a/e3/k/k$a;->e:I

    invoke-virtual {p0, v1}, Le/a/e3/k/k;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v5, v1

    move v1, p1

    move-object p1, v5

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 8
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public b(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->h:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/e3/k/k;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v2, p0, Le/a/e3/k/k;->g:Le/a/p5/v0/b;

    invoke-interface {v2, v0}, Le/a/p5/v0/b;->b(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->h:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/e3/k/k;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->h:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Le/a/e3/k/k;->g()V

    .line 3
    iget-object v0, p0, Le/a/e3/k/k;->e:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Le/a/e3/k/k$g;

    invoke-direct {v4, p0, p1, v1}, Le/a/e3/k/k$g;-><init>(Le/a/e3/k/k;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/e3/k/k;->e:Lq3/a/p1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->j:Le/a/e3/k/f;

    const-string v1, "callAlertIncomingCallSubscriptionId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Le/a/e3/k/f;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/e3/k/k$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/e3/k/k$b;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/k/k;->a:Ls1/w/f;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/e3/k/k$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/e3/k/k$c;

    iget v1, v0, Le/a/e3/k/k$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e3/k/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e3/k/k$c;

    invoke-direct {v0, p0, p2}, Le/a/e3/k/k$c;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/e3/k/k$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e3/k/k$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/e3/k/k$c;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v4, 0x2710

    .line 4
    new-instance p2, Le/a/e3/k/k$d;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Le/a/e3/k/k$d;-><init>(Le/a/e3/k/k;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e3/k/k$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/e3/k/k$c;->e:I

    invoke-static {v4, v5, p2, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found sub id for incoming call with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sub id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return-object p2
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/e3/k/k$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/e3/k/k$e;

    iget v1, v0, Le/a/e3/k/k$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e3/k/k$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e3/k/k$e;

    invoke-direct {v0, p0, p1}, Le/a/e3/k/k$e;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/e3/k/k$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e3/k/k$e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/e3/k/k$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/e3/k/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v5, 0x7d0

    .line 4
    new-instance p1, Le/a/e3/k/k$f;

    invoke-direct {p1, p0, v3}, Le/a/e3/k/k$f;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    iput-object p0, v0, Le/a/e3/k/k$e;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/e3/k/k$e;->e:I

    invoke-static {v5, v6, p1, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found sub id for outgoing call. Sub id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1

    :cond_4
    const-string p1, "Checking latest ongoing call: "

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v0, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/e3/k/o;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iget-object p1, v0, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e3/k/o;

    .line 9
    instance-of v0, p1, Le/a/e3/k/o$a;

    if-eqz v0, :cond_5

    check-cast p1, Le/a/e3/k/o$a;

    .line 10
    iget-object p1, p1, Le/a/e3/k/o$a;->a:Le/a/p5/v0/a;

    .line 11
    invoke-virtual {p1}, Le/a/p5/v0/a;->b()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 12
    :cond_5
    instance-of p1, p1, Le/a/e3/k/o$b;

    if-eqz p1, :cond_6

    :goto_2
    return-object v3

    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
