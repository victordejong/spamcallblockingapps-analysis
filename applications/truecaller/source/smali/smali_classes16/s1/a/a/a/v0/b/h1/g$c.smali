.class public Ls1/a/a/a/v0/b/h1/g$c;
.super Ls1/a/a/a/v0/m/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/h1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final b:Ls1/a/a/a/v0/b/u0;

.field public final synthetic c:Ls1/a/a/a/v0/b/h1/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/u0;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    .line 2
    invoke-direct {p0, p2}, Ls1/a/a/a/v0/m/i;-><init>(Ls1/a/a/a/v0/l/m;)V

    .line 3
    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/g$c;->b:Ls1/a/a/a/v0/b/u0;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic m(I)V
    .locals 10

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v9, "storageManager"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_0
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_1
    aput-object v7, v6, v8

    :goto_2
    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v7, v6, v4

    goto :goto_3

    :cond_2
    const-string v7, "getSupertypeLoopChecker"

    aput-object v7, v6, v4

    goto :goto_3

    :cond_3
    const-string v7, "getBuiltIns"

    aput-object v7, v6, v4

    goto :goto_3

    :cond_4
    const-string v7, "getDeclarationDescriptor"

    aput-object v7, v6, v4

    goto :goto_3

    :cond_5
    const-string v7, "getParameters"

    aput-object v7, v6, v4

    goto :goto_3

    :cond_6
    const-string v7, "computeSupertypes"

    aput-object v7, v6, v4

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v7, "<init>"

    aput-object v7, v6, v3

    goto :goto_4

    :pswitch_2
    const-string v7, "reportSupertypeLoopError"

    aput-object v7, v6, v3

    :goto_4
    :pswitch_3
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/g;->N0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getParameters()Ljava/util/List;
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

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "Cyclic upper bounds"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public j()Ls1/a/a/a/v0/b/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->b:Ls1/a/a/a/v0/b/u0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public l(Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/h1/g;->w0(Ls1/a/a/a/v0/m/e0;)V

    return-void
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g$c;->m(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g$c;->c:Ls1/a/a/a/v0/b/h1/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/f/e;->a:Ljava/lang/String;

    return-object v0
.end method
