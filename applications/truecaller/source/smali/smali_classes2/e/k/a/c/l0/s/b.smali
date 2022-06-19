.class public Le/k/a/c/l0/s/b;
.super Le/k/a/c/l0/t/d;
.source "SourceFile"


# instance fields
.field public final l:Le/k/a/c/l0/t/d;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/d;)V
    .locals 2

    .line 5
    iget-object v0, p1, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Le/k/a/c/l0/s/b;->l:Le/k/a/c/l0/t/d;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Le/k/a/c/l0/s/b;->l:Le/k/a/c/l0/t/d;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/d;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/b;->l:Le/k/a/c/l0/t/d;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/z;->v:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    .line 5
    :goto_0
    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/b;->z(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p2, p1}, Le/k/a/b/g;->I1(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/b;->z(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 9
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Le/k/a/c/l0/t/d;->p(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p0, p4, p1, v0}, Le/k/a/c/l0/t/d;->r(Le/k/a/c/j0/h;Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    .line 5
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/b;->z(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 7
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public h(Le/k/a/c/n0/s;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/b;->l:Le/k/a/c/l0/t/d;

    invoke-virtual {v0, p1}, Le/k/a/c/n;->h(Le/k/a/c/n0/s;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public s()Le/k/a/c/l0/t/d;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "BeanAsArraySerializer for "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v1, v0}, Le/d/c/a/a;->Z1(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/l0/t/d;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/s/b;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/s/b;-><init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public w(Ljava/lang/Object;)Le/k/a/c/l0/t/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/s/b;

    iget-object v1, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/l0/s/b;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public x(Le/k/a/c/l0/s/j;)Le/k/a/c/l0/t/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/b;->l:Le/k/a/c/l0/t/d;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/t/d;->x(Le/k/a/c/l0/s/j;)Le/k/a/c/l0/t/d;

    move-result-object p1

    return-object p1
.end method

.method public y([Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)Le/k/a/c/l0/t/d;
    .locals 0

    return-object p0
.end method

.method public final z(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "[anySetter]"

    .line 1
    iget-object v1, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    :goto_0
    const/4 v2, 0x0

    .line 4
    :try_start_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 5
    aget-object v4, v1, v2

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v4, p1, p2, p3}, Le/k/a/c/l0/c;->k(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p3

    .line 8
    new-instance v3, Le/k/a/c/k;

    const-string v4, "Infinite recursion (StackOverflowError)"

    invoke-direct {v3, p2, v4, p3}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    array-length p2, v1

    if-ne v2, p2, :cond_3

    goto :goto_3

    :cond_3
    aget-object p2, v1, v2

    .line 10
    iget-object p2, p2, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 11
    iget-object v0, p2, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 12
    :goto_3
    new-instance p2, Le/k/a/c/k$a;

    invoke-direct {p2, p1, v0}, Le/k/a/c/k$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Le/k/a/c/k;->f(Le/k/a/c/k$a;)V

    .line 13
    throw v3

    :catch_1
    move-exception p2

    .line 14
    array-length v3, v1

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    aget-object v0, v1, v2

    .line 15
    iget-object v0, v0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 16
    iget-object v0, v0, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 17
    :goto_4
    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
