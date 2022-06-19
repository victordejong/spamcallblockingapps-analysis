.class public final Lp3/a/n1/i2$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "w"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/i2$x;

.field public final synthetic b:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 3
    iget-object v1, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v1, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 6
    iget-object v0, v0, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 7
    invoke-interface {v0, p1}, Lp3/a/n1/t2;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    iget-object v1, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    invoke-static {v0, v1}, Lp3/a/n1/i2;->o(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 3
    iget-object v0, v0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 4
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v1, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 6
    iget-object v0, v0, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 7
    invoke-interface {v0, p1}, Lp3/a/n1/t;->b(Lp3/a/o0;)V

    .line 8
    iget-object p1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 9
    iget-object p1, p1, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    if-eqz p1, :cond_2

    .line 10
    :cond_0
    iget-object v0, p1, Lp3/a/n1/i2$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 11
    iget v1, p1, Lp3/a/n1/i2$y;->a:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget v2, p1, Lp3/a/n1/i2$y;->c:I

    add-int/2addr v2, v0

    .line 13
    iget-object v3, p1, Lp3/a/n1/i2$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lp3/a/g1;Lp3/a/o0;)V
    .locals 1

    .line 1
    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-virtual {p0, p1, v0, p2}, Lp3/a/n1/i2$w;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 3
    invoke-interface {v0}, Lp3/a/n1/t2;->d()V

    return-void
.end method

