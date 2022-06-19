.class public final Le/k/a/c/d0/y/j;
.super Le/k/a/c/d0/u$a;
.source "SourceFile"


# instance fields
.field public final transient p:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public q:Le/k/a/c/g0/e;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/u;Le/k/a/c/g0/e;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Le/k/a/c/d0/u$a;-><init>(Le/k/a/c/d0/u;)V

    .line 4
    iput-object p2, p0, Le/k/a/c/d0/y/j;->q:Le/k/a/c/g0/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p2, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    .line 6
    :goto_0
    iput-object p1, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing constructor (broken JDK (de)serialization?)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Le/k/a/c/d0/u;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/u;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/u$a;-><init>(Le/k/a/c/d0/u;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public I(Le/k/a/c/d0/u;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/d0/y/j;

    iget-object v1, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1, v1}, Le/k/a/c/d0/y/j;-><init>(Le/k/a/c/d0/u;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {p1, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/u;->h:Le/k/a/c/j0/e;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    :try_start_0
    iget-object v2, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 8
    :goto_0
    iget-object p2, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    .line 10
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "Failed to instantiate class %s, problem: %s"

    .line 11
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Le/k/a/c/n0/g;->L(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/j;

    iget-object v1, p0, Le/k/a/c/d0/y/j;->q:Le/k/a/c/g0/e;

    invoke-direct {v0, p0, v1}, Le/k/a/c/d0/y/j;-><init>(Le/k/a/c/d0/u;Le/k/a/c/g0/e;)V

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/j;->q:Le/k/a/c/g0/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/k/a/c/d0/y/j;

    new-instance v1, Le/k/a/c/g0/e;

    iget-object v2, p0, Le/k/a/c/d0/y/j;->p:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v3}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    invoke-direct {v0, p0, v1}, Le/k/a/c/d0/y/j;-><init>(Le/k/a/c/d0/u;Le/k/a/c/g0/e;)V

    return-object v0

    :cond_0
    return-object p0
.end method
