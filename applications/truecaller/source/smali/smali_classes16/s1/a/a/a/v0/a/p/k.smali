.class public final Ls1/a/a/a/v0/a/p/k;
.super Ls1/a/a/a/v0/k/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;)V
    .locals 25

    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    const-string v0, "storageManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializationConfiguration"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p3}, Ls1/a/a/a/v0/k/b/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/k/b/s;Ls1/a/a/a/v0/b/a0;)V

    .line 2
    new-instance v9, Ls1/a/a/a/v0/k/b/j;

    move-object v0, v9

    .line 3
    new-instance v5, Ls1/a/a/a/v0/k/b/m;

    move-object v4, v5

    invoke-direct {v5, v13}, Ls1/a/a/a/v0/k/b/m;-><init>(Ls1/a/a/a/v0/b/d0;)V

    .line 4
    new-instance v8, Ls1/a/a/a/v0/k/b/d;

    move-object v5, v8

    move-object/from16 p2, v0

    sget-object v0, Ls1/a/a/a/v0/k/b/f0/a;->m:Ls1/a/a/a/v0/k/b/f0/a;

    invoke-direct {v8, v10, v7, v0}, Ls1/a/a/a/v0/k/b/d;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/a;)V

    .line 5
    sget-object v7, Ls1/a/a/a/v0/k/b/t$a;->a:Ls1/a/a/a/v0/k/b/t$a;

    .line 6
    sget-object v8, Ls1/a/a/a/v0/k/b/p;->a:Ls1/a/a/a/v0/k/b/p;

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    const-string v9, "ErrorReporter.DO_NOTHING"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v9, Ls1/a/a/a/v0/c/a/c$a;->a:Ls1/a/a/a/v0/c/a/c$a;

    move-object/from16 v10, p5

    .line 8
    sget-object v16, Ls1/a/a/a/v0/k/b/q$a;->a:Ls1/a/a/a/v0/k/b/q$a;

    move-object/from16 v13, p3

    move-object/from16 v21, v10

    move-object/from16 v10, v16

    move-object/from16 v22, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/a/a/v0/b/g1/b;

    move-object/from16 v23, v2

    .line 9
    new-instance v2, Ls1/a/a/a/v0/a/o/a;

    invoke-direct {v2, v11, v13}, Ls1/a/a/a/v0/a/o/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V

    const/16 v16, 0x0

    aput-object v2, v1, v16

    .line 10
    new-instance v2, Ls1/a/a/a/v0/a/p/f;

    move-object/from16 v24, v3

    const/4 v3, 0x0

    move-object/from16 p5, v4

    const/4 v4, 0x4

    invoke-direct {v2, v11, v13, v3, v4}, Ls1/a/a/a/v0/a/p/f;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/z/b/l;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 11
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 12
    sget-object v1, Ls1/a/a/a/v0/k/b/i;->a:Ls1/a/a/a/v0/k/b/i$a;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v13, Ls1/a/a/a/v0/k/b/i$a;->a:Ls1/a/a/a/v0/k/b/i;

    move-object/from16 v1, p0

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->a:Ls1/a/a/a/v0/h/f;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    const/high16 v20, 0x40000

    move-object/from16 v0, p2

    move-object/from16 v4, p5

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    .line 16
    invoke-direct/range {v0 .. v20}, Ls1/a/a/a/v0/k/b/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/k/b/g;Ls1/a/a/a/v0/k/b/c;Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/k/b/t;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/k/b/q;Ljava/lang/Iterable;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/b/i;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/b/g1/e;I)V

    const-string v0, "<set-?>"

    move-object/from16 v1, v21

    .line 17
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 18
    iput-object v1, v0, Ls1/a/a/a/v0/k/b/a;->a:Ls1/a/a/a/v0/k/b/j;

    return-void
.end method
