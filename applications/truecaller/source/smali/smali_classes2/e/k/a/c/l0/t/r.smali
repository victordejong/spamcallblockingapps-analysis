.class public Le/k/a/c/l0/t/r;
.super Le/k/a/c/l0/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/b<",
        "Ljava/lang/Iterable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;)V
    .locals 6

    .line 1
    const-class v1, Ljava/lang/Iterable;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/b;-><init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/r;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/r;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Le/k/a/c/l0/t/b;-><init>(Le/k/a/c/l0/t/b;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 3
    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/r;->t(Ljava/lang/Iterable;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p2, p1}, Le/k/a/b/g;->I1(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/r;->t(Ljava/lang/Iterable;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 11
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_1
    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            ")",
            "Le/k/a/c/l0/h<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/k/a/c/l0/t/r;

    iget-object v2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    iget-object v4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    iget-object v5, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/r;-><init>(Le/k/a/c/l0/t/r;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public bridge synthetic r(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/r;->t(Ljava/lang/Iterable;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/l0/t/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/r;-><init>(Le/k/a/c/l0/t/r;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public t(Ljava/lang/Iterable;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    const/4 v1, 0x0

    move-object v2, v1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_3

    .line 6
    :cond_1
    iget-object v4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {p3, v4, v1}, Le/k/a/c/a0;->D(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v2

    move-object v1, v4

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    :goto_1
    if-nez v0, :cond_4

    .line 9
    invoke-virtual {v2, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {v2, v3, p2, p3, v0}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_2
    move-object v2, v4

    .line 11
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    return-void
.end method
