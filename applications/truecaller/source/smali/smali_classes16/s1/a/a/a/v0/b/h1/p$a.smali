.class public Ls1/a/a/a/v0/b/h1/p$a;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/h1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/k0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ls1/a/a/a/v0/b/h1/p;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/p;Ls1/a/a/a/v0/l/m;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/b/h1/p$a$a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/b/h1/p$a$a;-><init>(Ls1/a/a/a/v0/b/h1/p$a;Ls1/a/a/a/v0/b/h1/p;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a;->b:Ls1/a/a/a/v0/l/g;

    .line 3
    new-instance v0, Ls1/a/a/a/v0/b/h1/p$a$b;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/b/h1/p$a$b;-><init>(Ls1/a/a/a/v0/b/h1/p$a;Ls1/a/a/a/v0/b/h1/p;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a;->c:Ls1/a/a/a/v0/l/g;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/b/h1/p$a$c;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/b/h1/p$a$c;-><init>(Ls1/a/a/a/v0/b/h1/p$a;Ls1/a/a/a/v0/b/h1/p;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/p$a;->d:Ls1/a/a/a/v0/l/i;

    return-void
.end method

.method public static synthetic h(I)V
    .locals 13

    const/16 v0, 0xc

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    move v6, v3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v5

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v9, "storageManager"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_2
    const-string v9, "p"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "nameFilter"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "kindFilter"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "fromSupertypes"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    aput-object v7, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "location"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "name"

    aput-object v9, v6, v8

    :goto_2
    const-string v8, "getContributedDescriptors"

    const-string v9, "resolveFakeOverrides"

    const-string v10, "getContributedFunctions"

    const-string v11, "getContributedVariables"

    const/4 v12, 0x1

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_9
    const-string v7, "getVariableNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_a
    const-string v7, "getClassifierNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_b
    const-string v7, "getFunctionNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_c
    const-string v7, "computeAllDeclarations"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_d
    aput-object v8, v6, v12

    goto :goto_3

    :cond_2
    aput-object v9, v6, v12

    goto :goto_3

    :cond_3
    const-string v7, "getSupertypeScope"

    aput-object v7, v6, v12

    goto :goto_3

    :cond_4
    aput-object v10, v6, v12

    goto :goto_3

    :cond_5
    aput-object v11, v6, v12

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v7, "<init>"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_e
    const-string v7, "printScopeStructure"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_f
    aput-object v8, v6, v5

    goto :goto_4

    :pswitch_10
    aput-object v9, v6, v5

    goto :goto_4

    :pswitch_11
    const-string v7, "computeFunctions"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_12
    aput-object v10, v6, v5

    goto :goto_4

    :pswitch_13
    const-string v7, "computeProperties"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_14
    aput-object v11, v6, v5

    :goto_4
    :pswitch_15
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :pswitch_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_15
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_f
        :pswitch_f
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/p;->j:Ls1/a/a/a/v0/l/i;

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Ls1/a/a/a/v0/b/h1/p$a;->b:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x7

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_1
    const/4 p1, 0x6

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_2
    const/4 p1, 0x5

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Ls1/a/a/a/v0/b/h1/p$a;->c:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_1
    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/p;->j:Ls1/a/a/a/v0/l/i;

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/b/h1/p$a;->d:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xf

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_1
    const/16 p1, 0xe

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_2
    const/16 p1, 0xd

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0
.end method

.method public final i()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/p;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ls1/a/a/a/v0/b/b;",
            ">(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "+TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    sget-object v1, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    new-instance v6, Ls1/a/a/a/v0/b/h1/p$a$d;

    invoke-direct {v6, p0, v0}, Ls1/a/a/a/v0/b/h1/p$a$d;-><init>(Ls1/a/a/a/v0/b/h1/p$a;Ljava/util/Set;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Ls1/a/a/a/v0/j/l;->h(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V

    return-object v0

    :cond_0
    const/16 p1, 0xb

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0

    :cond_1
    const/16 p1, 0xa

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v0
.end method
