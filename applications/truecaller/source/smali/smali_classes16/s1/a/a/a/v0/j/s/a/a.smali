.class public final Ls1/a/a/a/v0/j/s/a/a;
.super Ls1/a/a/a/v0/m/l0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/c;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/y0;

.field public final c:Ls1/a/a/a/v0/j/s/a/b;

.field public final d:Z

.field public final e:Ls1/a/a/a/v0/b/f1/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    iput-object p2, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    iput-boolean p3, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    iput-object p4, p0, Ls1/a/a/a/v0/j/s/a/a;->e:Ls1/a/a/a/v0/b/f1/h;

    return-void
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
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    return v0
.end method

.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/j/s/a/a;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/s/a/a;

    move-result-object p1

    return-object p1
.end method

.method public S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/j/s/a/a;

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/j/s/a/a;->e:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    invoke-direct {v0, v1, v2, p1, v3}, Ls1/a/a/a/v0/j/s/a/a;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/j/s/a/a;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/s/a/a;

    move-result-object p1

    return-object p1
.end method

.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 4

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/s/a/a;

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    .line 4
    iget-boolean v3, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/v0/j/s/a/a;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/j/s/a/a;

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/j/s/a/a;->e:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    invoke-direct {v0, v1, v2, p1, v3}, Ls1/a/a/a/v0/j/s/a/a;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V

    :goto_0
    return-object v0
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 4

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/s/a/a;

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    .line 4
    iget-boolean v3, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/v0/j/s/a/a;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/s/a/a;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/s/a/a;

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    invoke-interface {v1, p1}, Ls1/a/a/a/v0/m/y0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->c:Ls1/a/a/a/v0/j/s/a/b;

    .line 3
    iget-boolean v2, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/j/s/a/a;->e:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    invoke-direct {v0, p1, v1, v2, v3}, Ls1/a/a/a/v0/j/s/a/a;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/j/s/a/b;ZLs1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/s/a/a;->e:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 2

    const-string v0, "No member resolution should be done on captured type, it used only during constraint system resolution"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/x;->c(Ljava/lang/String;Z)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v1, "ErrorUtils.createErrorSc\u2026solution\", true\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Captured("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/j/s/a/a;->b:Ls1/a/a/a/v0/m/y0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Ls1/a/a/a/v0/j/s/a/a;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
