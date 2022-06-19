.class public final Ls1/a/a/a/v0/k/b/g0/j;
.super Ls1/a/a/a/v0/b/h1/e0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/b;


# instance fields
.field public final A:Ls1/a/a/a/v0/e/n;

.field public final B:Ls1/a/a/a/v0/e/z/c;

.field public final C:Ls1/a/a/a/v0/e/z/e;

.field public final D:Ls1/a/a/a/v0/e/z/g;

.field public final E:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;ZZZZZLs1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v9, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    .line 2
    invoke-direct/range {v0 .. v15}, Ls1/a/a/a/v0/b/h1/e0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;ZZZZZZ)V

    move-object/from16 v1, p14

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    move-object/from16 v1, p15

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->B:Ls1/a/a/a/v0/e/z/c;

    move-object/from16 v1, p16

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->C:Ls1/a/a/a/v0/e/z/e;

    move-object/from16 v1, p17

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->D:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v1, p18

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->E:Ls1/a/a/a/v0/k/b/g0/f;

    return-void
.end method


# virtual methods
.method public A()Ls1/a/a/a/v0/e/z/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/j;->C:Ls1/a/a/a/v0/e/z/e;

    return-object v0
.end method

.method public L()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->C:Ls1/a/a/a/v0/e/z/b$b;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    .line 3
    iget v1, v1, Ls1/a/a/a/v0/e/n;->d:I

    const-string v2, "Flags.IS_EXTERNAL_PROPERTY.get(proto.flags)"

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

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

.method public O()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    return-object v0
.end method

.method public O0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/e0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move-object/from16 v9, p5

    move-object/from16 v8, p6

    const-string v1, "newOwner"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v4, p7

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v20, Ls1/a/a/a/v0/k/b/g0/j;

    move-object/from16 v1, v20

    .line 2
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    .line 3
    iget-boolean v7, v0, Ls1/a/a/a/v0/b/h1/p0;->f:Z

    .line 4
    iget-boolean v10, v0, Ls1/a/a/a/v0/b/h1/e0;->m:Z

    .line 5
    iget-boolean v11, v0, Ls1/a/a/a/v0/b/h1/e0;->n:Z

    .line 6
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/j;->L()Z

    move-result v12

    .line 7
    iget-boolean v13, v0, Ls1/a/a/a/v0/b/h1/e0;->r:Z

    .line 8
    iget-boolean v14, v0, Ls1/a/a/a/v0/b/h1/e0;->o:Z

    .line 9
    iget-object v15, v0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    move-object/from16 p1, v1

    .line 10
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->B:Ls1/a/a/a/v0/e/z/c;

    move-object/from16 v16, v1

    .line 11
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->C:Ls1/a/a/a/v0/e/z/e;

    move-object/from16 v17, v1

    .line 12
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->D:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v18, v1

    .line 13
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/j;->E:Ls1/a/a/a/v0/k/b/g0/f;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 14
    invoke-direct/range {v1 .. v19}, Ls1/a/a/a/v0/k/b/g0/j;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;ZZZZZLs1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V

    return-object v20
.end method

.method public h0()Ls1/a/a/a/v0/e/z/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/j;->D:Ls1/a/a/a/v0/e/z/g;

    return-object v0
.end method

.method public i0()Ls1/a/a/a/v0/e/z/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/j;->B:Ls1/a/a/a/v0/e/z/c;

    return-object v0
.end method

.method public j0()Ls1/a/a/a/v0/k/b/g0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/j;->E:Ls1/a/a/a/v0/k/b/g0/f;

    return-object v0
.end method
