.class public abstract Ls1/a/a/a/v0/b/h1/b;
.super Ls1/a/a/a/v0/b/h1/v;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/f/e;

.field public final b:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/m/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/b/n0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/f/e;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/h1/v;-><init>()V

    .line 2
    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/b;->a:Ls1/a/a/a/v0/f/e;

    .line 3
    new-instance p2, Ls1/a/a/a/v0/b/h1/b$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/h1/b$a;-><init>(Ls1/a/a/a/v0/b/h1/b;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/b;->b:Ls1/a/a/a/v0/l/i;

    .line 4
    new-instance p2, Ls1/a/a/a/v0/b/h1/b$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/h1/b$b;-><init>(Ls1/a/a/a/v0/b/h1/b;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/b;->c:Ls1/a/a/a/v0/l/i;

    .line 5
    new-instance p2, Ls1/a/a/a/v0/b/h1/b$c;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/h1/b$c;-><init>(Ls1/a/a/a/v0/b/h1/b;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/b;->d:Ls1/a/a/a/v0/l/i;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    throw v0
.end method

.method public static synthetic v0(I)V
    .locals 18

    move/from16 v0, p0

    const/16 v1, 0x13

    const/16 v2, 0x12

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0xd

    const/16 v6, 0xb

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

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

    const-string v12, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v12, "@NotNull method %s.%s must not return null"

    :goto_0
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

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor"

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v16, "storageManager"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_0
    const-string v16, "substitutor"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_1
    const-string v16, "typeSubstitution"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_2
    const-string v16, "kotlinTypeRefiner"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_3
    const-string v16, "typeArguments"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_4
    aput-object v14, v13, v15

    goto :goto_2

    :pswitch_5
    const-string v16, "name"

    aput-object v16, v13, v15

    :goto_2
    const-string v15, "substitute"

    const-string v16, "getMemberScope"

    const/16 v17, 0x1

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v14, v13, v17

    goto :goto_3

    :cond_2
    const-string v14, "getDefaultType"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_3
    aput-object v15, v13, v17

    goto :goto_3

    :cond_4
    const-string v14, "getUnsubstitutedMemberScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_5
    aput-object v16, v13, v17

    goto :goto_3

    :cond_6
    const-string v14, "getThisAsReceiverParameter"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_7
    const-string v14, "getUnsubstitutedInnerClassesScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_8
    const-string v14, "getOriginal"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_9
    const-string v14, "getName"

    aput-object v14, v13, v17

    :goto_3
    packed-switch v0, :pswitch_data_1

    const-string v14, "<init>"

    aput-object v14, v13, v11

    goto :goto_4

    :pswitch_6
    aput-object v15, v13, v11

    goto :goto_4

    :pswitch_7
    aput-object v16, v13, v11

    :goto_4
    :pswitch_8
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eq v0, v11, :cond_a

    if-eq v0, v10, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public D0(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/b/h1/b;->X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xf

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public I()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/b;->c:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public J()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/b1;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    throw v0

    .line 2
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object p1

    .line 3
    new-instance v0, Ls1/a/a/a/v0/j/y/m;

    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ls1/a/a/a/v0/j/y/m;-><init>(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/v0/m/d1;)V

    return-object v0

    :cond_2
    const/16 p1, 0xa

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    throw v0

    :cond_3
    const/16 p1, 0x9

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    throw v0
.end method

.method public a()Ls1/a/a/a/v0/b/e;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/h;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/k;
    .locals 0

    return-object p0
.end method

.method public a0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/b;->d:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/n0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/b;->w0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/e;

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
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->a(Ls1/a/a/a/v0/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/b;->a:Ls1/a/a/a/v0/f/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public t()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/b;->b:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/e;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/b/h1/u;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/b/h1/u;-><init>(Ls1/a/a/a/v0/b/h1/v;Ls1/a/a/a/v0/m/d1;)V

    return-object v0

    :cond_1
    const/16 p1, 0x11

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/b;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method
