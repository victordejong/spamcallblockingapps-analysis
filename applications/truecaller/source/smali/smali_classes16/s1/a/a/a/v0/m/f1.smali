.class public Ls1/a/a/a/v0/m/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/f1$a;
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/l0;

.field public static final b:Ls1/a/a/a/v0/m/l0;

.field public static final c:Ls1/a/a/a/v0/m/l0;

.field public static final d:Ls1/a/a/a/v0/m/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/x;->b:Ls1/a/a/a/v0/m/x$c;

    const-string v1, "DONT_CARE"

    invoke-static {v1, v0}, Ls1/a/a/a/v0/m/x;->f(Ljava/lang/String;Ls1/a/a/a/v0/m/x$c;)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 2
    invoke-static {v1, v0}, Ls1/a/a/a/v0/m/x;->h(Ljava/lang/String;Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 3
    sput-object v0, Ls1/a/a/a/v0/m/f1;->a:Ls1/a/a/a/v0/m/l0;

    const-string v0, "Cannot be inferred"

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/m/f1;->b:Ls1/a/a/a/v0/m/l0;

    .line 5
    new-instance v0, Ls1/a/a/a/v0/m/f1$a;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/f1$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/m/f1;->c:Ls1/a/a/a/v0/m/l0;

    .line 6
    new-instance v0, Ls1/a/a/a/v0/m/f1$a;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/f1$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/m/f1;->d:Ls1/a/a/a/v0/m/l0;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x34

    const/16 v4, 0x2f

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_0

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

    packed-switch v0, :pswitch_data_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v14, 0x2

    if-eq v0, v12, :cond_1

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

    packed-switch v0, :pswitch_data_1

    const/4 v15, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v15, v14

    :goto_1
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_3
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_4
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_5
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_6
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_7
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_8
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_9
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_a
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_b
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_c
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_d
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_e
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_f
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_10
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_11
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_12
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_13
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_14
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_15
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_16
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_17
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_18
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_19
    aput-object v16, v15, v17

    :goto_2
    const-string v17, "getAllSupertypes"

    const-string v18, "getImmediateSupertypes"

    const-string v19, "getDefaultTypeProjections"

    const-string v20, "makeUnsubstitutedType"

    const-string v21, "makeNullableIfNeeded"

    const-string v22, "makeNullableAsSpecified"

    const/16 v23, 0x1

    if-eq v0, v12, :cond_a

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_3

    aput-object v16, v15, v23

    goto :goto_3

    :cond_2
    :pswitch_1a
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_3
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_4
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_5
    aput-object v17, v15, v23

    goto :goto_3

    :cond_6
    aput-object v18, v15, v23

    goto :goto_3

    :cond_7
    aput-object v19, v15, v23

    goto :goto_3

    :cond_8
    aput-object v20, v15, v23

    goto :goto_3

    :cond_9
    aput-object v21, v15, v23

    goto :goto_3

    :cond_a
    aput-object v22, v15, v23

    :goto_3
    packed-switch v0, :pswitch_data_4

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1b
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1c
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1d
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1e
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1f
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_20
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_21
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_22
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_23
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_24
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_25
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_26
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_27
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_28
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_29
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2a
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2b
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2c
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2d
    aput-object v17, v15, v14

    goto :goto_4

    :pswitch_2e
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2f
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_30
    aput-object v18, v15, v14

    goto :goto_4

    :pswitch_31
    aput-object v19, v15, v14

    goto :goto_4

    :pswitch_32
    aput-object v20, v15, v14

    goto :goto_4

    :pswitch_33
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_34
    aput-object v21, v15, v14

    goto :goto_4

    :pswitch_35
    aput-object v22, v15, v14

    goto :goto_4

    :pswitch_36
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_37
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_4
    :pswitch_38
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_b

    if-eq v0, v11, :cond_b

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :pswitch_39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_15
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_2
        :pswitch_11
        :pswitch_2
        :pswitch_19
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_19
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_19
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_19
        :pswitch_3
        :pswitch_4
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x37
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_38
        :pswitch_34
        :pswitch_38
        :pswitch_38
        :pswitch_34
        :pswitch_38
        :pswitch_33
        :pswitch_38
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_38
        :pswitch_31
        :pswitch_38
        :pswitch_30
        :pswitch_38
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_38
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_38
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_38
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_38
        :pswitch_1f
        :pswitch_1f
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x37
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public static b(Ls1/a/a/a/v0/m/e0;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->a2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->y(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y;

    move-result-object p0

    .line 3
    iget-object p0, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->b(Ls1/a/a/a/v0/m/e0;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0x1c

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/i1;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1, v0}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2b

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0
.end method

.method public static d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/i1;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls1/a/a/a/v0/o/m<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->p(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2, p0}, Ls1/a/a/a/v0/o/m;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-interface {p1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    return v4

    :cond_3
    if-nez p2, :cond_4

    .line 5
    invoke-static {}, Ls1/a/a/a/v0/o/m;->a()Ls1/a/a/a/v0/o/m;

    move-result-object p2

    .line 6
    :cond_4
    invoke-virtual {p2, p0}, Ls1/a/a/a/v0/o/m;->add(Ljava/lang/Object;)Z

    .line 7
    instance-of v3, v2, Ls1/a/a/a/v0/m/y;

    if-eqz v3, :cond_5

    move-object v0, v2

    check-cast v0, Ls1/a/a/a/v0/m/y;

    :cond_5
    if-eqz v0, :cond_7

    .line 8
    iget-object v3, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 9
    invoke-static {v3, p1, p2}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 11
    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return v4

    .line 12
    :cond_7
    instance-of v0, v2, Ls1/a/a/a/v0/m/q;

    if-eqz v0, :cond_8

    check-cast v2, Ls1/a/a/a/v0/m/q;

    .line 13
    iget-object v0, v2, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 14
    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    .line 15
    :cond_8
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 16
    instance-of v2, v0, Ls1/a/a/a/v0/m/c0;

    if-eqz v2, :cond_b

    .line 17
    check-cast v0, Ls1/a/a/a/v0/m/c0;

    .line 18
    iget-object p0, v0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 20
    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_a
    return v1

    .line 21
    :cond_b
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/y0;

    .line 22
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/m/f1;->d(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;Ls1/a/a/a/v0/o/m;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    return v4

    :cond_d
    return v1

    :cond_e
    const/16 p0, 0x2c

    .line 23
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :catchall_0
    move-exception p0

    .line 24
    throw p0
.end method

.method public static e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ls1/a/a/a/v0/b/e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;)",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/w0;

    .line 3
    new-instance v2, Ls1/a/a/a/v0/m/a1;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-direct {v2, v1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x10

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Ls1/a/a/a/v0/m/e0;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->a2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->y(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y;

    move-result-object v1

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-static {v1}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "$this$isDefinitelyNotNullType"

    .line 5
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/m/q;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/e0;

    if-eqz v6, :cond_6

    .line 13
    sget-object v7, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v1, v6, v7}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v7

    invoke-static {v6, v7}, Ls1/a/a/a/v0/m/f1;->k(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/16 p0, 0x15

    .line 16
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    .line 17
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 18
    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_9
    :goto_2
    move v2, v3

    :goto_3
    return v2

    .line 19
    :cond_a
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    .line 20
    instance-of v0, p0, Ls1/a/a/a/v0/m/c0;

    if-eqz v0, :cond_c

    .line 21
    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 22
    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_c
    return v3

    :cond_d
    const/16 p0, 0x1b

    .line 23
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0
.end method

.method public static h(Ls1/a/a/a/v0/m/e0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v0, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/w0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ls1/a/a/a/v0/m/f1;->j(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p0

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/i1;->S0(Z)Ls1/a/a/a/v0/m/i1;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0
.end method

.method public static k(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/m/f1;->j(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/16 p0, 0x8

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static l(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x7

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x5

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0
.end method

.method public static m(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/q0;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/m/q0;-><init>(Ls1/a/a/a/v0/b/w0;)V

    return-object v0

    :cond_0
    const/16 p0, 0x2d

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static n(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/h;",
            "Ls1/a/a/a/v0/j/y/i;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/l1/e;",
            "Ls1/a/a/a/v0/m/l0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsubstituted type for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p2}, Ls1/a/a/a/v0/m/f1;->o(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/v0;",
            "Ls1/a/a/a/v0/j/y/i;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/l1/e;",
            "Ls1/a/a/a/v0/m/l0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 5
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/f0;->i(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xe

    .line 6
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xd

    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0xc

    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    throw v0
.end method

.method public static p(Ls1/a/a/a/v0/m/e0;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    sget-object v1, Ls1/a/a/a/v0/m/f1;->c:Ls1/a/a/a/v0/m/l0;

    if-eq p0, v1, :cond_0

    sget-object v1, Ls1/a/a/a/v0/m/f1;->d:Ls1/a/a/a/v0/m/l0;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2
    :cond_2
    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
