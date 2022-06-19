.class public Lp3/a/n1/m$a;
.super Lp3/a/n1/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/x;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:Lp3/a/g1;

.field public d:Lp3/a/g1;

.field public e:Lp3/a/g1;

.field public final f:Lp3/a/n1/w1$a;

.field public final synthetic g:Lp3/a/n1/m;


# direct methods
.method public constructor <init>(Lp3/a/n1/m;Lp3/a/n1/x;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp3/a/n1/m$a;->g:Lp3/a/n1/m;

    invoke-direct {p0}, Lp3/a/n1/l0;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance p1, Lp3/a/n1/m$a$a;

    invoke-direct {p1, p0}, Lp3/a/n1/m$a$a;-><init>(Lp3/a/n1/m$a;)V

    iput-object p1, p0, Lp3/a/n1/m$a;->f:Lp3/a/n1/w1$a;

    const-string p1, "delegate"

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/m$a;->a:Lp3/a/n1/x;

    const-string p1, "authority"

    .line 5
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lp3/a/n1/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m$a;->a:Lp3/a/n1/x;

    return-object v0
.end method

.method public e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/n1/s;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lp3/a/c;->d:Lp3/a/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/m$a;->g:Lp3/a/n1/m;

    .line 3
    iget-object v0, v0, Lp3/a/n1/m;->b:Lp3/a/b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lp3/a/n1/m$a;->g:Lp3/a/n1/m;

    .line 5
    iget-object v1, v1, Lp3/a/n1/m;->b:Lp3/a/b;

    if-eqz v1, :cond_1

    .line 6
    new-instance v2, Lp3/a/l;

    invoke-direct {v2, v1, v0}, Lp3/a/l;-><init>(Lp3/a/b;Lp3/a/b;)V

    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 7
    new-instance v7, Lp3/a/n1/w1;

    iget-object v2, p0, Lp3/a/n1/m$a;->a:Lp3/a/n1/x;

    iget-object v6, p0, Lp3/a/n1/m$a;->f:Lp3/a/n1/w1$a;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lp3/a/n1/w1;-><init>(Lp3/a/n1/u;Lp3/a/p0;Lp3/a/o0;Lp3/a/c;Lp3/a/n1/w1$a;)V

    .line 8
    iget-object p2, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iget-object p1, p0, Lp3/a/n1/m$a;->f:Lp3/a/n1/w1$a;

    check-cast p1, Lp3/a/n1/m$a$a;

    invoke-virtual {p1}, Lp3/a/n1/m$a$a;->a()V

    .line 10
    new-instance p1, Lp3/a/n1/h0;

    iget-object p2, p0, Lp3/a/n1/m$a;->c:Lp3/a/g1;

    invoke-direct {p1, p2}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;)V

    return-object p1

    .line 11
    :cond_2
    new-instance p2, Lp3/a/n1/m$a$b;

    invoke-direct {p2, p0, p1, p3}, Lp3/a/n1/m$a$b;-><init>(Lp3/a/n1/m$a;Lp3/a/p0;Lp3/a/c;)V

    .line 12
    :try_start_0
    iget-object p1, p3, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    .line 13
    iget-object p3, p0, Lp3/a/n1/m$a;->g:Lp3/a/n1/m;

    .line 14
    iget-object p3, p3, Lp3/a/n1/m;->c:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Both parameters are null"

    .line 15
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p3

    .line 16
    :goto_1
    invoke-virtual {v0, p2, p1, v7}, Lp3/a/b;->a(Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 17
    sget-object p2, Lp3/a/g1;->l:Lp3/a/g1;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 18
    invoke-virtual {p2, p3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string p3, "Cannot fail with OK status"

    invoke-static {p2, p3}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 21
    iget-boolean p2, v7, Lp3/a/n1/w1;->i:Z

    xor-int/lit8 p2, p2, 0x1

    const-string p3, "apply() or fail() already called"

    invoke-static {p2, p3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 22
    new-instance p2, Lp3/a/n1/h0;

    invoke-direct {p2, p1}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;)V

    invoke-virtual {v7, p2}, Lp3/a/n1/w1;->b(Lp3/a/n1/s;)V

    .line 23
    :goto_2
    iget-object v0, v7, Lp3/a/n1/w1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_1
    iget-object p1, v7, Lp3/a/n1/w1;->h:Lp3/a/n1/s;

    if-nez p1, :cond_4

    .line 25
    new-instance p1, Lp3/a/n1/e0;

    invoke-direct {p1}, Lp3/a/n1/e0;-><init>()V

    iput-object p1, v7, Lp3/a/n1/w1;->j:Lp3/a/n1/e0;

    .line 26
    iput-object p1, v7, Lp3/a/n1/w1;->h:Lp3/a/n1/s;

    monitor-exit v0

    goto :goto_3

    .line 27
    :cond_4
    monitor-exit v0

    :goto_3
    return-object p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 29
    :cond_5
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_6

    .line 30
    new-instance p1, Lp3/a/n1/h0;

    iget-object p2, p0, Lp3/a/n1/m$a;->c:Lp3/a/g1;

    invoke-direct {p1, p2}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;)V

    return-object p1

    .line 31
    :cond_6
    iget-object v0, p0, Lp3/a/n1/m$a;->a:Lp3/a/n1/x;

    invoke-interface {v0, p1, p2, p3}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object p1

    return-object p1
.end method

.method public f(Lp3/a/g1;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    iput-object p1, p0, Lp3/a/n1/m$a;->c:Lp3/a/g1;

    .line 5
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m$a;->e:Lp3/a/g1;

    if-eqz v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iput-object p1, p0, Lp3/a/n1/m$a;->e:Lp3/a/g1;

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-super {p0, p1}, Lp3/a/n1/l0;->f(Lp3/a/g1;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g(Lp3/a/g1;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iput-object p1, p0, Lp3/a/n1/m$a;->c:Lp3/a/g1;

    .line 5
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6
    iget-object v0, p0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lp3/a/n1/m$a;->d:Lp3/a/g1;

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-super {p0, p1}, Lp3/a/n1/l0;->g(Lp3/a/g1;)V

    return-void

    .line 11
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
