.class public Ls1/a/a/a/v0/m/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/d1$b;,
        Ls1/a/a/a/v0/m/d1$a;
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/m/d1;


# instance fields
.field public final a:Ls1/a/a/a/v0/m/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/b1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/m/d1;->b:Ls1/a/a/a/v0/m/d1;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/b1;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x22

    const/16 v1, 0x1f

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v8, "substitution"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "projectionKind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "typeParameterVariance"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "annotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "substituted"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "originalType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "originalProjection"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "typeProjection"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "howThisTypeIsUsed"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "type"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_c
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_d
    const-string v8, "context"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_e
    const-string v8, "substitutionContext"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_f
    const-string v8, "second"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_10
    const-string v8, "first"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "combine"

    const-string v8, "filterOutUnsafeVariance"

    const-string v9, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v10, "unsafeSubstitute"

    const-string v11, "safeSubstitute"

    const/4 v12, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v6, v5, v12

    goto :goto_3

    :pswitch_11
    aput-object v9, v5, v12

    goto :goto_3

    :pswitch_12
    aput-object v10, v5, v12

    goto :goto_3

    :pswitch_13
    aput-object v11, v5, v12

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v7, v5, v12

    goto :goto_3

    :cond_3
    aput-object v8, v5, v12

    goto :goto_3

    :cond_4
    const-string v6, "getSubstitution"

    aput-object v6, v5, v12

    :goto_3
    if-eq p0, v12, :cond_5

    if-eq p0, v4, :cond_5

    packed-switch p0, :pswitch_data_d

    const-string v6, "create"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_15
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_16
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_17
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v5, v4

    goto :goto_4

    :pswitch_19
    const-string v6, "substituteWithoutApproximation"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_1a
    const-string v6, "substitute"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_1b
    aput-object v11, v5, v4

    goto :goto_4

    :pswitch_1c
    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :cond_5
    const-string v6, "createChainedSubstitutor"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_1d
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :pswitch_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_9
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x9
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x25
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x5
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x9
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x11
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x25
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public static b(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/j1;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 1
    sget-object v1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x25

    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0x26

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/16 p0, 0x27

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x24

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x23

    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method

.method public static c(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/d1$b;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    sget-object v1, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    if-ne p0, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p0, Ls1/a/a/a/v0/m/d1$b;->c:Ls1/a/a/a/v0/m/d1$b;

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3
    sget-object p0, Ls1/a/a/a/v0/m/d1$b;->b:Ls1/a/a/a/v0/m/d1$b;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Ls1/a/a/a/v0/m/d1$b;->a:Ls1/a/a/a/v0/m/d1$b;

    return-object p0
.end method

.method public static d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p0

    .line 2
    sget-object v1, Ls1/a/a/a/v0/m/x0;->b:Ls1/a/a/a/v0/m/x0$a;

    invoke-virtual {v1, v0, p0}, Ls1/a/a/a/v0/m/x0$a;->b(Ls1/a/a/a/v0/m/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/b1;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    .line 4
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/d1;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/m/d1;-><init>(Ls1/a/a/a/v0/m/b1;)V

    return-object v0
.end method

.method public static f(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "first"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "second"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/b1;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/b1;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ls1/a/a/a/v0/m/u;

    invoke-direct {v1, p0, p1, v0}, Ls1/a/a/a/v0/m/u;-><init>(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/b1;Ls1/z/c/f;)V

    move-object p0, v1

    .line 5
    :goto_0
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x2

    .line 6
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->m2(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Exception while computing toString(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public g()Ls1/a/a/a/v0/m/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->f()Z

    move-result v0

    return v0
.end method

.method public i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ls1/a/a/a/v0/m/a1;

    invoke-direct {v1, p2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1
    :try_end_0
    .catch Ls1/a/a/a/v0/m/d1$a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/16 p1, 0xa

    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x7

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method

.method public k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 1
    new-instance v1, Ls1/a/a/a/v0/m/a1;

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ls1/a/a/a/v0/m/b1;->g(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    .line 2
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/m/d1;->l(Ls1/a/a/a/v0/m/y0;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/b1;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/b1;->b()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/b1;->b()Z

    move-result p2

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v2, "typeProjection.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Ls1/a/a/a/v0/m/p1/c;->b:Ls1/a/a/a/v0/m/p1/c;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/m/f1;->c(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v2

    const-string v3, "typeProjection.projectionKind"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    if-ne v2, v3, :cond_4

    .line 10
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->t(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/p1/a;

    move-result-object p1

    .line 11
    new-instance p2, Ls1/a/a/a/v0/m/a1;

    .line 12
    iget-object p1, p1, Ls1/a/a/a/v0/m/p1/a;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-direct {p2, v2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 14
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->t(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/p1/a;

    move-result-object p1

    .line 15
    iget-object p1, p1, Ls1/a/a/a/v0/m/p1/a;->a:Ljava/lang/Object;

    .line 16
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    .line 17
    new-instance p2, Ls1/a/a/a/v0/m/a1;

    invoke-direct {p2, v2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    .line 18
    :cond_5
    new-instance p2, Ls1/a/a/a/v0/m/p1/d;

    invoke-direct {p2}, Ls1/a/a/a/v0/m/p1/d;-><init>()V

    invoke-static {p2}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object p2

    const-string v1, "TypeSubstitutor.create(o\u2026ojection\n        }\n    })"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/m/d1;->l(Ls1/a/a/a/v0/m/y0;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_7
    const/16 p1, 0xd

    .line 21
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    :cond_8
    const/16 p1, 0xc

    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method

.method public l(Ls1/a/a/a/v0/m/y0;)Ls1/a/a/a/v0/m/y0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object p1
    :try_end_0
    .catch Ls1/a/a/a/v0/m/d1$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_1
    const/16 p1, 0xf

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method

.method public final m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/m/d1$a;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    const/16 v2, 0x64

    if-gt p3, v2, :cond_26

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 4
    instance-of v2, v1, Ls1/a/a/a/v0/m/g1;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/m/g1;

    invoke-interface {v1}, Ls1/a/a/a/v0/m/g1;->X()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 6
    invoke-interface {v1}, Ls1/a/a/a/v0/m/g1;->v0()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 7
    new-instance v2, Ls1/a/a/a/v0/m/a1;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    add-int/2addr p3, v3

    invoke-virtual {p0, v2, p2, p3}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    .line 9
    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    invoke-virtual {p3}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p3

    invoke-static {p3, p1}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 10
    new-instance p3, Ls1/a/a/a/v0/m/a1;

    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object p3

    .line 11
    :cond_1
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->W1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    instance-of v2, v2, Ls1/a/a/a/v0/m/k0;

    if-eqz v2, :cond_2

    goto/16 :goto_b

    .line 12
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/m/b1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->F:Ls1/a/a/a/v0/f/b;

    invoke-interface {v4, v5}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-virtual {v4}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    .line 15
    instance-of v5, v4, Ls1/a/a/a/v0/m/l1/i;

    if-nez v5, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    check-cast v4, Ls1/a/a/a/v0/m/l1/i;

    .line 17
    iget-object v4, v4, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    .line 18
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v5

    .line 19
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    invoke-static {v6, v5}, Ls1/a/a/a/v0/m/d1;->c(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/d1$b;

    move-result-object v6

    .line 20
    sget-object v7, Ls1/a/a/a/v0/m/d1$b;->c:Ls1/a/a/a/v0/m/d1$b;

    if-ne v6, v7, :cond_5

    .line 21
    new-instance v2, Ls1/a/a/a/v0/m/a1;

    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-direct {v2, v4}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    goto :goto_0

    .line 22
    :cond_6
    invoke-interface {p2}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    invoke-static {v6, v5}, Ls1/a/a/a/v0/m/d1;->c(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/d1$b;

    move-result-object v5

    if-ne v5, v7, :cond_8

    .line 23
    new-instance v2, Ls1/a/a/a/v0/m/a1;

    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-direct {v2, v4}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    :cond_7
    move-object v2, v0

    .line 24
    :cond_8
    :goto_0
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_c

    .line 25
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->a2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "$this$isCustomTypeVariable"

    .line 26
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v6

    instance-of v7, v6, Ls1/a/a/a/v0/m/p;

    if-nez v7, :cond_9

    move-object v6, v0

    :cond_9
    check-cast v6, Ls1/a/a/a/v0/m/p;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ls1/a/a/a/v0/m/p;->b0()Z

    move-result v6

    goto :goto_1

    :cond_a
    move v6, v5

    :goto_1
    if-nez v6, :cond_c

    .line 28
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->y(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y;

    move-result-object v0

    .line 29
    new-instance v1, Ls1/a/a/a/v0/m/a1;

    .line 30
    iget-object v2, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 31
    invoke-direct {v1, v4, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    add-int/2addr p3, v3

    invoke-virtual {p0, v1, p2, p3}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object v1

    .line 32
    new-instance v2, Ls1/a/a/a/v0/m/a1;

    .line 33
    iget-object v3, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 34
    invoke-direct {v2, v4, v3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {p0, v2, p2, p3}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object p2

    .line 35
    invoke-interface {v1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p3

    .line 36
    invoke-interface {v1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    .line 37
    iget-object v3, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    if-ne v2, v3, :cond_b

    .line 38
    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    .line 39
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    if-ne v2, v0, :cond_b

    return-object p1

    .line 40
    :cond_b
    invoke-interface {v1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 41
    new-instance p2, Ls1/a/a/a/v0/m/a1;

    invoke-direct {p2, p3, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object p2

    .line 42
    :cond_c
    invoke-static {v1}, Ls1/a/a/a/v0/a/g;->E(Ls1/a/a/a/v0/m/e0;)Z

    move-result p2

    if-nez p2, :cond_25

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto/16 :goto_b

    :cond_d
    const/4 p2, 0x2

    if-eqz v2, :cond_19

    .line 43
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    invoke-static {v4, p1}, Ls1/a/a/a/v0/m/d1;->c(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/d1$b;

    move-result-object p1

    .line 44
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->T1(Ls1/a/a/a/v0/m/e0;)Z

    move-result p3

    if-nez p3, :cond_10

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eq p3, v3, :cond_f

    if-eq p3, p2, :cond_e

    goto :goto_2

    .line 46
    :cond_e
    new-instance p1, Ls1/a/a/a/v0/m/d1$a;

    const-string p2, "Out-projection in in-position"

    invoke-direct {p1, p2}, Ls1/a/a/a/v0/m/d1$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_f
    new-instance p1, Ls1/a/a/a/v0/m/a1;

    sget-object p2, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p3

    invoke-interface {p3}, Ls1/a/a/a/v0/m/v0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p3

    invoke-virtual {p3}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object p1

    :cond_10
    :goto_2
    const-string p3, "$this$getCustomTypeVariable"

    .line 48
    invoke-static {v1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p3

    instance-of v6, p3, Ls1/a/a/a/v0/m/p;

    if-nez v6, :cond_11

    move-object p3, v0

    :cond_11
    check-cast p3, Ls1/a/a/a/v0/m/p;

    if-eqz p3, :cond_12

    .line 50
    invoke-interface {p3}, Ls1/a/a/a/v0/m/p;->b0()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_3

    :cond_12
    move-object p3, v0

    .line 51
    :goto_3
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v6

    if-eqz v6, :cond_13

    return-object v2

    :cond_13
    if-eqz p3, :cond_14

    .line 52
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    invoke-interface {p3, v6}, Ls1/a/a/a/v0/m/p;->w0(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    goto :goto_4

    .line 53
    :cond_14
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v6

    invoke-static {p3, v6}, Ls1/a/a/a/v0/m/f1;->k(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    .line 54
    :goto_4
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    invoke-interface {v6}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    .line 55
    iget-object v6, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    invoke-virtual {v6, v1}, Ls1/a/a/a/v0/m/b1;->d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 56
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->F:Ls1/a/a/a/v0/f/b;

    invoke-interface {v1, v0}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    .line 57
    :cond_15
    new-instance v0, Ls1/a/a/a/v0/b/f1/l;

    new-instance v6, Ls1/a/a/a/v0/m/c1;

    invoke-direct {v6}, Ls1/a/a/a/v0/m/c1;-><init>()V

    invoke-direct {v0, v1, v6}, Ls1/a/a/a/v0/b/f1/l;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/z/b/l;)V

    move-object v1, v0

    .line 58
    :goto_5
    new-instance v0, Ls1/a/a/a/v0/b/f1/k;

    new-array p2, p2, [Ls1/a/a/a/v0/b/f1/h;

    invoke-interface {p3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    aput-object v6, p2, v5

    aput-object v1, p2, v3

    invoke-direct {v0, p2}, Ls1/a/a/a/v0/b/f1/k;-><init>([Ls1/a/a/a/v0/b/f1/h;)V

    invoke-static {p3, v0}, Ls1/a/a/a/v0/f/d;->V2(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    goto :goto_6

    :cond_16
    const/16 p1, 0x1e

    .line 59
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0

    .line 60
    :cond_17
    :goto_6
    sget-object p2, Ls1/a/a/a/v0/m/d1$b;->a:Ls1/a/a/a/v0/m/d1$b;

    if-ne p1, p2, :cond_18

    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    invoke-static {v4, p1}, Ls1/a/a/a/v0/m/d1;->b(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    .line 61
    :cond_18
    new-instance p1, Ls1/a/a/a/v0/m/a1;

    invoke-direct {p1, v4, p3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object p1

    .line 62
    :cond_19
    sget-object p2, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 63
    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v2

    .line 64
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-interface {v3}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v3

    instance-of v3, v3, Ls1/a/a/a/v0/b/w0;

    if-eqz v3, :cond_1a

    goto/16 :goto_b

    :cond_1a
    const-string p1, "$this$getAbbreviation"

    .line 65
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$this$getAbbreviatedType"

    .line 66
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    instance-of v3, p1, Ls1/a/a/a/v0/m/a;

    if-nez v3, :cond_1b

    move-object p1, v0

    :cond_1b
    check-cast p1, Ls1/a/a/a/v0/m/a;

    if-eqz p1, :cond_1c

    .line 68
    iget-object p1, p1, Ls1/a/a/a/v0/m/a;->c:Ls1/a/a/a/v0/m/l0;

    goto :goto_7

    :cond_1c
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_1d

    .line 69
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 70
    :cond_1d
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v3

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    .line 72
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_22

    .line 73
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/w0;

    .line 74
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/m/y0;

    add-int/lit8 v9, p3, 0x1

    .line 75
    invoke-virtual {p0, v8, v7, v9}, Ls1/a/a/a/v0/m/d1;->m(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object v9

    .line 76
    invoke-interface {v7}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v10

    invoke-interface {v9}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v11

    invoke-static {v10, v11}, Ls1/a/a/a/v0/m/d1;->c(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/d1$b;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1e

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1e

    goto :goto_9

    .line 77
    :cond_1e
    invoke-static {v7}, Ls1/a/a/a/v0/m/f1;->m(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v9

    goto :goto_9

    .line 78
    :cond_1f
    invoke-interface {v7}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v7

    if-eq v7, p2, :cond_20

    invoke-interface {v9}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v7

    if-nez v7, :cond_20

    .line 79
    new-instance v7, Ls1/a/a/a/v0/m/a1;

    invoke-interface {v9}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v9

    invoke-direct {v7, p2, v9}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object v9, v7

    :cond_20
    :goto_9
    if-eq v9, v8, :cond_21

    const/4 v6, 0x1

    .line 80
    :cond_21
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_22
    if-nez v6, :cond_23

    goto :goto_a

    :cond_23
    move-object v3, v4

    .line 81
    :goto_a
    iget-object p1, p0, Ls1/a/a/a/v0/m/d1;->a:Ls1/a/a/a/v0/m/b1;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/b1;->d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    invoke-static {v1, v3, p1}, Ls1/a/a/a/v0/f/d;->S2(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    .line 82
    instance-of p2, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz p2, :cond_24

    instance-of p2, v0, Ls1/a/a/a/v0/m/l0;

    if-eqz p2, :cond_24

    .line 83
    check-cast p1, Ls1/a/a/a/v0/m/l0;

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/m/o0;->d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 84
    :cond_24
    new-instance p2, Ls1/a/a/a/v0/m/a1;

    invoke-direct {p2, v2, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object p1, p2

    :cond_25
    :goto_b
    return-object p1

    .line 85
    :cond_26
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; substitution: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ls1/a/a/a/v0/m/d1;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_27
    const/16 p1, 0x10

    .line 86
    invoke-static {p1}, Ls1/a/a/a/v0/m/d1;->a(I)V

    throw v0
.end method
