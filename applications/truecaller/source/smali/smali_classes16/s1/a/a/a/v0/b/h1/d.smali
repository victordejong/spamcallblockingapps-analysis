.class public abstract Ls1/a/a/a/v0/b/h1/d;
.super Ls1/a/a/a/v0/b/h1/m;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/n0;


# static fields
.field public static final c:Ls1/a/a/a/v0/f/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "<this>"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->h(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/b/h1/d;->c:Ls1/a/a/a/v0/f/e;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/b/f1/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/h1/d;->c:Ls1/a/a/a/v0/f/e;

    invoke-direct {p0, p1, v0}, Ls1/a/a/a/v0/b/h1/m;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic X(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_4
    const-string v3, "getSource"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_5
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_6
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_7
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_8
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_9
    const-string v3, "getType"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_b
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_c
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/b/a;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/k;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/d;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/n0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/n0;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Ls1/a/a/a/v0/b/h1/h0;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    new-instance v2, Ls1/a/a/a/v0/j/y/o/g;

    invoke-direct {v2, p1}, Ls1/a/a/a/v0/j/y/o/g;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ls1/a/a/a/v0/b/h1/h0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/f1/h;)V

    return-object v0

    :cond_4
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

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
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->g(Ls1/a/a/a/v0/b/n0;Ljava/lang/Object;)Ljava/lang/Object;

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
            "Ls1/a/a/a/v0/b/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/n0;->getValue()Ls1/a/a/a/v0/j/y/o/d;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/o/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/b1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/d;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0()Ls1/a/a/a/v0/b/n0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
