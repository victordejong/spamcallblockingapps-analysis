.class public Ls1/a/a/a/v0/d/a/c0/g;
.super Ls1/a/a/a/v0/b/h1/e0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/c0/b;


# instance fields
.field public final A:Z

.field public final B:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ls1/a/a/a/v0/b/a$a<",
            "*>;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;ZLs1/k;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k;",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/b/y;",
            "Ls1/a/a/a/v0/b/r;",
            "Z",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/r0;",
            "Ls1/a/a/a/v0/b/k0;",
            "Ls1/a/a/a/v0/b/b$a;",
            "Z",
            "Ls1/k<",
            "Ls1/a/a/a/v0/b/a$a<",
            "*>;*>;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p9, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    move/from16 v15, v16

    .line 1
    invoke-direct/range {v0 .. v15}, Ls1/a/a/a/v0/b/h1/e0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;ZZZZZZ)V

    move-object/from16 v1, p0

    move/from16 v0, p10

    .line 2
    iput-boolean v0, v1, Ls1/a/a/a/v0/d/a/c0/g;->A:Z

    move-object/from16 v0, p11

    .line 3
    iput-object v0, v1, Ls1/a/a/a/v0/d/a/c0/g;->B:Ls1/k;

    return-void

    :cond_0
    move-object v1, v15

    const/4 v2, 0x6

    .line 4
    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_1
    move-object v1, v15

    const/4 v2, 0x5

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_2
    move-object v1, v15

    const/4 v2, 0x4

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_3
    move-object v1, v15

    const/4 v2, 0x3

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_4
    move-object v1, v15

    const/4 v2, 0x2

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_5
    move-object v1, v15

    const/4 v2, 0x1

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_6
    move-object v1, v15

    const/4 v2, 0x0

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0
.end method

