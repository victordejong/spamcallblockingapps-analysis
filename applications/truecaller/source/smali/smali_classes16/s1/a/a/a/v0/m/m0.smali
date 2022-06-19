.class public final Ls1/a/a/a/v0/m/m0;
.super Ls1/a/a/a/v0/m/l0;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/m/v0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Ls1/a/a/a/v0/j/y/i;

.field public final f:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/l1/e;",
            "Ls1/a/a/a/v0/m/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;Z",
            "Ls1/a/a/a/v0/j/y/i;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/m/l1/e;",
            "+",
            "Ls1/a/a/a/v0/m/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/m0;->b:Ls1/a/a/a/v0/m/v0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/m0;->c:Ljava/util/List;

    iput-boolean p3, p0, Ls1/a/a/a/v0/m/m0;->d:Z

    iput-object p4, p0, Ls1/a/a/a/v0/m/m0;->e:Ls1/a/a/a/v0/j/y/i;

    iput-object p5, p0, Ls1/a/a/a/v0/m/m0;->f:Ls1/z/b/l;

    .line 2
    instance-of p2, p4, Ls1/a/a/a/v0/m/x$d;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "SimpleTypeImpl should not be created for error type: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/m0;->c:Ljava/util/List;

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/m0;->b:Ls1/a/a/a/v0/m/v0;

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/m0;->d:Z

    return v0
.end method

.method public Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/m0;->f:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/m0;->f:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/m0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/m0;->d:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ls1/a/a/a/v0/m/j0;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/m/j0;-><init>(Ls1/a/a/a/v0/m/l0;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ls1/a/a/a/v0/m/i0;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/m/i0;-><init>(Ls1/a/a/a/v0/m/l0;)V

    :goto_0
    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/m/n;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    :goto_0
    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/m0;->e:Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
