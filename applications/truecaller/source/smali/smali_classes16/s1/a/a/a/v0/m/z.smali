.class public final Ls1/a/a/a/v0/m/z;
.super Ls1/a/a/a/v0/m/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/p;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/m/y;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/z;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;

    move-result-object p1

    return-object p1
.end method

.method public S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/z;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;

    move-result-object p1

    return-object p1
.end method

.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1
.end method

.method public V0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public W0(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/i/i;)Ljava/lang/String;
    .locals 2

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ls1/a/a/a/v0/i/i;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x28

    .line 2
    invoke-static {p2}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 6
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 8
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 10
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Ls1/a/a/a/v0/i/c;->t(Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/a/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/z;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/m/l0;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    .line 6
    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/m/z;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public b0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v0, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 6
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->M1(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
