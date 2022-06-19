.class public abstract Le/k/a/c/l;
.super Le/k/a/c/m$a;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/t;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/m$a;",
        "Le/k/a/b/t;",
        "Ljava/lang/Iterable<",
        "Le/k/a/c/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

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

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final F()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/l;->v()Le/k/a/c/k0/m;

    move-result-object v0

    sget-object v1, Le/k/a/c/k0/m;->e:Le/k/a/c/k0/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/l;->v()Le/k/a/c/k0/m;

    move-result-object v0

    sget-object v1, Le/k/a/c/k0/m;->f:Le/k/a/c/k0/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/l;->v()Le/k/a/c/k0/m;

    move-result-object v0

    sget-object v1, Le/k/a/c/k0/m;->i:Le/k/a/c/k0/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/c/l;->f(Z)Z

    move-result v0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f(Z)Z
    .locals 0

    return p1
.end method

.method public g()D
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/k/a/c/l;->h(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public h(D)D
    .locals 0

    return-wide p1
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/c/l;->j(I)I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/l;->r()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j(I)I
    .locals 0

    return p1
.end method

.method public k()J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/k/a/c/l;->l(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(J)J
    .locals 0

    return-wide p1
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/n0/g;->c:Ljava/util/Iterator;

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/n0/g;->c:Ljava/util/Iterator;

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u(Ljava/lang/String;)Le/k/a/c/l;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract v()Le/k/a/c/k0/m;
.end method

.method public w(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/l;->v()Le/k/a/c/k0/m;

    move-result-object v0

    sget-object v1, Le/k/a/c/k0/m;->c:Le/k/a/c/k0/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
