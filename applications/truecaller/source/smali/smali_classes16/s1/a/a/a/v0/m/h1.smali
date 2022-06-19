.class public final Ls1/a/a/a/v0/m/h1;
.super Ls1/a/a/a/v0/m/w;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/a/a/a/v0/m/v0;",
            "Ls1/a/a/a/v0/j/y/i;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "presentableName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/m/w;-><init>(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;ZLjava/lang/String;I)V

    iput-object p1, p0, Ls1/a/a/a/v0/m/h1;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/h1;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 7

    .line 1
    new-instance v6, Ls1/a/a/a/v0/m/h1;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/h1;->g:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/m/w;->b:Ls1/a/a/a/v0/m/v0;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/m/w;->c:Ls1/a/a/a/v0/j/y/i;

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    move-object v0, v6

    move v5, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/m/h1;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;Z)V

    return-object v6
.end method

.method public X0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/h1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/w;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
