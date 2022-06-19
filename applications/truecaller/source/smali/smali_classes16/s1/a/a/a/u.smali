.class public final Ls1/a/a/a/u;
.super Ls1/a/a/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/u$a;
    }
.end annotation


# instance fields
.field public final c:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "jClass"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/n;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 2
    new-instance p1, Ls1/a/a/a/u$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$b;-><init>(Ls1/a/a/a/u;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Data() }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/u;->c:Ls1/a/a/a/l0;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/u;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 3
    check-cast p1, Ls1/a/a/a/u;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/j;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/v;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/u;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->c:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ls1/a/a/a/v0/b/k0;
    .locals 9

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/u$a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/u$a;->g:Ls1/a/a/a/l0;

    sget-object v1, Ls1/a/a/a/u$a;->i:[Ls1/a/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ls1/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, v0, Ls1/o;->a:Ljava/lang/Object;

    .line 6
    move-object v5, v2

    check-cast v5, Ls1/a/a/a/v0/e/a0/b/g;

    .line 7
    iget-object v2, v0, Ls1/o;->b:Ljava/lang/Object;

    .line 8
    check-cast v2, Ls1/a/a/a/v0/e/l;

    .line 9
    iget-object v0, v0, Ls1/o;->c:Ljava/lang/Object;

    .line 10
    move-object v7, v0

    check-cast v7, Ls1/a/a/a/v0/e/a0/b/f;

    .line 11
    sget-object v0, Ls1/a/a/a/v0/e/a0/a;->n:Ls1/a/a/a/v0/h/h$f;

    const-string v3, "JvmProtoBuf.packageLocalVariable"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, p1}, Le/q/f/a/d/a;->L0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ls1/a/a/a/v0/e/n;

    if-eqz v4, :cond_0

    .line 12
    iget-object v3, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 13
    new-instance v6, Ls1/a/a/a/v0/e/z/e;

    .line 14
    iget-object p1, v2, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    const-string v0, "packageProto.typeTable"

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, Ls1/a/a/a/v0/e/z/e;-><init>(Ls1/a/a/a/v0/e/t;)V

    .line 16
    sget-object v8, Ls1/a/a/a/u$c;->j:Ls1/a/a/a/u$c;

    .line 17
    invoke-static/range {v3 .. v8}, Ls1/a/a/a/s0;->c(Ljava/lang/Class;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/p;)Ls1/a/a/a/v0/b/a;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/k0;

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/u$a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/u$a;->f:Ls1/a/a/a/l0;

    sget-object v1, Ls1/a/a/a/u$a;->i:[Ls1/a/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public l(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/u;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->c:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ls1/a/a/a/v0/j/y/i;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/u$a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/u$a;->e:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/u$a;->i:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "file class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
