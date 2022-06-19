.class public Le/k/a/c/n0/y;
.super Le/k/a/c/g0/s;
.source "SourceFile"


# instance fields
.field public final b:Le/k/a/c/b;

.field public final c:Le/k/a/c/g0/i;

.field public final d:Le/k/a/c/u;

.field public final e:Le/k/a/c/v;

.field public final f:Le/k/a/a/r$b;


# direct methods
.method public constructor <init>(Le/k/a/c/b;Le/k/a/c/g0/i;Le/k/a/c/v;Le/k/a/c/u;Le/k/a/a/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/g0/s;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/n0/y;->b:Le/k/a/c/b;

    .line 3
    iput-object p2, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    .line 4
    iput-object p3, p0, Le/k/a/c/n0/y;->e:Le/k/a/c/v;

    if-nez p4, :cond_0

    .line 5
    sget-object p4, Le/k/a/c/u;->i:Le/k/a/c/u;

    :cond_0
    iput-object p4, p0, Le/k/a/c/n0/y;->d:Le/k/a/c/u;

    .line 6
    iput-object p5, p0, Le/k/a/c/n0/y;->f:Le/k/a/a/r$b;

    return-void
.end method

.method public static E(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/v;Le/k/a/c/u;Le/k/a/a/r$a;)Le/k/a/c/n0/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/v;",
            "Le/k/a/c/u;",
            "Le/k/a/a/r$a;",
            ")",
            "Le/k/a/c/n0/y;"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1
    sget-object v0, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p4, v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/a/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1, v1, v1}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    sget-object v0, Le/k/a/c/g0/s;->a:Le/k/a/a/r$b;

    :goto_1
    move-object v6, v0

    .line 5
    new-instance p4, Le/k/a/c/n0/y;

    invoke-virtual {p0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v2

    move-object v1, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/k/a/c/n0/y;-><init>(Le/k/a/c/b;Le/k/a/c/g0/i;Le/k/a/c/v;Le/k/a/c/u;Le/k/a/a/r$b;)V

    return-object p4
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/y;->v()Le/k/a/c/g0/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Le/k/a/c/v;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->e:Le/k/a/c/v;

    return-object v0
.end method

.method public getMetadata()Le/k/a/c/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->d:Le/k/a/c/u;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->e:Le/k/a/c/v;

    .line 2
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Le/k/a/a/r$b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->f:Le/k/a/a/r$b;

    return-object v0
.end method

.method public o()Le/k/a/c/g0/m;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/m;

    if-eqz v1, :cond_0

    check-cast v0, Le/k/a/c/g0/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public p()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/g0/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/m;

    if-eqz v1, :cond_0

    check-cast v0, Le/k/a/c/g0/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/k/a/c/n0/g;->c:Ljava/util/Iterator;

    return-object v0

    .line 3
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public q()Le/k/a/c/g0/g;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/g;

    if-eqz v1, :cond_0

    check-cast v0, Le/k/a/c/g0/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r()Le/k/a/c/g0/j;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/j;

    if-eqz v1, :cond_0

    check-cast v0, Le/k/a/c/g0/j;

    .line 2
    invoke-virtual {v0}, Le/k/a/c/g0/j;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    return-object v0
.end method

.method public t()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public v()Le/k/a/c/g0/j;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/j;

    if-eqz v1, :cond_0

    check-cast v0, Le/k/a/c/g0/j;

    .line 2
    invoke-virtual {v0}, Le/k/a/c/g0/j;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Le/k/a/c/v;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->b:Le/k/a/c/b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/b;->d0()Le/k/a/c/v;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v0, v0, Le/k/a/c/g0/m;

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->c:Le/k/a/c/g0/i;

    instance-of v0, v0, Le/k/a/c/g0/g;

    return v0
.end method

.method public z(Le/k/a/c/v;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/y;->e:Le/k/a/c/v;

    invoke-virtual {v0, p1}, Le/k/a/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
