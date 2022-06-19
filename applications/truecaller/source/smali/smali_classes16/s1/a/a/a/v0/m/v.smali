.class public final Ls1/a/a/a/v0/m/v;
.super Ls1/a/a/a/v0/m/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/e;


# instance fields
.field public final d:Ls1/a/a/a/v0/b/f1/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;)V
    .locals 2

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->n()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "builtIns.nothingType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v1, "builtIns.nullableAnyType"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Ls1/a/a/a/v0/m/y;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    iput-object p2, p0, Ls1/a/a/a/v0/m/v;->d:Ls1/a/a/a/v0/b/f1/h;

    return-void
.end method


# virtual methods
.method public P0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 0

    return-object p0
.end method

.method public T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/v;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/m/v;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public V0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public W0(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/i/i;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dynamic"

    return-object p1
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/v;->d:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method
