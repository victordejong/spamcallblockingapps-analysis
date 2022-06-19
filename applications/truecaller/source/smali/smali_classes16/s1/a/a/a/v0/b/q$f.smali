.class public final Ls1/a/a/a/v0/b/q$f;
.super Ls1/a/a/a/v0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/p;-><init>(Ls1/a/a/a/v0/b/e1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_3

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z
    .locals 6

    const-class v0, Ls1/a/a/a/v0/b/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_e

    const/4 v3, 0x1

    if-eqz p3, :cond_d

    .line 1
    invoke-static {p2, v0}, Ls1/a/a/a/v0/j/g;->j(Ls1/a/a/a/v0/b/k;Ljava/lang/Class;)Ls1/a/a/a/v0/b/k;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/e;

    .line 2
    invoke-static {p3, v0, v2}, Ls1/a/a/a/v0/j/g;->k(Ls1/a/a/a/v0/b/k;Ljava/lang/Class;Z)Ls1/a/a/a/v0/b/k;

    move-result-object p3

    check-cast p3, Ls1/a/a/a/v0/b/e;

    if-nez p3, :cond_0

    return v2

    :cond_0
    if-eqz v4, :cond_1

    .line 3
    invoke-static {v4}, Ls1/a/a/a/v0/j/g;->p(Ls1/a/a/a/v0/b/k;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-static {v4, v0}, Ls1/a/a/a/v0/j/g;->j(Ls1/a/a/a/v0/b/k;Ljava/lang/Class;)Ls1/a/a/a/v0/b/k;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/e;

    if-eqz v4, :cond_1

    .line 5
    invoke-static {p3, v4}, Ls1/a/a/a/v0/j/g;->w(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/e;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 6
    :cond_1
    invoke-static {p2}, Ls1/a/a/a/v0/j/g;->A(Ls1/a/a/a/v0/b/o;)Ls1/a/a/a/v0/b/o;

    move-result-object v4

    .line 7
    invoke-static {v4, v0}, Ls1/a/a/a/v0/j/g;->j(Ls1/a/a/a/v0/b/k;Ljava/lang/Class;)Ls1/a/a/a/v0/b/k;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-nez v0, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-static {p3, v0}, Ls1/a/a/a/v0/j/g;->w(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/e;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v4, :cond_b

    .line 9
    sget-object v0, Ls1/a/a/a/v0/b/q;->n:Ls1/a/a/a/v0/j/y/o/d;

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    instance-of v0, v4, Ls1/a/a/a/v0/b/b;

    if-nez v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    instance-of v0, v4, Ls1/a/a/a/v0/b/j;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Ls1/a/a/a/v0/b/q;->m:Ls1/a/a/a/v0/j/y/o/d;

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 13
    :cond_6
    sget-object v0, Ls1/a/a/a/v0/b/q;->l:Ls1/a/a/a/v0/j/y/o/d;

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    instance-of v0, p1, Ls1/a/a/a/v0/j/y/o/e;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/j/y/o/e;

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/o/e;->a()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ls1/a/a/a/v0/j/y/o/d;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 15
    :goto_0
    invoke-static {v0, p3}, Ls1/a/a/a/v0/j/g;->x(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_1
    move v2, v3

    :cond_a
    :goto_2
    if-eqz v2, :cond_c

    return v3

    :cond_b
    const/4 p1, 0x2

    .line 16
    invoke-static {p1}, Ls1/a/a/a/v0/b/q$f;->e(I)V

    throw v1

    .line 17
    :cond_c
    invoke-interface {p3}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/b/q$f;->c(Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    return p1

    .line 18
    :cond_d
    invoke-static {v3}, Ls1/a/a/a/v0/b/q$f;->e(I)V

    throw v1

    :cond_e
    invoke-static {v2}, Ls1/a/a/a/v0/b/q$f;->e(I)V

    throw v1
.end method
