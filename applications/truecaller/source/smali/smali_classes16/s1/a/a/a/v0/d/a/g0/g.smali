.class public final Ls1/a/a/a/v0/d/a/g0/g;
.super Ls1/a/a/a/v0/m/s;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/p;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/l0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/s;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/g;->b:Ls1/a/a/a/v0/m/l0;

    return-void
.end method


# virtual methods
.method public P0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/g0/g;->b1(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/g0/g;

    move-result-object p1

    return-object p1
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/g0/g;->b:Ls1/a/a/a/v0/m/l0;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/g;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/g;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/g0/g;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public X0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/g;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
    .locals 1

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/g;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/g0/g;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public final a1(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o2(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/d/a/g0/g;

    invoke-direct {p1, v0}, Ls1/a/a/a/v0/d/a/g0/g;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-object p1
.end method

.method public b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b1(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/g0/g;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/g;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/g;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/g0/g;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/g0/g;->a1(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/m/y;

    .line 6
    iget-object v1, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 7
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/d/a/g0/g;->a1(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 9
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/d/a/g0/g;->a1(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 11
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    :goto_0
    return-object p1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
