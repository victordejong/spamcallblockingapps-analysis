.class public abstract Ls1/a/a/a/v0/b/h1/f;
.super Ls1/a/a/a/v0/b/h1/n;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/v0;


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ls1/a/a/a/v0/b/h1/f$b;

.field public final g:Ls1/a/a/a/v0/b/r;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/r;)V
    .locals 1

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityImpl"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls1/a/a/a/v0/b/h1/n;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)V

    iput-object p5, p0, Ls1/a/a/a/v0/b/h1/f;->g:Ls1/a/a/a/v0/b/r;

    .line 2
    new-instance p1, Ls1/a/a/a/v0/b/h1/f$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/b/h1/f$b;-><init>(Ls1/a/a/a/v0/b/h1/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/f;->f:Ls1/a/a/a/v0/b/h1/f$b;

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ls1/a/a/a/v0/b/h;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/k;
    .locals 0

    return-object p0
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->i(Ls1/a/a/a/v0/b/v0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f;->g:Ls1/a/a/a/v0/b/r;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f;->f:Ls1/a/a/a/v0/b/h1/f$b;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "typealias "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
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
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "declaredTypeParametersImpl"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public v0()Ls1/a/a/a/v0/b/n;
    .locals 0

    return-object p0
.end method

.method public x()Z
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Ls1/a/a/a/v0/k/b/g0/l;

    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/l;->G0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    new-instance v1, Ls1/a/a/a/v0/b/h1/f$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/b/h1/f$a;-><init>(Ls1/a/a/a/v0/b/h1/f;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/f1;->c(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result v0

    return v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
