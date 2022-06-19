.class public Ls1/a/a/a/v0/b/h1/e0;
.super Ls1/a/a/a/v0/b/h1/p0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/h1/e0$a;
    }
.end annotation


# instance fields
.field public final h:Ls1/a/a/a/v0/b/y;

.field public i:Ls1/a/a/a/v0/b/r;

.field public j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ls1/a/a/a/v0/b/k0;

.field public final l:Ls1/a/a/a/v0/b/b$a;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public s:Ls1/a/a/a/v0/b/n0;

.field public t:Ls1/a/a/a/v0/b/n0;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ls1/a/a/a/v0/b/h1/f0;

.field public w:Ls1/a/a/a/v0/b/m0;

.field public x:Z

.field public y:Ls1/a/a/a/v0/b/s;

.field public z:Ls1/a/a/a/v0/b/s;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;ZZZZZZ)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    const/4 v11, 0x0

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    if-eqz p7, :cond_3

    if-eqz v10, :cond_2

    if-eqz p9, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move/from16 v5, p6

    move-object/from16 v6, p9

    .line 1
    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/b/h1/p0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZLs1/a/a/a/v0/b/r0;)V

    .line 2
    iput-object v11, v7, Ls1/a/a/a/v0/b/h1/e0;->j:Ljava/util/Collection;

    .line 3
    iput-object v8, v7, Ls1/a/a/a/v0/b/h1/e0;->h:Ls1/a/a/a/v0/b/y;

    .line 4
    iput-object v9, v7, Ls1/a/a/a/v0/b/h1/e0;->i:Ls1/a/a/a/v0/b/r;

    if-nez p2, :cond_0

    move-object v0, v7

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 5
    :goto_0
    iput-object v0, v7, Ls1/a/a/a/v0/b/h1/e0;->k:Ls1/a/a/a/v0/b/k0;

    .line 6
    iput-object v10, v7, Ls1/a/a/a/v0/b/h1/e0;->l:Ls1/a/a/a/v0/b/b$a;

    move/from16 v0, p10

    .line 7
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->m:Z

    move/from16 v0, p11

    .line 8
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->n:Z

    move/from16 v0, p12

    .line 9
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->o:Z

    move/from16 v0, p13

    .line 10
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->p:Z

    move/from16 v0, p14

    .line 11
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->q:Z

    move/from16 v0, p15

    .line 12
    iput-boolean v0, v7, Ls1/a/a/a/v0/b/h1/e0;->r:Z

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 13
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_4
    const/4 v0, 0x3

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v11
.end method

.method public static P0(Ls1/a/a/a/v0/m/d1;Ls1/a/a/a/v0/b/j0;)Ls1/a/a/a/v0/b/v;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->F0()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->F0()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    invoke-interface {p1, p0}, Ls1/a/a/a/v0/b/v;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/v;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/16 p0, 0x1a

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 11

    const/16 v0, 0x25

    const/16 v1, 0x24

    const/16 v2, 0x22

    const/16 v3, 0x21

    const/16 v4, 0x17

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v7, v6

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_3
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_4
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_a
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_b
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_c
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_d
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_e
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_f
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_10
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_11
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_12
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_13
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_14
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const/4 v9, 0x1

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_15
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_16
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_17
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_18
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_19
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_2
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_3
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_4
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_5
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_6
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1a
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1b
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1c
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1d
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1e
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1f
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_20
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_21
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_22
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_23
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1e
        :pswitch_22
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_22
        :pswitch_22
        :pswitch_1a
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public B()Ls1/a/a/a/v0/b/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    return-object v0
.end method

.method public E()Ls1/a/a/a/v0/b/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    return-object v0
.end method

.method public I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->m:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->q:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->n:Z

    return v0
.end method

