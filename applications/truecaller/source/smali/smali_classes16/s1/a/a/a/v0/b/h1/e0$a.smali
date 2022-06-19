.class public Ls1/a/a/a/v0/b/h1/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/h1/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ls1/a/a/a/v0/b/k;

.field public b:Ls1/a/a/a/v0/b/y;

.field public c:Ls1/a/a/a/v0/b/r;

.field public d:Ls1/a/a/a/v0/b/k0;

.field public e:Ls1/a/a/a/v0/b/b$a;

.field public f:Ls1/a/a/a/v0/m/b1;

.field public g:Z

.field public h:Ls1/a/a/a/v0/b/n0;

.field public i:Ls1/a/a/a/v0/f/e;

.field public j:Ls1/a/a/a/v0/m/e0;

.field public final synthetic k:Ls1/a/a/a/v0/b/h1/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e0$a;->k:Ls1/a/a/a/v0/b/h1/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->a:Ls1/a/a/a/v0/b/k;

    .line 3
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/e0;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->b:Ls1/a/a/a/v0/b/y;

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/e0;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->c:Ls1/a/a/a/v0/b/r;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    .line 6
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    .line 7
    sget-object v0, Ls1/a/a/a/v0/m/b1;->a:Ls1/a/a/a/v0/m/b1;

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->f:Ls1/a/a/a/v0/m/b1;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->g:Z

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/b/h1/e0;->s:Ls1/a/a/a/v0/b/n0;

    .line 10
    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->h:Ls1/a/a/a/v0/b/n0;

    .line 11
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/e0$a;->i:Ls1/a/a/a/v0/f/e;

    .line 12
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e0$a;->j:Ls1/a/a/a/v0/m/e0;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v17, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v18, v14, v12

    goto :goto_3

    :cond_6
    aput-object v16, v14, v12

    goto :goto_3

    :cond_7
    aput-object v19, v14, v12

    goto :goto_3

    :cond_8
    aput-object v20, v14, v12

    goto :goto_3

    :cond_9
    aput-object v21, v14, v12

    goto :goto_3

    :cond_a
    aput-object v22, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v23, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v17, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v22, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public b()Ls1/a/a/a/v0/b/k0;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v9, v0, Ls1/a/a/a/v0/b/h1/e0$a;->k:Ls1/a/a/a/v0/b/h1/e0;

    .line 2
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    const/4 v11, 0x0

    .line 3
    iget-object v2, v0, Ls1/a/a/a/v0/b/h1/e0$a;->a:Ls1/a/a/a/v0/b/k;

    .line 4
    iget-object v3, v0, Ls1/a/a/a/v0/b/h1/e0$a;->b:Ls1/a/a/a/v0/b/y;

    .line 5
    iget-object v4, v0, Ls1/a/a/a/v0/b/h1/e0$a;->c:Ls1/a/a/a/v0/b/r;

    .line 6
    iget-object v5, v0, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    .line 7
    iget-object v6, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    .line 8
    iget-object v7, v0, Ls1/a/a/a/v0/b/h1/e0$a;->i:Ls1/a/a/a/v0/f/e;

    .line 9
    sget-object v23, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    move-object v1, v9

    move-object/from16 v8, v23

    .line 10
    invoke-virtual/range {v1 .. v8}, Ls1/a/a/a/v0/b/h1/e0;->O0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/e0;

    move-result-object v1

    .line 11
    invoke-virtual {v9}, Ls1/a/a/a/v0/b/h1/e0;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v4, v0, Ls1/a/a/a/v0/b/h1/e0$a;->f:Ls1/a/a/a/v0/m/b1;

    .line 14
    invoke-static {v2, v4, v1, v3}, Ls1/a/a/a/v0/f/d;->y3(Ljava/util/List;Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/b/k;Ljava/util/List;)Ls1/a/a/a/v0/m/d1;

    move-result-object v2

    .line 15
    iget-object v4, v0, Ls1/a/a/a/v0/b/h1/e0$a;->j:Ls1/a/a/a/v0/m/e0;

    .line 16
    sget-object v5, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v2, v4, v5}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_a

    .line 17
    :cond_0
    iget-object v6, v0, Ls1/a/a/a/v0/b/h1/e0$a;->h:Ls1/a/a/a/v0/b/n0;

    if-eqz v6, :cond_1

    .line 18
    invoke-interface {v6, v2}, Ls1/a/a/a/v0/b/n0;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/n0;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_a

    :cond_1
    move-object v6, v11

    .line 19
    :cond_2
    iget-object v7, v9, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    if-eqz v7, :cond_4

    .line 20
    invoke-interface {v7}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    sget-object v8, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v2, v7, v8}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    if-nez v7, :cond_3

    goto/16 :goto_a

    .line 21
    :cond_3
    new-instance v8, Ls1/a/a/a/v0/b/h1/h0;

    new-instance v12, Ls1/a/a/a/v0/j/y/o/b;

    iget-object v13, v9, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    invoke-interface {v13}, Ls1/a/a/a/v0/b/n0;->getValue()Ls1/a/a/a/v0/j/y/o/d;

    move-result-object v13

    invoke-direct {v12, v1, v7, v13}, Ls1/a/a/a/v0/j/y/o/b;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/j/y/o/d;)V

    iget-object v7, v9, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    invoke-interface {v7}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-direct {v8, v1, v12, v7}, Ls1/a/a/a/v0/b/h1/h0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_0

    :cond_4
    move-object v8, v11

    .line 22
    :goto_0
    invoke-virtual {v1, v4, v3, v6, v8}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    .line 23
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    if-nez v3, :cond_5

    move-object v4, v11

    goto :goto_2

    :cond_5
    new-instance v4, Ls1/a/a/a/v0/b/h1/f0;

    invoke-virtual {v3}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v14

    .line 24
    iget-object v15, v0, Ls1/a/a/a/v0/b/h1/e0$a;->b:Ls1/a/a/a/v0/b/y;

    .line 25
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    invoke-virtual {v3}, Ls1/a/a/a/v0/b/h1/d0;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v3

    .line 26
    iget-object v6, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    if-ne v6, v10, :cond_6

    .line 27
    invoke-virtual {v3}, Ls1/a/a/a/v0/b/r;->d()Ls1/a/a/a/v0/b/r;

    move-result-object v6

    invoke-static {v6}, Ls1/a/a/a/v0/b/q;->e(Ls1/a/a/a/v0/b/r;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 28
    sget-object v3, Ls1/a/a/a/v0/b/q;->h:Ls1/a/a/a/v0/b/r;

    :cond_6
    move-object/from16 v16, v3

    .line 29
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 30
    iget-boolean v6, v3, Ls1/a/a/a/v0/b/h1/d0;->e:Z

    .line 31
    iget-boolean v7, v3, Ls1/a/a/a/v0/b/h1/d0;->f:Z

    .line 32
    iget-boolean v3, v3, Ls1/a/a/a/v0/b/h1/d0;->i:Z

    .line 33
    iget-object v8, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    .line 34
    iget-object v12, v0, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    if-nez v12, :cond_7

    move-object/from16 v21, v11

    goto :goto_1

    .line 35
    :cond_7
    invoke-interface {v12}, Ls1/a/a/a/v0/b/k0;->getGetter()Ls1/a/a/a/v0/b/l0;

    move-result-object v12

    move-object/from16 v21, v12

    :goto_1
    move-object v12, v4

    move-object v13, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v22, v23

    .line 36
    invoke-direct/range {v12 .. v22}, Ls1/a/a/a/v0/b/h1/f0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/l0;Ls1/a/a/a/v0/b/r0;)V

    :goto_2
    if-eqz v4, :cond_9

    .line 37
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 38
    iget-object v6, v3, Ls1/a/a/a/v0/b/h1/f0;->m:Ls1/a/a/a/v0/m/e0;

    .line 39
    invoke-static {v2, v3}, Ls1/a/a/a/v0/b/h1/e0;->P0(Ls1/a/a/a/v0/m/d1;Ls1/a/a/a/v0/b/j0;)Ls1/a/a/a/v0/b/v;

    move-result-object v3

    .line 40
    iput-object v3, v4, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    if-eqz v6, :cond_8

    .line 41
    invoke-virtual {v2, v6, v5}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v11

    :goto_3
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/b/h1/f0;->P0(Ls1/a/a/a/v0/m/e0;)V

    .line 42
    :cond_9
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    if-nez v3, :cond_a

    move-object v5, v11

    goto :goto_5

    :cond_a
    new-instance v5, Ls1/a/a/a/v0/b/h1/g0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v14

    .line 43
    iget-object v15, v0, Ls1/a/a/a/v0/b/h1/e0$a;->b:Ls1/a/a/a/v0/b/y;

    .line 44
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v3

    .line 45
    iget-object v6, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    if-ne v6, v10, :cond_b

    .line 46
    invoke-virtual {v3}, Ls1/a/a/a/v0/b/r;->d()Ls1/a/a/a/v0/b/r;

    move-result-object v6

    invoke-static {v6}, Ls1/a/a/a/v0/b/q;->e(Ls1/a/a/a/v0/b/r;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 47
    sget-object v3, Ls1/a/a/a/v0/b/q;->h:Ls1/a/a/a/v0/b/r;

    :cond_b
    move-object/from16 v16, v3

    .line 48
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/j0;->f0()Z

    move-result v17

    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/x;->L()Z

    move-result v18

    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/v;->h()Z

    move-result v19

    .line 49
    iget-object v3, v0, Ls1/a/a/a/v0/b/h1/e0$a;->e:Ls1/a/a/a/v0/b/b$a;

    .line 50
    iget-object v6, v0, Ls1/a/a/a/v0/b/h1/e0$a;->d:Ls1/a/a/a/v0/b/k0;

    if-nez v6, :cond_c

    move-object/from16 v21, v11

    goto :goto_4

    .line 51
    :cond_c
    invoke-interface {v6}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_4
    move-object v12, v5

    move-object v13, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v23

    .line 52
    invoke-direct/range {v12 .. v22}, Ls1/a/a/a/v0/b/h1/g0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/r0;)V

    :goto_5
    if-eqz v5, :cond_f

    .line 53
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v5

    move-object v14, v2

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/b/h1/r;->P0(Ls1/a/a/a/v0/b/v;Ljava/util/List;Ls1/a/a/a/v0/m/d1;ZZ[Z)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_d

    .line 54
    iput-boolean v7, v1, Ls1/a/a/a/v0/b/h1/e0;->x:Z

    .line 55
    iget-object v3, v0, Ls1/a/a/a/v0/b/h1/e0$a;->a:Ls1/a/a/a/v0/b/k;

    .line 56
    invoke-static {v3}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/a/g;->n()Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    iget-object v8, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-interface {v8}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v8}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    invoke-static {v5, v3, v8}, Ls1/a/a/a/v0/b/h1/g0;->O0(Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/h1/n0;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 57
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_e

    .line 58
    iget-object v7, v9, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    invoke-static {v2, v7}, Ls1/a/a/a/v0/b/h1/e0;->P0(Ls1/a/a/a/v0/m/d1;Ls1/a/a/a/v0/b/j0;)Ls1/a/a/a/v0/b/v;

    move-result-object v7

    .line 59
    iput-object v7, v5, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 60
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/b1;

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/b/h1/g0;->Q0(Ls1/a/a/a/v0/b/b1;)V

    goto :goto_6

    .line 61
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 62
    :cond_f
    :goto_6
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    if-nez v3, :cond_10

    move-object v6, v11

    goto :goto_7

    :cond_10
    new-instance v6, Ls1/a/a/a/v0/b/h1/q;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Ls1/a/a/a/v0/b/h1/q;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/k0;)V

    :goto_7
    iget-object v3, v9, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    new-instance v11, Ls1/a/a/a/v0/b/h1/q;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    invoke-direct {v11, v3, v1}, Ls1/a/a/a/v0/b/h1/q;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/k0;)V

    :goto_8
    invoke-virtual {v1, v4, v5, v6, v11}, Ls1/a/a/a/v0/b/h1/e0;->Q0(Ls1/a/a/a/v0/b/h1/f0;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/s;Ls1/a/a/a/v0/b/s;)V

    .line 63
    iget-boolean v3, v0, Ls1/a/a/a/v0/b/h1/e0$a;->g:Z

    if-eqz v3, :cond_13

    .line 64
    invoke-static {}, Ls1/a/a/a/v0/o/m;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v3

    .line 65
    invoke-virtual {v9}, Ls1/a/a/a/v0/b/h1/e0;->e()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/k0;

    .line 66
    invoke-interface {v5, v2}, Ls1/a/a/a/v0/b/k0;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/k0;

    move-result-object v5

    invoke-virtual {v3, v5}, Ls1/a/a/a/v0/o/m;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 67
    :cond_12
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/b/h1/e0;->V(Ljava/util/Collection;)V

    .line 68
    :cond_13
    invoke-virtual {v9}, Ls1/a/a/a/v0/b/h1/e0;->M()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v9, Ls1/a/a/a/v0/b/h1/p0;->g:Ls1/a/a/a/v0/l/j;

    if-eqz v2, :cond_14

    .line 69
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/b/h1/p0;->N0(Ls1/a/a/a/v0/l/j;)V

    :cond_14
    move-object v11, v1

    :goto_a
    return-object v11
.end method
