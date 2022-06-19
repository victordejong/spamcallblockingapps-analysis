.class public Le/k/a/c/l0/d;
.super Le/k/a/c/l0/t/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/l0/e;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/i;Le/k/a/c/l0/e;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;-><init>(Le/k/a/c/l0/t/d;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
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
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/c/l0/t/d;->q(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 6
    iget-object p2, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 8
    :cond_1
    invoke-virtual {p0, p3, v0, p1}, Le/k/a/c/l0/t/q0;->m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;

    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;->u(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 10
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

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
    new-instance v0, Le/k/a/c/l0/s/t;

    invoke-direct {v0, p0, p1}, Le/k/a/c/l0/s/t;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/n0/s;)V

    return-object v0
.end method

.method public s()Le/k/a/c/l0/t/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/k/a/c/l0/s/b;

    invoke-direct {v0, p0}, Le/k/a/c/l0/s/b;-><init>(Le/k/a/c/l0/t/d;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "BeanSerializer for "

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Le/k/a/c/l0/t/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/l0/d;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public w(Ljava/lang/Object;)Le/k/a/c/l0/t/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/d;

    iget-object v1, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public x(Le/k/a/c/l0/s/j;)Le/k/a/c/l0/t/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/d;

    iget-object v1, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public y([Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)Le/k/a/c/l0/t/d;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/d;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/l0/t/d;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V

    return-object v0
.end method