.method public O0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/e0;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    new-instance v1, Ls1/a/a/a/v0/b/h1/e0;

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 2
    iget-boolean v8, v0, Ls1/a/a/a/v0/b/h1/p0;->f:Z

    .line 3
    iget-boolean v12, v0, Ls1/a/a/a/v0/b/h1/e0;->m:Z

    .line 4
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->M()Z

    move-result v13

    .line 5
    iget-boolean v14, v0, Ls1/a/a/a/v0/b/h1/e0;->o:Z

    .line 6
    iget-boolean v15, v0, Ls1/a/a/a/v0/b/h1/e0;->p:Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/e0;->L()Z

    move-result v16

    .line 8
    iget-boolean v11, v0, Ls1/a/a/a/v0/b/h1/e0;->r:Z

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v17, v11

    move-object/from16 v11, p7

    .line 9
    invoke-direct/range {v2 .. v17}, Ls1/a/a/a/v0/b/h1/e0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;ZZZZZZ)V

    return-object v1

    :cond_0
    const/16 v2, 0x1f

    .line 10
    invoke-static {v2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v1

    :cond_1
    const/16 v2, 0x1e

    invoke-static {v2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v1

    :cond_2
    const/16 v2, 0x1d

    invoke-static {v2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v1

    :cond_3
    const/16 v2, 0x1c

    invoke-static {v2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v1

    :cond_4
    const/16 v2, 0x1b

    invoke-static {v2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v1
.end method

.method public Q0(Ls1/a/a/a/v0/b/h1/f0;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/s;Ls1/a/a/a/v0/b/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 2
    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    .line 3
    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    .line 4
    iput-object p4, p0, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    return-void
.end method

.method public R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/b/n0;",
            "Ls1/a/a/a/v0/b/n0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/o0;->e:Ls1/a/a/a/v0/m/e0;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e0;->u:Ljava/util/List;

    .line 3
    iput-object p4, p0, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    .line 4
    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/e0;->s:Ls1/a/a/a/v0/b/n0;

    return-void

    :cond_0
    const/16 p1, 0xf

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v0

    :cond_1
    const/16 p1, 0xe

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v0
.end method

.method public S()Ls1/a/a/a/v0/b/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    return-object v0
.end method

.method public V(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e0;->j:Ljava/util/Collection;

    return-void

    :cond_0
    const/16 p1, 0x23

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public a()Ls1/a/a/a/v0/b/k0;
    .locals 1

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->k:Ls1/a/a/a/v0/b/k0;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x21

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/k0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Ls1/a/a/a/v0/b/h1/e0$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/b/h1/e0$a;-><init>(Ls1/a/a/a/v0/b/h1/e0;)V

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, v1, Ls1/a/a/a/v0/b/h1/e0$a;->f:Ls1/a/a/a/v0/m/b1;

    .line 6
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    .line 7
    iput-object p1, v1, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    .line 8
    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/e0$a;->b()Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0xf

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/e0$a;->a(I)V

    throw v0

    :cond_2
    const/16 p1, 0x16

    .line 10
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v0
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/e0;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->c(Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->j:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x24

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->r:Z

    return v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->i:Ls1/a/a/a/v0/b/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getGetter()Ls1/a/a/a/v0/b/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    return-object v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->l:Ls1/a/a/a/v0/b/b$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x22

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "typeParameters == null for "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/m;->b0(Ls1/a/a/a/v0/b/k;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->s:Ls1/a/a/a/v0/b/n0;

    return-object v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->h:Ls1/a/a/a/v0/b/y;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/b;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/h1/e0$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/b/h1/e0$a;-><init>(Ls1/a/a/a/v0/b/h1/e0;)V

    .line 2
    iput-object p1, v0, Ls1/a/a/a/v0/b/h1/e0$a;->a:Ls1/a/a/a/v0/b/k;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    if-eqz p2, :cond_2

    .line 4
    iput-object p2, v0, Ls1/a/a/a/v0/b/h1/e0$a;->b:Ls1/a/a/a/v0/b/y;

    if-eqz p3, :cond_1

    .line 5
    iput-object p3, v0, Ls1/a/a/a/v0/b/h1/e0$a;->c:Ls1/a/a/a/v0/b/r;

    .line 6
    iput-object p4, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    .line 7
    iput-boolean p5, v0, Ls1/a/a/a/v0/b/h1/e0$a;->g:Z

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/e0$a;->b()Ls1/a/a/a/v0/b/k0;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const/16 p2, 0x25

    invoke-static {p2}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw p1

    :cond_1
    const/16 p2, 0x8

    .line 9
    invoke-static {p2}, Ls1/a/a/a/v0/b/h1/e0$a;->a(I)V

    throw p1

    :cond_2
    const/4 p2, 0x6

    .line 10
    invoke-static {p2}, Ls1/a/a/a/v0/b/h1/e0$a;->a(I)V

    throw p1
.end method

.method public n0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->p:Z

    return v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/j0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public bridge synthetic v0()Ls1/a/a/a/v0/b/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w0()Ls1/a/a/a/v0/b/c1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/e0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public x0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0;->o:Z

    return v0
.end method