.method public static S0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)Ls1/a/a/a/v0/d/a/c0/g;
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/c0/g;

    const/4 v9, 0x0

    sget-object v10, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Ls1/a/a/a/v0/d/a/c0/g;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;ZLs1/k;)V

    return-object v0

    :cond_0
    const/16 v1, 0xc

    .line 2
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_1
    const/16 v1, 0xb

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_2
    const/16 v1, 0x9

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0

    :cond_3
    const/4 v1, 0x7

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 7

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "containingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "enhancedReturnType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "enhancedValueParametersData"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "newName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "newVisibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "newModality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "newOwner"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "kind"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_9
    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_a
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_b
    const-string v6, "visibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_c
    const-string v6, "modality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_d
    const-string v6, "annotations"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "enhance"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_e
    aput-object v5, v3, v2

    goto :goto_4

    :pswitch_f
    const-string v4, "createSubstitutedCopy"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_10
    const-string v4, "create"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_11
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public M()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ls1/a/a/a/v0/d/a/c0/g;->A:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v1, "type"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$canBeUsedForConstVal"

    .line 4
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->H(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ls1/a/a/a/v0/a/n;->a(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    :cond_1
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->J(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    .line 7
    sget-object v4, Ls1/a/a/a/v0/d/a/g0/x;->a:Ls1/a/a/a/v0/d/a/g0/b;

    const-string v4, "$this$hasEnhancedNullability"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Ls1/a/a/a/v0/d/a/v;->j:Ls1/a/a/a/v0/f/b;

    const-string v4, "JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$hasAnnotation"

    .line 10
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fqName"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->F1(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->J(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method public O0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/e0;
    .locals 14

    move-object v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    new-instance v1, Ls1/a/a/a/v0/d/a/c0/g;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    .line 2
    iget-boolean v7, v0, Ls1/a/a/a/v0/b/h1/p0;->f:Z

    .line 3
    iget-boolean v12, v0, Ls1/a/a/a/v0/d/a/c0/g;->A:Z

    iget-object v13, v0, Ls1/a/a/a/v0/d/a/c0/g;->B:Ls1/k;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v2 .. v13}, Ls1/a/a/a/v0/d/a/c0/g;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;ZLs1/k;)V

    return-object v1

    :cond_0
    const/16 v2, 0x11

    .line 4
    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v1

    :cond_1
    const/16 v2, 0x10

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v1

    :cond_2
    const/16 v2, 0xf

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v1

    :cond_3
    const/16 v2, 0xe

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v1

    :cond_4
    const/16 v2, 0xd

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    throw v1
.end method

.method public q0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/k;)Ls1/a/a/a/v0/d/a/c0/b;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/c0/k;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/k<",
            "Ls1/a/a/a/v0/b/a$a<",
            "*>;*>;)",
            "Ls1/a/a/a/v0/d/a/c0/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_7

    .line 1
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v4

    if-ne v4, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v4

    .line 2
    :goto_0
    new-instance v15, Ls1/a/a/a/v0/d/a/c0/g;

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v9

    .line 3
    iget-boolean v10, v0, Ls1/a/a/a/v0/b/h1/p0;->f:Z

    .line 4
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v14

    iget-boolean v13, v0, Ls1/a/a/a/v0/d/a/c0/g;->A:Z

    move-object v5, v15

    move/from16 v16, v13

    move-object v13, v4

    move-object/from16 p2, v15

    move/from16 v15, v16

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v16}, Ls1/a/a/a/v0/d/a/c0/g;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;ZLs1/k;)V

    .line 5
    iget-object v15, v0, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    if-eqz v15, :cond_2

    .line 6
    new-instance v14, Ls1/a/a/a/v0/b/h1/f0;

    invoke-virtual {v15}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/d0;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v8

    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/d0;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v9

    .line 7
    iget-boolean v10, v15, Ls1/a/a/a/v0/b/h1/d0;->e:Z

    .line 8
    iget-boolean v11, v15, Ls1/a/a/a/v0/b/h1/d0;->f:Z

    .line 9
    iget-boolean v12, v15, Ls1/a/a/a/v0/b/h1/d0;->i:Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v13

    if-nez v4, :cond_1

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ls1/a/a/a/v0/b/k0;->getGetter()Ls1/a/a/a/v0/b/l0;

    move-result-object v5

    move-object/from16 v16, v5

    :goto_1
    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v17

    move-object v5, v14

    move-object/from16 v6, p2

    move-object v3, v14

    move-object/from16 v14, v16

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v5 .. v15}, Ls1/a/a/a/v0/b/h1/f0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/l0;Ls1/a/a/a/v0/b/r0;)V

    .line 11
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 12
    iput-object v1, v3, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 13
    iput-object v2, v3, Ls1/a/a/a/v0/b/h1/f0;->m:Ls1/a/a/a/v0/m/e0;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 14
    :goto_2
    iget-object v1, v0, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    if-eqz v1, :cond_4

    .line 15
    new-instance v15, Ls1/a/a/a/v0/b/h1/g0;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-interface {v1}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v8

    invoke-interface {v1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v9

    invoke-interface {v1}, Ls1/a/a/a/v0/b/j0;->f0()Z

    move-result v10

    invoke-interface {v1}, Ls1/a/a/a/v0/b/x;->L()Z

    move-result v11

    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->h()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v13

    if-nez v4, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v4

    move-object v14, v4

    :goto_3
    invoke-interface {v1}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v4

    move-object v5, v15

    move-object/from16 v6, p2

    move-object v2, v15

    move-object v15, v4

    invoke-direct/range {v5 .. v15}, Ls1/a/a/a/v0/b/h1/g0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/r0;)V

    .line 16
    iget-object v4, v2, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 17
    iput-object v4, v2, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 18
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/b1;

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/b/h1/g0;->Q0(Ls1/a/a/a/v0/b/b1;)V

    move-object v15, v2

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 19
    :goto_4
    iget-object v1, v0, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    .line 20
    iget-object v2, v0, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    move-object/from16 v4, p2

    .line 21
    invoke-virtual {v4, v3, v15, v1, v2}, Ls1/a/a/a/v0/b/h1/e0;->Q0(Ls1/a/a/a/v0/b/h1/f0;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/s;Ls1/a/a/a/v0/b/s;)V

    .line 22
    iget-boolean v1, v0, Ls1/a/a/a/v0/b/h1/e0;->x:Z

    .line 23
    iput-boolean v1, v4, Ls1/a/a/a/v0/b/h1/e0;->x:Z

    .line 24
    iget-object v1, v0, Ls1/a/a/a/v0/b/h1/p0;->g:Ls1/a/a/a/v0/l/j;

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v4, v1}, Ls1/a/a/a/v0/b/h1/p0;->N0(Ls1/a/a/a/v0/l/j;)V

    .line 26
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v4, v1}, Ls1/a/a/a/v0/b/h1/e0;->V(Ljava/util/Collection;)V

    move-object/from16 v1, p1

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    .line 27
    :cond_6
    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 30
    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v3

    .line 31
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 32
    iget-object v2, v0, Ls1/a/a/a/v0/b/h1/e0;->s:Ls1/a/a/a/v0/b/n0;

    move-object/from16 v5, p3

    .line 33
    invoke-virtual {v4, v5, v1, v2, v3}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    return-object v4

    :cond_7
    const/16 v1, 0x14

    .line 34
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/g;->X(I)V

    const/4 v1, 0x0

    throw v1
.end method

.method public u0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
