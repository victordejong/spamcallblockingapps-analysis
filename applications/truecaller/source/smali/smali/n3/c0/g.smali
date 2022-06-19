.class public final Ln3/c0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/c0/q;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lq3/a/x2/f<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "db"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callable"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/c0/c;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move v3, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ln3/c0/c;-><init>([Ljava/lang/String;ZLn3/c0/q;Ljava/util/concurrent/Callable;Ls1/w/d;)V

    .line 3
    new-instance p0, Lq3/a/x2/d1;

    invoke-direct {p0, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object p0
.end method

.method public static final b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/c0/q;",
            "Z",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ls1/w/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/c0/q;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p4}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v0

    sget-object v1, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    invoke-interface {v0, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    check-cast v0, Ln3/c0/d0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Ln3/c0/d0;->c:Ls1/w/e;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->A0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->u0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p0

    :goto_0
    move-object v0, p0

    .line 6
    :goto_1
    new-instance p0, Lq3/a/o;

    invoke-static {p4}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 7
    invoke-virtual {p0}, Lq3/a/o;->z()V

    .line 8
    sget-object p1, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v7, 0x0

    new-instance v8, Ln3/c0/d;

    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ln3/c0/d;-><init>(Lq3/a/n;Ls1/w/d;Ls1/w/e;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 9
    new-instance v1, Ln3/c0/e;

    invoke-direct {v1, p1, v0, p3, p2}, Ln3/c0/e;-><init>(Lq3/a/p1;Ls1/w/e;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    invoke-virtual {p0, v1}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 10
    invoke-virtual {p0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p0

    .line 11
    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p0, p1, :cond_3

    const-string p1, "frame"

    .line 12
    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static final c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/c0/q;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ls1/w/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/c0/q;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v0

    sget-object v1, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    invoke-interface {v0, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    check-cast v0, Ln3/c0/d0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Ln3/c0/d0;->c:Ls1/w/e;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->A0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->u0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p0

    :goto_0
    move-object v0, p0

    .line 6
    :goto_1
    new-instance p0, Ln3/c0/f;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Ln3/c0/f;-><init>(Ljava/util/concurrent/Callable;Ls1/w/d;)V

    invoke-static {v0, p0, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method
