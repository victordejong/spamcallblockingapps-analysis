.class public final synthetic Lq3/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aT\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u00a2\u0006\u0002\u0008\t\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "runBlocking",
        "T",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
    xs = "kotlinx/coroutines/BuildersKt"
.end annotation


# direct methods
.method public static final a(Ls1/w/f;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/w/f;",
            "Ls1/z/b/a<",
            "+TT;>;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/l1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lq3/a/l1;-><init>(Ls1/z/b/a;Ls1/w/d;)V

    invoke-static {p0, v0, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lq3/a/p2;Ls1/z/b/p;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lq3/a/p2<",
            "TU;-TT;>;",
            "Ls1/z/b/p<",
            "-",
            "Lq3/a/i0;",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/y2/u;->c:Ls1/w/d;

    .line 2
    invoke-interface {v0}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->n1(Ls1/w/f;)Lq3/a/p0;

    move-result-object v0

    iget-wide v1, p0, Lq3/a/p2;->d:J

    .line 4
    iget-object v3, p0, Lq3/a/c;->b:Ls1/w/f;

    .line 5
    invoke-interface {v0, v1, v2, p0, v3}, Lq3/a/p0;->t0(JLjava/lang/Runnable;Ls1/w/f;)Lq3/a/v0;

    move-result-object v0

    .line 6
    new-instance v1, Lq3/a/x0;

    invoke-direct {v1, v0}, Lq3/a/x0;-><init>(Lq3/a/v0;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v0, v2, v1}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    invoke-static {p1, v1}, Ls1/z/c/h0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    invoke-interface {p1, p0, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    new-instance v3, Lq3/a/a0;

    invoke-direct {v3, p1, v0, v1}, Lq3/a/a0;-><init>(Ljava/lang/Throwable;ZI)V

    move-object p1, v3

    .line 10
    :goto_0
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lq3/a/u1;->b0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    sget-object v4, Lq3/a/v1;->b:Lq3/a/y2/x;

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    instance-of v1, v3, Lq3/a/a0;

    if-eqz v1, :cond_7

    .line 14
    check-cast v3, Lq3/a/a0;

    iget-object v1, v3, Lq3/a/a0;->a:Ljava/lang/Throwable;

    .line 15
    instance-of v3, v1, Lq3/a/o2;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lq3/a/o2;

    iget-object v3, v3, Lq3/a/o2;->a:Lq3/a/p1;

    if-eq v3, p0, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    if-nez v0, :cond_6

    .line 16
    instance-of p0, p1, Lq3/a/a0;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    check-cast p1, Lq3/a/a0;

    iget-object p0, p1, Lq3/a/a0;->a:Ljava/lang/Throwable;

    .line 17
    throw p0

    :cond_6
    throw v1

    .line 18
    :cond_7
    invoke-static {v3}, Lq3/a/v1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    move-object v1, p1

    :goto_2
    return-object v1
.end method

.method public static final c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ls1/z/b/p<",
            "-",
            "Lq3/a/i0;",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lq3/a/q2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lq3/a/q2;

    iget v1, v0, Lq3/a/q2;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/q2;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/q2;

    invoke-direct {v0, p3}, Lq3/a/q2;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Lq3/a/q2;->g:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lq3/a/q2;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lq3/a/q2;->f:Ljava/lang/Object;

    check-cast p0, Ls1/z/c/c0;

    iget-object p1, v0, Lq3/a/q2;->e:Ljava/lang/Object;

    check-cast p1, Ls1/z/b/p;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/o2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p0, v5

    if-gtz p3, :cond_3

    return-object v3

    .line 4
    :cond_3
    new-instance p3, Ls1/z/c/c0;

    invoke-direct {p3}, Ls1/z/c/c0;-><init>()V

    .line 5
    :try_start_1
    iput-object p2, v0, Lq3/a/q2;->e:Ljava/lang/Object;

    iput-object p3, v0, Lq3/a/q2;->f:Ljava/lang/Object;

    iput-wide p0, v0, Lq3/a/q2;->d:J

    iput v4, v0, Lq3/a/q2;->h:I

    .line 6
    new-instance v2, Lq3/a/p2;

    invoke-direct {v2, p0, p1, v0}, Lq3/a/p2;-><init>(JLs1/w/d;)V

    .line 7
    iput-object v2, p3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    invoke-static {v2, p2}, Lq3/a/j;->b(Lq3/a/p2;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    const-string p1, "frame"

    .line 9
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lq3/a/o2; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p3, p0

    :goto_1
    return-object p3

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, p3

    .line 10
    :goto_2
    iget-object p2, p1, Lq3/a/o2;->a:Lq3/a/p1;

    iget-object p0, p0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-ne p2, p0, :cond_6

    return-object v3

    .line 11
    :cond_6
    throw p1
.end method

.method public static final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-interface {p0}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->I0(Ls1/w/f;)V

    .line 3
    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    instance-of v4, v3, Lq3/a/y2/i;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lq3/a/y2/i;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget-object v4, v3, Lq3/a/y2/i;->d:Lq3/a/g0;

    invoke-virtual {v4, v2}, Lq3/a/g0;->J0(Ls1/w/f;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 5
    iput-object v1, v3, Lq3/a/y2/i;->f:Ljava/lang/Object;

    .line 6
    iput v6, v3, Lq3/a/r0;->c:I

    .line 7
    iget-object v4, v3, Lq3/a/y2/i;->d:Lq3/a/g0;

    invoke-virtual {v4, v2, v3}, Lq3/a/g0;->G0(Ls1/w/f;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 8
    :cond_2
    new-instance v4, Lq3/a/u2;

    invoke-direct {v4}, Lq3/a/u2;-><init>()V

    .line 9
    invoke-interface {v2, v4}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    .line 10
    iput-object v1, v3, Lq3/a/y2/i;->f:Ljava/lang/Object;

    .line 11
    iput v6, v3, Lq3/a/r0;->c:I

    .line 12
    iget-object v7, v3, Lq3/a/y2/i;->d:Lq3/a/g0;

    invoke-virtual {v7, v2, v3}, Lq3/a/g0;->G0(Ls1/w/f;Ljava/lang/Runnable;)V

    .line 13
    iget-boolean v2, v4, Lq3/a/u2;->a:Z

    if-eqz v2, :cond_9

    .line 14
    sget-object v2, Lq3/a/m2;->a:Lq3/a/m2;

    invoke-static {}, Lq3/a/m2;->a()Lq3/a/z0;

    move-result-object v2

    .line 15
    iget-object v4, v2, Lq3/a/z0;->d:Lq3/a/y2/a;

    const/4 v7, 0x0

    if-nez v4, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget v8, v4, Lq3/a/y2/a;->b:I

    iget v4, v4, Lq3/a/y2/a;->c:I

    if-ne v8, v4, :cond_4

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {v2}, Lq3/a/z0;->W0()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 18
    iput-object v1, v3, Lq3/a/y2/i;->f:Ljava/lang/Object;

    .line 19
    iput v6, v3, Lq3/a/r0;->c:I

    .line 20
    invoke-virtual {v2, v3}, Lq3/a/z0;->Q0(Lq3/a/r0;)V

    goto :goto_5

    .line 21
    :cond_6
    invoke-virtual {v2, v6}, Lq3/a/z0;->U0(Z)V

    .line 22
    :try_start_0
    invoke-virtual {v3}, Lq3/a/r0;->run()V

    .line 23
    :cond_7
    invoke-virtual {v2}, Lq3/a/z0;->l1()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 24
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lq3/a/r0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :goto_3
    invoke-virtual {v2, v6}, Lq3/a/z0;->K0(Z)V

    :goto_4
    move v6, v7

    :goto_5
    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    move-object v2, v1

    goto :goto_8

    :catchall_1
    move-exception p0

    invoke-virtual {v2, v6}, Lq3/a/z0;->K0(Z)V

    throw p0

    :cond_9
    :goto_7
    move-object v2, v0

    :goto_8
    if-ne v2, v0, :cond_a

    const-string v3, "frame"

    .line 26
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    if-ne v2, v0, :cond_b

    return-object v2

    :cond_b
    return-object v1
.end method
