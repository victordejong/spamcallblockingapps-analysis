.class public final Ls1/a/a/a/v0/j/s/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/s/a/b;


# instance fields
.field public a:Ls1/a/a/a/v0/m/l1/i;

.field public final b:Ls1/a/a/a/v0/m/y0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/y0;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    sget-object v0, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/s/a/c;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 4
    invoke-interface {v1, p1}, Ls1/a/a/a/v0/m/y0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/j/s/a/c;-><init>(Ls1/a/a/a/v0/m/y0;)V

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/m/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/j/s/a/c;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    :goto_0
    const-string v1, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ls1/a/a/a/v0/b/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    const-string v1, "projection.type.constructor.builtIns"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CapturedTypeConstructor("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
