.class public abstract Ls1/a/a/a/v0/m/b;
.super Ls1/a/a/a/v0/m/i;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/m/i;-><init>(Ls1/a/a/a/v0/l/m;)V

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/m/b;->b:I

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Ls1/a/a/a/v0/m/b;->m(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic m(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const-string v8, "storageManager"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_3
    aput-object v6, v5, v7

    :goto_2
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    aput-object v6, v5, v2

    goto :goto_3

    :cond_4
    const-string v6, "getAdditionalNeighboursInSupertypeGraph"

    aput-object v6, v5, v2

    goto :goto_3

    :cond_5
    const-string v6, "getBuiltIns"

    aput-object v6, v5, v2

    :goto_3
    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :cond_6
    const-string v6, "hasMeaningfulFqName"

    aput-object v6, v5, v4

    :cond_7
    :goto_4
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method

.method public static o(Ls1/a/a/a/v0/b/h;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->t(Ls1/a/a/a/v0/b/k;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/b;->m(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bridge synthetic d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ls1/a/a/a/v0/m/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    .line 6
    invoke-static {v1}, Ls1/a/a/a/v0/m/b;->o(Ls1/a/a/a/v0/b/h;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz p1, :cond_4

    invoke-static {p1}, Ls1/a/a/a/v0/m/b;->o(Ls1/a/a/a/v0/b/h;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_3

    .line 7
    :cond_4
    instance-of v3, p1, Ls1/a/a/a/v0/b/e;

    if-eqz v3, :cond_d

    .line 8
    check-cast p1, Ls1/a/a/a/v0/b/e;

    .line 9
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/f/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    .line 11
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    :goto_0
    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    .line 12
    instance-of v3, v1, Ls1/a/a/a/v0/b/a0;

    if-eqz v3, :cond_6

    instance-of v0, p1, Ls1/a/a/a/v0/b/a0;

    goto :goto_2

    .line 13
    :cond_6
    instance-of v3, p1, Ls1/a/a/a/v0/b/a0;

    if-eqz v3, :cond_7

    goto :goto_1

    .line 14
    :cond_7
    instance-of v3, v1, Ls1/a/a/a/v0/b/c0;

    if-eqz v3, :cond_9

    .line 15
    instance-of v3, p1, Ls1/a/a/a/v0/b/c0;

    if-eqz v3, :cond_8

    check-cast v1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    check-cast p1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/f/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    goto :goto_2

    .line 16
    :cond_9
    instance-of v3, p1, Ls1/a/a/a/v0/b/c0;

    if-eqz v3, :cond_a

    goto :goto_1

    .line 17
    :cond_a
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/f/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    .line 18
    :cond_b
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    .line 19
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    goto :goto_0

    :cond_c
    :goto_2
    return v0

    :cond_d
    :goto_3
    return v2
.end method

.method public h()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->I(Ls1/a/a/a/v0/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/m/b;->b:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/m/b;->o(Ls1/a/a/a/v0/b/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 6
    :goto_0
    iput v0, p0, Ls1/a/a/a/v0/m/b;->b:I

    return v0
.end method

.method public i(Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Ls1/a/a/a/v0/m/b;->m(I)V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    new-instance v1, Ls1/a/a/a/v0/o/l;

    invoke-direct {v1}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 5
    check-cast v0, Ls1/a/a/a/v0/b/e;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->A0()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public abstract n()Ls1/a/a/a/v0/b/e;
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b;->n()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls1/a/a/a/v0/m/b;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method
