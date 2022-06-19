.class public final Ls1/a/a/a/v0/k/b/g0/c;
.super Ls1/a/a/a/v0/b/h1/i;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/b;


# instance fields
.field public J:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public final K:Ls1/a/a/a/v0/e/d;

.field public final L:Ls1/a/a/a/v0/e/z/c;

.field public final M:Ls1/a/a/a/v0/e/z/e;

.field public final N:Ls1/a/a/a/v0/e/z/g;

.field public final O:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V
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

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/b/h1/i;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    iput-object v8, v7, Ls1/a/a/a/v0/k/b/g0/c;->K:Ls1/a/a/a/v0/e/d;

    iput-object v9, v7, Ls1/a/a/a/v0/k/b/g0/c;->L:Ls1/a/a/a/v0/e/z/c;

    iput-object v10, v7, Ls1/a/a/a/v0/k/b/g0/c;->M:Ls1/a/a/a/v0/e/z/e;

    iput-object v11, v7, Ls1/a/a/a/v0/k/b/g0/c;->N:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v0, p10

    iput-object v0, v7, Ls1/a/a/a/v0/k/b/g0/c;->O:Ls1/a/a/a/v0/k/b/g0/f;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    iput-object v0, v7, Ls1/a/a/a/v0/k/b/g0/c;->J:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-void
.end method


# virtual methods
.method public A()Ls1/a/a/a/v0/e/z/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/c;->M:Ls1/a/a/a/v0/e/z/e;

    return-object v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public bridge synthetic N0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/r;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/k/b/g0/c;->a1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/k/b/g0/c;

    move-result-object p1

    return-object p1
.end method

.method public O()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/c;->K:Ls1/a/a/a/v0/e/d;

    return-object v0
.end method

.method public bridge synthetic W0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/i;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/k/b/g0/c;->a1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/k/b/g0/c;

    move-result-object p1

    return-object p1
.end method

.method public a1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/k/b/g0/c;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ls1/a/a/a/v0/k/b/g0/c;

    .line 2
    move-object v4, v1

    check-cast v4, Ls1/a/a/a/v0/b/e;

    move-object/from16 v5, p2

    check-cast v5, Ls1/a/a/a/v0/b/j;

    iget-boolean v7, v0, Ls1/a/a/a/v0/b/h1/i;->D:Z

    .line 3
    iget-object v9, v0, Ls1/a/a/a/v0/k/b/g0/c;->K:Ls1/a/a/a/v0/e/d;

    .line 4
    iget-object v10, v0, Ls1/a/a/a/v0/k/b/g0/c;->L:Ls1/a/a/a/v0/e/z/c;

    .line 5
    iget-object v11, v0, Ls1/a/a/a/v0/k/b/g0/c;->M:Ls1/a/a/a/v0/e/z/e;

    .line 6
    iget-object v12, v0, Ls1/a/a/a/v0/k/b/g0/c;->N:Ls1/a/a/a/v0/e/z/g;

    .line 7
    iget-object v13, v0, Ls1/a/a/a/v0/k/b/g0/c;->O:Ls1/a/a/a/v0/k/b/g0/f;

    move-object v3, v2

    .line 8
    invoke-direct/range {v3 .. v14}, Ls1/a/a/a/v0/k/b/g0/c;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V

    .line 9
    iget-boolean v1, v0, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 10
    iput-boolean v1, v2, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 11
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/c;->J:Ls1/a/a/a/v0/k/b/g0/g$a;

    const-string v3, "<set-?>"

    .line 12
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object v1, v2, Ls1/a/a/a/v0/k/b/g0/c;->J:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-object v2
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h0()Ls1/a/a/a/v0/e/z/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/c;->N:Ls1/a/a/a/v0/e/z/g;

    return-object v0
.end method

.method public i0()Ls1/a/a/a/v0/e/z/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/c;->L:Ls1/a/a/a/v0/e/z/c;

    return-object v0
.end method

.method public j0()Ls1/a/a/a/v0/k/b/g0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/c;->O:Ls1/a/a/a/v0/k/b/g0/f;

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
