.class public final Ls1/a/a/a/v0/k/b/g0/k;
.super Ls1/a/a/a/v0/b/h1/i0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/b;


# instance fields
.field public D:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public final E:Ls1/a/a/a/v0/e/i;

.field public final J:Ls1/a/a/a/v0/e/z/c;

.field public final K:Ls1/a/a/a/v0/e/z/e;

.field public final L:Ls1/a/a/a/v0/e/z/g;

.field public final M:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p11, :cond_0

    move-object/from16 v6, p11

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    move-object v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/b/h1/i0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    iput-object v8, v7, Ls1/a/a/a/v0/k/b/g0/k;->E:Ls1/a/a/a/v0/e/i;

    iput-object v9, v7, Ls1/a/a/a/v0/k/b/g0/k;->J:Ls1/a/a/a/v0/e/z/c;

    iput-object v10, v7, Ls1/a/a/a/v0/k/b/g0/k;->K:Ls1/a/a/a/v0/e/z/e;

    iput-object v11, v7, Ls1/a/a/a/v0/k/b/g0/k;->L:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v0, p10

    iput-object v0, v7, Ls1/a/a/a/v0/k/b/g0/k;->M:Ls1/a/a/a/v0/k/b/g0/f;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    iput-object v0, v7, Ls1/a/a/a/v0/k/b/g0/k;->D:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-void
.end method


# virtual methods
.method public A()Ls1/a/a/a/v0/e/z/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/k;->K:Ls1/a/a/a/v0/e/z/e;

    return-object v0
.end method

.method public M0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/z/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->D1(Ls1/a/a/a/v0/k/b/g0/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public N0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/r;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v13, p6

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/k;

    .line 2
    move-object/from16 v4, p2

    check-cast v4, Ls1/a/a/a/v0/b/q0;

    if-eqz p4, :cond_0

    move-object/from16 v6, p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    .line 3
    :goto_0
    iget-object v8, v0, Ls1/a/a/a/v0/k/b/g0/k;->E:Ls1/a/a/a/v0/e/i;

    .line 4
    iget-object v9, v0, Ls1/a/a/a/v0/k/b/g0/k;->J:Ls1/a/a/a/v0/e/z/c;

    .line 5
    iget-object v10, v0, Ls1/a/a/a/v0/k/b/g0/k;->K:Ls1/a/a/a/v0/e/z/e;

    .line 6
    iget-object v11, v0, Ls1/a/a/a/v0/k/b/g0/k;->L:Ls1/a/a/a/v0/e/z/g;

    .line 7
    iget-object v12, v0, Ls1/a/a/a/v0/k/b/g0/k;->M:Ls1/a/a/a/v0/k/b/g0/f;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v13, p6

    .line 8
    invoke-direct/range {v2 .. v13}, Ls1/a/a/a/v0/k/b/g0/k;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V

    .line 9
    iget-boolean v2, v0, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 10
    iput-boolean v2, v1, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 11
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/k;->D:Ls1/a/a/a/v0/k/b/g0/g$a;

    .line 12
    iput-object v2, v1, Ls1/a/a/a/v0/k/b/g0/k;->D:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-object v1
.end method

.method public O()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/k;->E:Ls1/a/a/a/v0/e/i;

    return-object v0
.end method

.method public h0()Ls1/a/a/a/v0/e/z/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/k;->L:Ls1/a/a/a/v0/e/z/g;

    return-object v0
.end method

.method public i0()Ls1/a/a/a/v0/e/z/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/k;->J:Ls1/a/a/a/v0/e/z/c;

    return-object v0
.end method

.method public j0()Ls1/a/a/a/v0/k/b/g0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/k;->M:Ls1/a/a/a/v0/k/b/g0/f;

    return-object v0
.end method
