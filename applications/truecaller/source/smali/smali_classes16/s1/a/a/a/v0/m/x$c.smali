.class public Ls1/a/a/a/v0/m/x$c;
.super Ls1/a/a/a/v0/b/h1/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;)V
    .locals 13

    .line 1
    invoke-static {}, Ls1/a/a/a/v0/m/x;->i()Ls1/a/a/a/v0/b/a0;

    move-result-object v1

    sget-object v3, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    sget-object v4, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v12, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const/4 v7, 0x0

    sget-object v8, Ls1/a/a/a/v0/l/e;->e:Ls1/a/a/a/v0/l/m;

    move-object v0, p0

    move-object v2, p1

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Ls1/a/a/a/v0/b/h1/k;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/f;Ljava/util/Collection;Ls1/a/a/a/v0/b/r0;ZLs1/a/a/a/v0/l/m;)V

    .line 2
    sget-object p1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v9, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 5
    new-instance p1, Ls1/a/a/a/v0/b/h1/i;

    const/4 v8, 0x0

    sget-object v11, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Ls1/a/a/a/v0/b/h1/i;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/b/h1/i;->Y0(Ljava/util/List;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i;

    .line 7
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    .line 8
    new-instance v8, Ls1/a/a/a/v0/m/w;

    const-string v1, "<ERROR>"

    .line 9
    invoke-static {v1, p0}, Ls1/a/a/a/v0/m/x;->f(Ljava/lang/String;Ls1/a/a/a/v0/m/x$c;)Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, v8

    move-object v3, v0

    .line 10
    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/m/w;-><init>(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;ZLjava/lang/String;I)V

    .line 11
    invoke-virtual {p1, v8}, Ls1/a/a/a/v0/b/h1/r;->V0(Ls1/a/a/a/v0/m/e0;)V

    .line 12
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ls1/a/a/a/v0/b/h1/k;->N0(Ls1/a/a/a/v0/j/y/i;Ljava/util/Set;Ls1/a/a/a/v0/b/d;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 13
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/i;->X(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic v0(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_0
    const-string v7, "typeSubstitution"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "kotlinTypeRefiner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "typeArguments"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "substitutor"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "getMemberScope"

    const-string v7, "substitute"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v2

    goto :goto_4

    :pswitch_5
    aput-object v6, v4, v2

    goto :goto_4

    :pswitch_6
    aput-object v7, v4, v2

    :goto_4
    :pswitch_7
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "Error scope for class "

    .line 1
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with arguments: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x7

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/m/x$c;->v0(I)V

    throw v0

    :cond_1
    const/4 p1, 0x6

    invoke-static {p1}, Ls1/a/a/a/v0/m/x$c;->v0(I)V

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/m/x$c;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/e;
    .locals 0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x$c;->v0(I)V

    const/4 p1, 0x0

    throw p1
.end method
