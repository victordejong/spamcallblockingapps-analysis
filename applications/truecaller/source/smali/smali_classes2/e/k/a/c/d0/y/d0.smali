.class public final Le/k/a/c/d0/y/d0;
.super Le/k/a/c/d0/u;
.source "SourceFile"


# instance fields
.field public final o:Le/k/a/c/g0/j;

.field public final p:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/d0;Le/k/a/c/j;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/y/d0;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    .line 6
    iget-object p2, p1, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    iput-object p2, p0, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    .line 7
    iget-object p1, p1, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    iput-object p1, p0, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/d0;Le/k/a/c/v;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/v;)V

    .line 9
    iget-object p2, p1, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    iput-object p2, p0, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    .line 10
    iget-object p1, p1, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    iput-object p1, p0, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;)V

    .line 2
    iput-object p5, p0, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    .line 3
    iget-object p1, p5, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    .line 4
    iput-object p1, p0, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/y/d0;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Le/k/a/c/v;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/y/d0;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/y/d0;-><init>(Le/k/a/c/d0/y/d0;Le/k/a/c/v;)V

    return-object v0
.end method

.method public E(Le/k/a/c/d0/r;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/d0;

    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/d0/y/d0;-><init>(Le/k/a/c/d0/y/d0;Le/k/a/c/j;Le/k/a/c/d0/r;)V

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
    new-instance v0, Le/k/a/c/d0/y/d0;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/d0/y/d0;-><init>(Le/k/a/c/d0/y/d0;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    return-object v0
.end method

.method public final i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/u;->h:Le/k/a/c/j0/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/y/d0;->p:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    new-array p3, v2, [Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 7
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v0, p3, v1

    const-string v0, "Problem deserializing \'setterless\' property \'%s\': get method returned null"

    .line 8
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v3

    :catch_0
    move-exception p2

    .line 9
    invoke-static {p2}, Le/k/a/c/n0/g;->J(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    invoke-static {p2}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    invoke-static {p2}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    .line 12
    invoke-static {p2}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 13
    new-instance v0, Le/k/a/c/k;

    invoke-direct {v0, p1, p3, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw v0

    .line 15
    :cond_2
    iget-object p1, p0, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    new-array p3, v2, [Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 17
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v0, p3, v1

    const-string v0, "Problem deserializing \'setterless\' property (\"%s\"): no way to handle typed deser with setterless yet"

    .line 18
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v3
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/y/d0;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V

    return-object p3
.end method

.method public l(Le/k/a/c/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/d0;->o:Le/k/a/c/g0/j;

    sget-object v1, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 2
    invoke-virtual {p1, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Le/k/a/c/g0/i;->f(Z)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should never call `set()` on setterless property (\'"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 3
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    const-string v1, "\')"

    .line 4
    invoke-static {p2, v0, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
