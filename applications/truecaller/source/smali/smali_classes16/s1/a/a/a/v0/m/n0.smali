.class public final Ls1/a/a/a/v0/m/n0;
.super Ls1/a/a/a/v0/m/s;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/g1;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/l0;

.field public final c:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/s;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    return-void
.end method


# virtual methods
.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/n0;->a1(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/n0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/n0;->a1(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/n0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/n0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/i1;->S0(Z)Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    .line 4
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/i1;->S0(Z)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/i1;->U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    .line 4
    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    return-object p1
.end method

.method public X()Ls1/a/a/a/v0/m/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public X0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public bridge synthetic Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/n0;->a1(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/n0;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/n0;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    .line 4
    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/m/n0;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/e0;)V

    return-object v0
.end method

.method public a1(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/n0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/n0;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/n0;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/m/l0;

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    .line 5
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    .line 6
    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/m/n0;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/e0;)V

    return-object v0
.end method

.method public v0()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n0;->c:Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method
