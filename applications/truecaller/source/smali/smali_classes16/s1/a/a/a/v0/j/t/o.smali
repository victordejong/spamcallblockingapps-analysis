.class public final Ls1/a/a/a/v0/j/t/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;


# instance fields
.field public final a:J

.field public final b:Ls1/a/a/a/v0/b/a0;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/m/l0;

.field public final e:Ls1/g;


# direct methods
.method public constructor <init>(JLs1/a/a/a/v0/b/a0;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/a/a/a/v0/b/a0;",
            "Ljava/util/Set<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p0, v1}, Ls1/a/a/a/v0/m/f0;->d(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/j/t/o;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/j/t/o;->d:Ls1/a/a/a/v0/m/l0;

    .line 6
    new-instance v0, Ls1/a/a/a/v0/j/t/o$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/o$a;-><init>(Ls1/a/a/a/v0/j/t/o;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/j/t/o;->e:Ls1/g;

    .line 7
    iput-wide p1, p0, Ls1/a/a/a/v0/j/t/o;->a:J

    .line 8
    iput-object p3, p0, Ls1/a/a/a/v0/j/t/o;->b:Ls1/a/a/a/v0/b/a0;

    .line 9
    iput-object p4, p0, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/o;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ls1/a/a/a/v0/m/v0;)Z
    .locals 2

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/e0;

    .line 4
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/o;->b:Ls1/a/a/a/v0/b/a0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, "IntegerLiteralType"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    sget-object v8, Ls1/a/a/a/v0/j/t/p;->b:Ls1/a/a/a/v0/j/t/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    const-string v3, ","

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
