.class public Ls1/a/a/a/v0/b/h1/u;
.super Ls1/a/a/a/v0/b/h1/v;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/b/h1/v;

.field public final b:Ls1/a/a/a/v0/m/d1;

.field public c:Ls1/a/a/a/v0/m/d1;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ls1/a/a/a/v0/m/v0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/v;Ls1/a/a/a/v0/m/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/h1/v;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    .line 3
    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    return-void
.end method

.method public static synthetic v0(I)V
    .locals 15

    const/16 v0, 0x16

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "substitute"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "getMemberScope"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v11, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v13, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->A0()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public D0(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/b/h1/u;->X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public I()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1b

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public J()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/b/h1/u;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->L()Z

    move-result v0

    return v0
.end method

.method public L0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->L0()Z

    move-result v0

    return v0
.end method

.method public X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-virtual {v1, p1, p2}, Ls1/a/a/a/v0/b/h1/v;->X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v0

    .line 4
    :cond_1
    new-instance p2, Ls1/a/a/a/v0/j/y/m;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ls1/a/a/a/v0/j/y/m;-><init>(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/v0/m/d1;)V

    return-object p2

    :cond_2
    const/4 p1, 0x6

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v0

    :cond_3
    const/4 p1, 0x5

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v0
.end method

.method public a()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xe

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ls1/a/a/a/v0/j/y/m;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/j/y/m;-><init>(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/v0/m/d1;)V

    return-object v0

    :cond_2
    const/16 p1, 0xd

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/b/h1/u;

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object p1

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object v1

    invoke-static {p1, v1}, Ls1/a/a/a/v0/m/d1;->f(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/b/h1/u;-><init>(Ls1/a/a/a/v0/b/h1/v;Ls1/a/a/a/v0/m/d1;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p1, 0x16

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c0()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->c0()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1e

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
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

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->h()Z

    move-result v0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x19

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v2

    .line 4
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->f:Ls1/a/a/a/v0/m/v0;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 9
    sget-object v5, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v1, v4, v5}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ls1/a/a/a/v0/m/o;

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->d:Ljava/util/List;

    sget-object v4, Ls1/a/a/a/v0/l/e;->e:Ls1/a/a/a/v0/l/m;

    invoke-direct {v0, p0, v1, v3, v4}, Ls1/a/a/a/v0/m/o;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/List;Ljava/util/Collection;Ls1/a/a/a/v0/l/m;)V

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->f:Ls1/a/a/a/v0/m/v0;

    .line 11
    :cond_3
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->f:Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    throw v2
.end method

.method public p()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->p()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/d;

    .line 4
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v3

    invoke-interface {v2}, Ls1/a/a/a/v0/b/d;->a()Ls1/a/a/a/v0/b/d;

    move-result-object v4

    invoke-interface {v3, v4}, Ls1/a/a/a/v0/b/v$a;->g(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/v$a;

    move-result-object v3

    invoke-interface {v2}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v4

    invoke-interface {v3, v4}, Ls1/a/a/a/v0/b/v$a;->n(Ls1/a/a/a/v0/b/y;)Ls1/a/a/a/v0/b/v$a;

    move-result-object v3

    invoke-interface {v2}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v4

    invoke-interface {v3, v4}, Ls1/a/a/a/v0/b/v$a;->m(Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/v$a;

    move-result-object v3

    invoke-interface {v2}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v2

    invoke-interface {v3, v2}, Ls1/a/a/a/v0/b/v$a;->p(Ls1/a/a/a/v0/b/b$a;)Ls1/a/a/a/v0/b/v$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ls1/a/a/a/v0/b/v$a;->h(Z)Ls1/a/a/a/v0/b/v$a;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/d;

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    move-result-object v3

    invoke-interface {v2, v3}, Ls1/a/a/a/v0/b/d;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public p0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->p0()Z

    move-result v0

    return v0
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->r0()Z

    move-result v0

    return v0
.end method

.method public t()Ls1/a/a/a/v0/m/l0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ls1/a/a/a/v0/m/f0;->h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t0()Z

    move-result v0

    return v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/u;->w0()Ls1/a/a/a/v0/m/d1;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1d

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final w0()Ls1/a/a/a/v0/m/d1;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->c:Ls1/a/a/a/v0/m/d1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->c:Ls1/a/a/a/v0/m/d1;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->d:Ljava/util/List;

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/u;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/u;->d:Ljava/util/List;

    invoke-static {v0, v1, p0, v2}, Ls1/a/a/a/v0/f/d;->y3(Ljava/util/List;Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/b/k;Ljava/util/List;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->c:Ls1/a/a/a/v0/m/d1;

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->d:Ljava/util/List;

    new-instance v1, Ls1/a/a/a/v0/b/h1/u$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/b/h1/u$a;-><init>(Ls1/a/a/a/v0/b/h1/u;)V

    invoke-static {v0, v1}, Ls1/u/i;->x(Ljava/lang/Iterable;Ls1/z/b/l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->e:Ljava/util/List;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->c:Ls1/a/a/a/v0/m/d1;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/i;->x()Z

    move-result v0

    return v0
.end method

.method public x0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v0

    return v0
.end method

.method public z()Ls1/a/a/a/v0/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->z()Ls1/a/a/a/v0/b/d;

    move-result-object v0

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/u;->a:Ls1/a/a/a/v0/b/h1/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->z0()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/u;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method
