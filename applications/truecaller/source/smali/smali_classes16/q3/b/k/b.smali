.class public abstract Lq3/b/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/b/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/e;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Ls1/a/a/a/v0/f/d;->L0(Lq3/b/k/b;Lq3/b/j/e;Ljava/lang/Object;)Lq3/b/g;

    move-result-object v0

    .line 2
    move-object v1, p0

    check-cast v1, Lq3/b/e;

    .line 3
    iget-object v1, v1, Lq3/b/e;->a:Lq3/b/i/d;

    .line 4
    invoke-interface {p1, v1}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    .line 5
    :try_start_0
    move-object v2, p0

    check-cast v2, Lq3/b/e;

    .line 6
    iget-object v2, v2, Lq3/b/e;->a:Lq3/b/i/d;

    const/4 v3, 0x0

    .line 7
    invoke-interface {v0}, Lq3/b/g;->a()Lq3/b/i/d;

    move-result-object v4

    invoke-interface {v4}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lq3/b/j/c;->h(Lq3/b/i/d;ILjava/lang/String;)V

    .line 8
    move-object v2, p0

    check-cast v2, Lq3/b/e;

    .line 9
    iget-object v2, v2, Lq3/b/e;->a:Lq3/b/i/d;

    const/4 v3, 0x1

    .line 10
    invoke-interface {p1, v2, v3, v0, p2}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1, v1}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1, v1}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    throw p2
.end method

.method public final d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/d;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/e;

    .line 2
    iget-object v0, v0, Lq3/b/e;->a:Lq3/b/i/d;

    .line 3
    invoke-interface {p1, v0}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-interface {p1}, Lq3/b/j/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p0

    check-cast v1, Lq3/b/e;

    .line 6
    iget-object v2, v1, Lq3/b/e;->a:Lq3/b/i/d;

    const/4 v3, 0x0

    .line 7
    invoke-interface {p1, v2, v3}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {p0, p1, v2}, Ls1/a/a/a/v0/f/d;->K0(Lq3/b/k/b;Lq3/b/j/b;Ljava/lang/String;)Lq3/b/a;

    move-result-object v4

    .line 9
    iget-object v2, v1, Lq3/b/e;->a:Lq3/b/i/d;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    .line 10
    invoke-static/range {v1 .. v7}, Ls1/a/a/a/v0/f/d;->C0(Lq3/b/j/b;Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    move-object v8, v1

    .line 12
    :goto_0
    :try_start_1
    move-object v2, p0

    check-cast v2, Lq3/b/e;

    .line 13
    iget-object v2, v2, Lq3/b/e;->a:Lq3/b/i/d;

    .line 14
    invoke-interface {p1, v2}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    if-eq v3, v1, :cond_2

    .line 15
    new-instance v1, Lq3/b/f;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index in polymorphic deserialization of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "unknown class"

    .line 17
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Lq3/b/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz v8, :cond_3

    .line 20
    invoke-static {p0, p1, v8}, Ls1/a/a/a/v0/f/d;->K0(Lq3/b/k/b;Lq3/b/j/b;Ljava/lang/String;)Lq3/b/a;

    move-result-object v4

    .line 21
    move-object v1, p0

    check-cast v1, Lq3/b/e;

    .line 22
    iget-object v2, v1, Lq3/b/e;->a:Lq3/b/i/d;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    .line 23
    invoke-static/range {v1 .. v7}, Ls1/a/a/a/v0/f/d;->C0(Lq3/b/j/b;Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "Cannot read polymorphic value before its type token"

    .line 24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_4
    move-object v2, p0

    check-cast v2, Lq3/b/e;

    .line 26
    iget-object v2, v2, Lq3/b/e;->a:Lq3/b/i/d;

    .line 27
    invoke-interface {p1, v2, v3}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v2

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 28
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    return-object v1

    .line 29
    :cond_6
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Polymorphic value has not been read for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 30
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    throw v1
.end method

.method public f(Lq3/b/j/b;Ljava/lang/String;)Lq3/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/b;",
            "Ljava/lang/String;",
            ")",
            "Lq3/b/a<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lq3/b/j/b;->c()Lq3/b/m/b;

    move-result-object p1

    invoke-virtual {p0}, Lq3/b/k/b;->h()Ls1/a/c;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lq3/b/m/b;->b(Ls1/a/c;Ljava/lang/String;)Lq3/b/a;

    move-result-object p1

    return-object p1
.end method

.method public g(Lq3/b/j/e;Ljava/lang/Object;)Lq3/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/e;",
            "TT;)",
            "Lq3/b/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lq3/b/j/e;->c()Lq3/b/m/b;

    move-result-object p1

    invoke-virtual {p0}, Lq3/b/k/b;->h()Ls1/a/c;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lq3/b/m/b;->c(Ls1/a/c;Ljava/lang/Object;)Lq3/b/g;

    move-result-object p1

    return-object p1
.end method

.method public abstract h()Ls1/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/c<",
            "TT;>;"
        }
    .end annotation
.end method
