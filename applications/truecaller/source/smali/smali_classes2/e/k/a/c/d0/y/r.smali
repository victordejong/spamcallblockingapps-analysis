.class public final Le/k/a/c/d0/y/r;
.super Le/k/a/c/d0/u;
.source "SourceFile"


# instance fields
.field public final o:Le/k/a/c/g0/j;

.field public final transient p:Ljava/lang/reflect/Method;

.field public final q:Z


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/r;Le/k/a/c/j;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/y/r;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    .line 7
    iget-object p2, p1, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    iput-object p2, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    .line 8
    iget-object p1, p1, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    iput-object p1, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    .line 9
    invoke-static {p3}, Le/k/a/c/d0/y/t;->a(Le/k/a/c/d0/r;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/y/r;->q:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/r;Le/k/a/c/v;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/v;)V

    .line 11
    iget-object p2, p1, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    iput-object p2, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    .line 12
    iget-object p2, p1, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    iput-object p2, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    .line 13
    iget-boolean p1, p1, Le/k/a/c/d0/y/r;->q:Z

    iput-boolean p1, p0, Le/k/a/c/d0/y/r;->q:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/r;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;)V

    .line 15
    iget-object v0, p1, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    iput-object v0, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    .line 16
    iput-object p2, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    .line 17
    iget-boolean p1, p1, Le/k/a/c/d0/y/r;->q:Z

    iput-boolean p1, p0, Le/k/a/c/d0/y/r;->q:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;)V

    .line 2
    iput-object p5, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    .line 3
    iget-object p1, p5, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    .line 4
    iput-object p1, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    .line 5
    iget-object p1, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    invoke-static {p1}, Le/k/a/c/d0/y/t;->a(Le/k/a/c/d0/r;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/y/r;->q:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Le/k/a/c/d0/u;->b(Le/k/a/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    throw v0
.end method

.method public D(Le/k/a/c/v;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/y/r;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/y/r;-><init>(Le/k/a/c/d0/y/r;Le/k/a/c/v;)V

    return-object v0
.end method

.method public E(Le/k/a/c/d0/r;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/r;

    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/d0/y/r;-><init>(Le/k/a/c/d0/y/r;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public G(Le/k/a/c/j;)Le/k/a/c/d0/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/d0/u;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    .line 3
    :cond_1
    new-instance v0, Le/k/a/c/d0/y/r;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/d0/y/r;-><init>(Le/k/a/c/d0/y/r;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    return-object v0
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/c/d0/y/r;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/u;->h:Le/k/a/c/j0/e;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Le/k/a/c/d0/y/r;->q:Z

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v0

    goto :goto_0

    .line 8
    :cond_4
    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 10
    invoke-virtual {p0, p1, p3, p2}, Le/k/a/c/d0/u;->b(Le/k/a/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/c/d0/y/r;->q:Z

    if-eqz v0, :cond_0

    return-object p3

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/u;->h:Le/k/a/c/j0/e;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Le/k/a/c/d0/y/r;->q:Z

    if-eqz v0, :cond_2

    return-object p3

    .line 7
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v0

    goto :goto_0

    .line 8
    :cond_4
    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p3, p1

    :goto_1
    return-object p3

    :catch_0
    move-exception p3

    .line 10
    invoke-virtual {p0, p1, p3, p2}, Le/k/a/c/d0/u;->b(Le/k/a/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public l(Le/k/a/c/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    sget-object v1, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 2
    invoke-virtual {p1, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Le/k/a/c/g0/i;->f(Z)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/r;

    iget-object v1, p0, Le/k/a/c/d0/y/r;->o:Le/k/a/c/g0/j;

    .line 2
    iget-object v1, v1, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    .line 3
    invoke-direct {v0, p0, v1}, Le/k/a/c/d0/y/r;-><init>(Le/k/a/c/d0/y/r;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/y/r;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Le/k/a/c/d0/u;->b(Le/k/a/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    throw v0
.end method