.method public e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 5
    iget-object v2, v1, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 6
    iget-object v3, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    invoke-virtual {v2, v3}, Lp3/a/n1/i2$v;->e(Lp3/a/n1/i2$x;)Lp3/a/n1/i2$v;

    move-result-object v2

    .line 7
    iput-object v2, v1, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 8
    iget-object v1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 9
    iget-object v1, v1, Lp3/a/n1/i2;->m:Lp3/a/n1/z0;

    .line 10
    iget-object v2, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 11
    invoke-virtual {v1, v2}, Lp3/a/n1/z0;->a(Ljava/lang/Object;)Lp3/a/n1/z0;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    iget-object v0, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    iget-boolean v1, v0, Lp3/a/n1/i2$x;->c:Z

    if-eqz v1, :cond_1

    .line 14
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    invoke-static {p2, v0}, Lp3/a/n1/i2;->o(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    .line 15
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 16
    iget-object p2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 17
    iget-object p2, p2, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    if-ne p2, v0, :cond_0

    .line 18
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 19
    iget-object p2, p2, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 20
    invoke-interface {p2, p1, p3}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 22
    iget-object v0, v0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 23
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-nez v0, :cond_14

    .line 24
    sget-object v0, Lp3/a/n1/t$a;->b:Lp3/a/n1/t$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 25
    iget-object v0, v0, Lp3/a/n1/i2;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object p1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    iget-object p2, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    iget p2, p2, Lp3/a/n1/i2$x;->d:I

    .line 28
    invoke-virtual {p1, p2}, Lp3/a/n1/i2;->r(I)Lp3/a/n1/i2$x;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 30
    iget-boolean p3, p2, Lp3/a/n1/i2;->g:Z

    if-eqz p3, :cond_3

    .line 31
    iget-object p3, p2, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 32
    monitor-enter p3

    .line 33
    :try_start_1
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 34
    iget-object v0, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 35
    iget-object v3, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    invoke-virtual {v0, v3, p1}, Lp3/a/n1/i2$v;->d(Lp3/a/n1/i2$x;Lp3/a/n1/i2$x;)Lp3/a/n1/i2$v;

    move-result-object v0

    .line 36
    iput-object v0, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 37
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 38
    iget-object v0, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 39
    invoke-virtual {p2, v0}, Lp3/a/n1/i2;->v(Lp3/a/n1/i2$v;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 40
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 41
    iget-object p2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 42
    iget-object p2, p2, Lp3/a/n1/i2$v;->d:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v1, v2

    .line 43
    :cond_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 44
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    invoke-static {p2, p1}, Lp3/a/n1/i2;->o(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 45
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 46
    :cond_3
    iget-object p3, p2, Lp3/a/n1/i2;->e:Lp3/a/n1/j2;

    if-eqz p3, :cond_4

    .line 47
    iget p3, p3, Lp3/a/n1/j2;->a:I

    if-ne p3, v2, :cond_5

    .line 48
    :cond_4
    invoke-virtual {p2, p1}, Lp3/a/n1/i2;->q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 49
    check-cast p2, Lp3/a/n1/i2$c;

    invoke-virtual {p2}, Lp3/a/n1/i2$c;->run()V

    .line 50
    :cond_5
    :goto_0
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 51
    iget-object p2, p2, Lp3/a/n1/i2;->b:Ljava/util/concurrent/Executor;

    .line 52
    new-instance p3, Lp3/a/n1/i2$w$a;

    invoke-direct {p3, p0, p1}, Lp3/a/n1/i2$w$a;-><init>(Lp3/a/n1/i2$w;Lp3/a/n1/i2$x;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 53
    :cond_6
    sget-object v0, Lp3/a/n1/t$a;->c:Lp3/a/n1/t$a;

    if-ne p2, v0, :cond_7

    .line 54
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 55
    iget-boolean v0, p2, Lp3/a/n1/i2;->g:Z

    if-eqz v0, :cond_14

    .line 56
    invoke-virtual {p2}, Lp3/a/n1/i2;->u()V

    goto/16 :goto_5

    .line 57
    :cond_7
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 58
    iget-object p2, p2, Lp3/a/n1/i2;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 61
    iget-boolean v0, p2, Lp3/a/n1/i2;->g:Z

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {p0, p3}, Lp3/a/n1/i2$w;->f(Lp3/a/o0;)Ljava/lang/Integer;

    move-result-object p2

    .line 63
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 64
    iget-object v0, v0, Lp3/a/n1/i2;->f:Lp3/a/n1/t0;

    .line 65
    iget-object v0, v0, Lp3/a/n1/t0;->c:Ljava/util/Set;

    .line 66
    iget-object v3, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 67
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 68
    iget-object v3, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 69
    iget-object v3, v3, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    if-eqz v3, :cond_9

    if-eqz v0, :cond_8

    if-eqz p2, :cond_9

    .line 70
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_9

    .line 71
    :cond_8
    iget-object v3, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 72
    iget-object v3, v3, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    .line 73
    invoke-virtual {v3}, Lp3/a/n1/i2$y;->a()Z

    move-result v3

    xor-int/2addr v3, v2

    goto :goto_1

    :cond_9
    move v3, v1

    :goto_1
    if-nez v0, :cond_a

    if-nez v3, :cond_a

    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    .line 74
    iget-object v0, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    invoke-static {v0, p2}, Lp3/a/n1/i2;->p(Lp3/a/n1/i2;Ljava/lang/Integer;)V

    .line 75
    :cond_b
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 76
    iget-object v0, p2, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 77
    monitor-enter v0

    .line 78
    :try_start_3
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 79
    iget-object v2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 80
    iget-object v3, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    invoke-virtual {v2, v3}, Lp3/a/n1/i2$v;->c(Lp3/a/n1/i2$x;)Lp3/a/n1/i2$v;

    move-result-object v2

    .line 81
    iput-object v2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    if-eqz v1, :cond_d

    .line 82
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 83
    iget-object v1, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 84
    invoke-virtual {p2, v1}, Lp3/a/n1/i2;->v(Lp3/a/n1/i2$v;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 85
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 86
    iget-object p2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 87
    iget-object p2, p2, Lp3/a/n1/i2$v;->d:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 88
    :cond_c
    monitor-exit v0

    return-void

    .line 89
    :cond_d
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 90
    :cond_e
    iget-object p2, p2, Lp3/a/n1/i2;->e:Lp3/a/n1/j2;

    const-wide/16 v3, 0x0

    if-nez p2, :cond_f

    .line 91
    new-instance p2, Lp3/a/n1/i2$u;

    invoke-direct {p2, v1, v3, v4}, Lp3/a/n1/i2$u;-><init>(ZJ)V

    goto/16 :goto_4

    .line 92
    :cond_f
    iget-object p2, p2, Lp3/a/n1/j2;->e:Ljava/util/Set;

    .line 93
    iget-object v0, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 94
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 95
    invoke-virtual {p0, p3}, Lp3/a/n1/i2$w;->f(Lp3/a/o0;)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    iget-object v5, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 97
    iget-object v5, v5, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    if-eqz v5, :cond_11

    if-nez p2, :cond_10

    if-eqz v0, :cond_11

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_11

    .line 99
    :cond_10
    iget-object v5, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 100
    iget-object v5, v5, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    .line 101
    invoke-virtual {v5}, Lp3/a/n1/i2$y;->a()Z

    move-result v5

    xor-int/2addr v5, v2

    goto :goto_2

    :cond_11
    move v5, v1

    .line 102
    :goto_2
    iget-object v6, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 103
    iget-object v7, v6, Lp3/a/n1/i2;->e:Lp3/a/n1/j2;

    .line 104
    iget v7, v7, Lp3/a/n1/j2;->a:I

    iget-object v8, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    iget v8, v8, Lp3/a/n1/i2$x;->d:I

    add-int/2addr v8, v2

    if-le v7, v8, :cond_13

    if-nez v5, :cond_13

    if-nez v0, :cond_12

    if-eqz p2, :cond_13

    .line 105
    iget-wide v0, v6, Lp3/a/n1/i2;->t:J

    long-to-double v0, v0

    .line 106
    sget-object p2, Lp3/a/n1/i2;->x:Ljava/util/Random;

    .line 107
    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    mul-double/2addr v3, v0

    double-to-long v0, v3

    .line 108
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 109
    iget-wide v3, p2, Lp3/a/n1/i2;->t:J

    long-to-double v3, v3

    .line 110
    iget-object v5, p2, Lp3/a/n1/i2;->e:Lp3/a/n1/j2;

    .line 111
    iget-wide v6, v5, Lp3/a/n1/j2;->d:D

    mul-double/2addr v3, v6

    double-to-long v3, v3

    .line 112
    iget-wide v5, v5, Lp3/a/n1/j2;->c:J

    .line 113
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 114
    iput-wide v3, p2, Lp3/a/n1/i2;->t:J

    goto :goto_3

    .line 115
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_13

    .line 116
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 117
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 118
    iget-object v3, p2, Lp3/a/n1/i2;->e:Lp3/a/n1/j2;

    .line 119
    iget-wide v3, v3, Lp3/a/n1/j2;->b:J

    .line 120
    iput-wide v3, p2, Lp3/a/n1/i2;->t:J

    :goto_3
    move-wide v3, v0

    move v1, v2

    .line 121
    :cond_13
    new-instance p2, Lp3/a/n1/i2$u;

    invoke-direct {p2, v1, v3, v4}, Lp3/a/n1/i2$u;-><init>(ZJ)V

    .line 122
    :goto_4
    iget-boolean v0, p2, Lp3/a/n1/i2$u;->a:Z

    if-eqz v0, :cond_14

    .line 123
    iget-object p1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 124
    iget-object v0, p1, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 125
    monitor-enter v0

    .line 126
    :try_start_4
    iget-object p1, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    new-instance p3, Lp3/a/n1/i2$s;

    .line 127
    iget-object v1, p1, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 128
    invoke-direct {p3, v1}, Lp3/a/n1/i2$s;-><init>(Ljava/lang/Object;)V

    .line 129
    iput-object p3, p1, Lp3/a/n1/i2;->r:Lp3/a/n1/i2$s;

    .line 130
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    iget-object p1, p1, Lp3/a/n1/i2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 132
    new-instance v0, Lp3/a/n1/i2$w$b;

    invoke-direct {v0, p0}, Lp3/a/n1/i2$w$b;-><init>(Lp3/a/n1/i2$w;)V

    iget-wide v1, p2, Lp3/a/n1/i2$u;->b:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 133
    invoke-virtual {p3, p1}, Lp3/a/n1/i2$s;->b(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_2
    move-exception p1

    .line 134
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 135
    :cond_14
    :goto_5
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    iget-object v0, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    invoke-static {p2, v0}, Lp3/a/n1/i2;->o(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    .line 136
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 137
    iget-object p2, p2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 138
    iget-object p2, p2, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, p0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    if-ne p2, v0, :cond_15

    .line 139
    iget-object p2, p0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 140
    iget-object p2, p2, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 141
    invoke-interface {p2, p1, p3}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    :cond_15
    return-void

    :catchall_3
    move-exception p1

    .line 142
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public final f(Lp3/a/o0;)Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/n1/i2;->v:Lp3/a/o0$f;

    invoke-virtual {p1, v0}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
