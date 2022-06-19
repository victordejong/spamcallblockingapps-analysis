.class public Ls1/a/a/a/v0/b/h1/m0;
.super Ls1/a/a/a/v0/b/h1/g;
.source "SourceFile"


# instance fields
.field public final k:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/b/r0;Ls1/z/b/l;Ls1/a/a/a/v0/b/u0;Ls1/a/a/a/v0/l/m;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k;",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Z",
            "Ls1/a/a/a/v0/m/j1;",
            "Ls1/a/a/a/v0/f/e;",
            "I",
            "Ls1/a/a/a/v0/b/r0;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/lang/Void;",
            ">;",
            "Ls1/a/a/a/v0/b/u0;",
            "Ls1/a/a/a/v0/l/m;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    if-eqz p7, :cond_2

    if-eqz p9, :cond_1

    if-eqz p10, :cond_0

    move-object v0, p0

    move-object/from16 v1, p10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p4

    move v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v9}, Ls1/a/a/a/v0/b/h1/g;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/j1;ZILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/u0;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Ls1/a/a/a/v0/b/h1/m0;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v10, Ls1/a/a/a/v0/b/h1/m0;->m:Z

    move-object/from16 v0, p8

    .line 4
    iput-object v0, v10, Ls1/a/a/a/v0/b/h1/m0;->k:Ls1/z/b/l;

    return-void

    :cond_0
    const/16 v1, 0x19

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_1
    const/16 v1, 0x18

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_2
    const/16 v1, 0x17

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_3
    const/16 v1, 0x16

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_4
    const/16 v1, 0x15

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_5
    const/16 v1, 0x14

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_6
    const/16 v1, 0x13

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0
.end method

.method public static Q0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/l/m;)Ls1/a/a/a/v0/b/h1/m0;
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p7, :cond_0

    const/4 v9, 0x0

    .line 1
    sget-object v10, Ls1/a/a/a/v0/b/u0$a;->a:Ls1/a/a/a/v0/b/u0$a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/b/h1/m0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Ls1/a/a/a/v0/b/h1/m0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/b/r0;Ls1/z/b/l;Ls1/a/a/a/v0/b/u0;Ls1/a/a/a/v0/l/m;)V

    return-object v0

    :cond_0
    const/16 v1, 0xb

    .line 3
    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_1
    const/16 v1, 0x9

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_2
    const/16 v1, 0x8

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_3
    const/4 v1, 0x7

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_4
    const/4 v1, 0x6

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0
.end method

.method public static R0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/l/m;)Ls1/a/a/a/v0/b/w0;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    if-eqz p6, :cond_0

    .line 1
    sget-object v7, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Ls1/a/a/a/v0/b/h1/m0;->Q0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/l/m;)Ls1/a/a/a/v0/b/h1/m0;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/a/g;->l()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/b/h1/m0;->O0(Ls1/a/a/a/v0/m/e0;)V

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/m0;->P0()V

    .line 4
    iput-boolean v9, v0, Ls1/a/a/a/v0/b/h1/m0;->m:Z

    return-object v0

    :cond_0
    const/4 v1, 0x4

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_1
    invoke-static {v9}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 8

    const/16 v0, 0x1c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "type"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "bound"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "supertypeLoopsChecker"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "supertypeLoopsResolver"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "storageManager"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_9
    const-string v7, "variance"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_a
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "createWithDefaultBound"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v7

    goto :goto_3

    :cond_2
    const-string v5, "resolveUpperBounds"

    aput-object v5, v4, v7

    goto :goto_3

    :cond_3
    aput-object v6, v4, v7

    :goto_3
    packed-switch p0, :pswitch_data_1

    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_b
    const-string v5, "reportSupertypeLoopError"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "addUpperBound"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_d
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_e
    const-string v5, "createForFurtherModification"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_f
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/m0;->m:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/m0;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1c

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameter descriptor is not initialized: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m0;->S0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0(Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m0;->P0()V

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/m0;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    const/16 p1, 0x1a

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final P0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/m0;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameter descriptor is already initialized: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m0;->S0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/m0;->k:Ls1/z/b/l;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/16 p1, 0x1b

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/m0;->X(I)V

    const/4 p1, 0x0

    throw p1
.end method
