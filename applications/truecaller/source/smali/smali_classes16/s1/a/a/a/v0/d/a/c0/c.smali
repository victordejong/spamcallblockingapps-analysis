.class public Ls1/a/a/a/v0/d/a/c0/c;
.super Ls1/a/a/a/v0/b/h1/i;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/c0/b;


# instance fields
.field public J:Ljava/lang/Boolean;

.field public K:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/c0/c;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    invoke-direct/range {p0 .. p6}, Ls1/a/a/a/v0/b/h1/i;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 2
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/c0/c;->J:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/c0/c;->K:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParametersData"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

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

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static a1(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/c0/c;

    const/4 v3, 0x0

    sget-object v6, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/d/a/c0/c;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/c0/c;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0

    :cond_1
    const/4 p0, 0x5

    invoke-static {p0}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic N0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/r;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Ls1/a/a/a/v0/d/a/c0/c;->b1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/c0/c;->J:Ljava/lang/Boolean;

    return-void
.end method

.method public U0(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/c0/c;->K:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic W0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/i;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Ls1/a/a/a/v0/d/a/c0/c;->b1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public b1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;
    .locals 7

    const/4 p4, 0x0

    if-eqz p1, :cond_9

    if-eqz p3, :cond_8

    if-eqz p5, :cond_7

    if-eqz p6, :cond_6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    if-eq p3, v0, :cond_1

    sget-object v0, Ls1/a/a/a/v0/b/b$a;->d:Ls1/a/a/a/v0/b/b$a;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "newOwner: "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "kind: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/b/e;

    move-object v2, p2

    check-cast v2, Ls1/a/a/a/v0/d/a/c0/c;

    if-eqz v1, :cond_5

    if-eqz p3, :cond_4

    if-eqz p6, :cond_3

    if-eqz p5, :cond_2

    .line 4
    new-instance p1, Ls1/a/a/a/v0/d/a/c0/c;

    iget-boolean v4, p0, Ls1/a/a/a/v0/b/h1/i;->D:Z

    move-object v0, p1

    move-object v3, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/d/a/c0/c;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/c0/c;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/c0/c;->c1()Z

    move-result p2

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/d/a/c0/c;->T0(Z)V

    .line 6
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/c0/c;->u0()Z

    move-result p2

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/d/a/c0/c;->U0(Z)V

    return-object p1

    :cond_2
    const/16 p1, 0xf

    .line 7
    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_3
    const/16 p1, 0xe

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_4
    const/16 p1, 0xd

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_5
    const/16 p1, 0xc

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_6
    const/16 p1, 0xa

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_7
    const/16 p1, 0x9

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_8
    const/16 p1, 0x8

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4

    :cond_9
    const/4 p1, 0x7

    invoke-static {p1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw p4
.end method

.method public c1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/c0/c;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public q0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/k;)Ls1/a/a/a/v0/d/a/c0/b;
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/i;->X0()Ls1/a/a/a/v0/b/e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Ls1/a/a/a/v0/d/a/c0/c;->b1(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;

    move-result-object v11

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    invoke-static {v11, p1, v2}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v4, v2

    .line 6
    iget-object v5, v0, Ls1/a/a/a/v0/b/h1/r;->i:Ls1/a/a/a/v0/b/n0;

    .line 7
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v2

    move-object v3, p2

    invoke-static {p2, v2, v11}, Le/q/f/a/d/a;->V(Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/a;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v9

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v10

    move-object v3, v11

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Ls1/a/a/a/v0/b/h1/r;->Q0(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/r;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v2, Ls1/a/a/a/v0/b/a$a;

    .line 10
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    invoke-virtual {v11, v2, v1}, Ls1/a/a/a/v0/b/h1/r;->S0(Ls1/a/a/a/v0/b/a$a;Ljava/lang/Object;)V

    :cond_1
    return-object v11

    :cond_2
    move-object v0, p0

    const/16 v1, 0x11

    .line 12
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/c;->X(I)V

    throw v2
.end method

.method public u0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/c0/c;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
