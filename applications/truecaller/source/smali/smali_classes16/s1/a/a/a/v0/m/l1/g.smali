.class public final Ls1/a/a/a/v0/m/l1/g;
.super Ls1/a/a/a/v0/m/l0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/c;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/n1/b;

.field public final c:Ls1/a/a/a/v0/m/l1/i;

.field public final d:Ls1/a/a/a/v0/m/i1;

.field public final e:Ls1/a/a/a/v0/b/f1/h;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/g;->b:Ls1/a/a/a/v0/m/n1/b;

    iput-object p2, p0, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    iput-object p3, p0, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    iput-object p4, p0, Ls1/a/a/a/v0/m/l1/g;->e:Ls1/a/a/a/v0/b/f1/h;

    iput-boolean p5, p0, Ls1/a/a/a/v0/m/l1/g;->f:Z

    iput-boolean p6, p0, Ls1/a/a/a/v0/m/l1/g;->g:Z

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V
    .locals 7

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    .line 1
    sget-object p4, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p4, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZ)V

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
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/l1/g;->f:Z

    return v0
.end method

.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->X0(Z)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->Z0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->X0(Z)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/g;->Z0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l1/g;

    move-result-object p1

    return-object p1
.end method

.method public X0(Z)Ls1/a/a/a/v0/m/l1/g;
    .locals 9

    .line 1
    new-instance v8, Ls1/a/a/a/v0/m/l1/g;

    iget-object v1, p0, Ls1/a/a/a/v0/m/l1/g;->b:Ls1/a/a/a/v0/m/n1/b;

    .line 2
    iget-object v2, p0, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    .line 4
    iget-object v4, p0, Ls1/a/a/a/v0/m/l1/g;->e:Ls1/a/a/a/v0/b/f1/h;

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    move v5, p1

    .line 5
    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V

    return-object v8
.end method

.method public Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/g;
    .locals 9

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Ls1/a/a/a/v0/m/l1/g;->b:Ls1/a/a/a/v0/m/n1/b;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    .line 3
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/i;->f(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/i;

    move-result-object v3

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    .line 5
    iget-object v5, p0, Ls1/a/a/a/v0/m/l1/g;->e:Ls1/a/a/a/v0/b/f1/h;

    .line 6
    iget-boolean v6, p0, Ls1/a/a/a/v0/m/l1/g;->f:Z

    const/4 v7, 0x0

    const/16 v8, 0x20

    .line 7
    new-instance p1, Ls1/a/a/a/v0/m/l1/g;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V

    return-object p1
.end method

.method public Z0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l1/g;
    .locals 9

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/g;

    iget-object v2, p0, Ls1/a/a/a/v0/m/l1/g;->b:Ls1/a/a/a/v0/m/n1/b;

    .line 2
    iget-object v3, p0, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    .line 3
    iget-object v4, p0, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    .line 4
    iget-boolean v6, p0, Ls1/a/a/a/v0/m/l1/g;->f:Z

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v1, v0

    move-object v5, p1

    .line 5
    invoke-direct/range {v1 .. v8}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/g;->e:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 2

    const-string v0, "No member resolution should be done on captured type!"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/x;->c(Ljava/lang/String;Z)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v1, "ErrorUtils.createErrorSc\u2026on captured type!\", true)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
