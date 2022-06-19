.class public Ls1/a/a/a/v0/j/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/j/l$c;,
        Ls1/a/a/a/v0/j/l$d;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/j/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ls1/a/a/a/v0/j/l;

.field public static final e:Ls1/a/a/a/v0/m/l1/d$a;


# instance fields
.field public final a:Ls1/a/a/a/v0/m/l1/e;

.field public final b:Ls1/a/a/a/v0/m/l1/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ls1/a/a/a/v0/j/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/j/l;->c:Ljava/util/List;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/l$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/l$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/l;->e:Ls1/a/a/a/v0/m/l1/d$a;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/j/l;

    sget-object v2, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    invoke-direct {v1, v0, v2}, Ls1/a/a/a/v0/j/l;-><init>(Ls1/a/a/a/v0/m/l1/d$a;Ls1/a/a/a/v0/m/l1/e;)V

    sput-object v1, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/l1/d$a;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/j/l;->b:Ls1/a/a/a/v0/m/l1/d$a;

    .line 3
    iput-object p2, p0, Ls1/a/a/a/v0/j/l;->a:Ls1/a/a/a/v0/m/l1/e;

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x4

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 22

    move/from16 v0, p0

    const/16 v1, 0x65

    const/16 v2, 0x60

    const/16 v3, 0x5d

    const/16 v4, 0x13

    const/16 v5, 0xe

    const/16 v6, 0xa

    const/16 v7, 0x9

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v9, 0x2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    const/4 v10, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v10, v9

    :goto_1
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil"

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_8

    :pswitch_2
    const-string v13, "equalityAxioms"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_3
    const-string v13, "memberDescriptor"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_4
    const-string v13, "onConflict"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_5
    const-string v13, "extractFrom"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_6
    const-string v13, "overrider"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_7
    const-string v13, "toFilter"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_8
    const-string v13, "classModality"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_9
    const-string v13, "descriptorByHandle"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_a
    const-string v13, "overridables"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_b
    const-string v13, "bReturnType"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_c
    const-string v13, "aReturnType"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_d
    const-string v13, "descriptors"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_e
    const-string v13, "candidate"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_f
    const-string v13, "b"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_10
    const-string v13, "a"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_11
    const-string v13, "notOverridden"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_12
    const-string v13, "descriptorsFromSuper"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_13
    const-string v13, "fromCurrent"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_14
    const-string v13, "fromSuper"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_15
    const-string v13, "overriding"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_16
    const-string v13, "strategy"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_17
    const-string v13, "current"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_18
    const-string v13, "membersFromCurrent"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_19
    const-string v13, "membersFromSupertypes"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_1a
    const-string v13, "name"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1b
    const-string v13, "subTypeParameter"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1c
    const-string v13, "superTypeParameter"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1d
    const-string v13, "typeChecker"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1e
    const-string v13, "typeInSub"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1f
    const-string v13, "typeInSuper"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_20
    const-string v13, "secondParameters"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_21
    const-string v13, "firstParameters"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_22
    const-string v13, "subDescriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_23
    const-string v13, "superDescriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_24
    const-string v13, "result"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_25
    const-string v13, "descriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_26
    const-string v13, "g"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_27
    const-string v13, "f"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_28
    aput-object v11, v10, v12

    goto :goto_2

    :pswitch_29
    const-string v13, "transformFirst"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2a
    const-string v13, "candidateSet"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2b
    const-string v13, "axioms"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2c
    const-string v13, "kotlinTypeRefiner"

    aput-object v13, v10, v12

    :goto_2
    const-string v12, "extractMembersOverridableInBothWays"

    const-string v13, "filterVisibleFakeOverrides"

    const-string v14, "getMinimalModality"

    const-string v15, "determineModalityForFakeOverride"

    const-string v16, "selectMostSpecificMember"

    const-string v17, "isOverridableByWithoutExternalConditions"

    const-string v18, "isOverridableBy"

    const-string v19, "getOverriddenDeclarations"

    const-string v20, "filterOverrides"

    const/16 v21, 0x1

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    aput-object v11, v10, v21

    goto :goto_3

    :pswitch_2d
    aput-object v15, v10, v21

    goto :goto_3

    :pswitch_2e
    aput-object v16, v10, v21

    goto :goto_3

    :pswitch_2f
    aput-object v17, v10, v21

    goto :goto_3

    :cond_2
    aput-object v12, v10, v21

    goto :goto_3

    :cond_3
    aput-object v13, v10, v21

    goto :goto_3

    :cond_4
    aput-object v14, v10, v21

    goto :goto_3

    :cond_5
    :pswitch_30
    aput-object v18, v10, v21

    goto :goto_3

    :cond_6
    aput-object v19, v10, v21

    goto :goto_3

    :cond_7
    aput-object v20, v10, v21

    :goto_3
    packed-switch v0, :pswitch_data_d

    const-string v11, "createWithEqualityAxioms"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_31
    const-string v11, "findMaxVisibility"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_32
    const-string v11, "computeVisibilityToInherit"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_33
    const-string v11, "resolveUnknownVisibilityForMember"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_34
    aput-object v12, v10, v9

    goto/16 :goto_4

    :pswitch_35
    aput-object v13, v10, v9

    goto/16 :goto_4

    :pswitch_36
    aput-object v14, v10, v9

    goto/16 :goto_4

    :pswitch_37
    aput-object v15, v10, v9

    goto/16 :goto_4

    :pswitch_38
    const-string v11, "createAndBindFakeOverride"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_39
    aput-object v16, v10, v9

    goto/16 :goto_4

    :pswitch_3a
    const-string v11, "isReturnTypeMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3b
    const-string v11, "isMoreSpecificThenAllOf"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3c
    const-string v11, "isVisibilityMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3d
    const-string v11, "isMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3e
    const-string v11, "createAndBindFakeOverrides"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_3f
    const-string v11, "allHasSameContainingDeclaration"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_40
    const-string v11, "extractAndBindOverridesForMember"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_41
    const-string v11, "isVisibleForOverride"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_42
    const-string v11, "generateOverridesInFunctionGroup"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_43
    const-string v11, "areTypeParametersEquivalent"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_44
    const-string v11, "areTypesEquivalent"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_45
    const-string v11, "createTypeCheckerContext"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_46
    const-string v11, "createTypeChecker"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_47
    const-string v11, "getBasicOverridabilityProblem"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_48
    aput-object v17, v10, v9

    goto :goto_4

    :pswitch_49
    aput-object v18, v10, v9

    goto :goto_4

    :pswitch_4a
    const-string v11, "collectOverriddenDeclarations"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4b
    aput-object v19, v10, v9

    goto :goto_4

    :pswitch_4c
    const-string v11, "overrides"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4d
    aput-object v20, v10, v9

    goto :goto_4

    :pswitch_4e
    const-string v11, "filterOutOverridden"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4f
    const-string v11, "<init>"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_50
    const-string v11, "create"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_51
    const-string v11, "createWithTypeRefiner"

    aput-object v11, v10, v9

    :goto_4
    :pswitch_52
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :pswitch_53
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x58
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x58
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2
        :pswitch_2b
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_17
        :pswitch_11
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_1d
        :pswitch_a
        :pswitch_9
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_a
        :pswitch_17
        :pswitch_16
        :pswitch_d
        :pswitch_17
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_d
        :pswitch_8
        :pswitch_28
        :pswitch_17
        :pswitch_7
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x16
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1e
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x4e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x58
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_52
        :pswitch_52
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_52
        :pswitch_4a
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_52
        :pswitch_49
        :pswitch_49
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_48
        :pswitch_48
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_47
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_36
        :pswitch_36
        :pswitch_52
        :pswitch_35
        :pswitch_35
        :pswitch_52
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_52
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x16
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1e
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x4e
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x58
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method public static c(Ls1/a/a/a/v0/b/b;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/b/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b;

    .line 5
    invoke-static {v0, p1}, Ls1/a/a/a/v0/j/l;->c(Ls1/a/a/a/v0/b/b;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No overridden descriptors found for (fake override) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p0, 0x10

    .line 7
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_4
    const/16 p0, 0xf

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static d(Ls1/a/a/a/v0/b/a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/a;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    .line 5
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static e(Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/b;",
            ">;",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/j/k;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1e

    if-eqz v6, :cond_1d

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1b

    .line 1
    new-instance v3, Ls1/a/a/a/v0/j/m;

    invoke-direct {v3, v1}, Ls1/a/a/a/v0/j/m;-><init>(Ls1/a/a/a/v0/b/e;)V

    invoke-static {v0, v3}, Ls1/u/i;->x(Ljava/lang/Iterable;Ls1/z/b/l;)Ljava/util/List;

    move-result-object v3

    .line 2
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v3

    .line 3
    :goto_0
    sget-object v0, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    .line 4
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v8, v5

    move v9, v8

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/b/b;

    .line 5
    invoke-interface {v10}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_4

    if-eq v12, v11, :cond_3

    const/4 v10, 0x2

    if-eq v12, v10, :cond_2

    const/4 v10, 0x3

    if-eq v12, v10, :cond_1

    goto :goto_1

    :cond_1
    move v9, v11

    goto :goto_1

    :cond_2
    move v8, v11

    goto :goto_1

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Member cannot have SEALED modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    sget-object v0, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    :goto_2
    move-object v2, v0

    goto/16 :goto_c

    .line 8
    :cond_5
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v3

    if-eq v3, v0, :cond_6

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v3

    sget-object v10, Ls1/a/a/a/v0/b/y;->b:Ls1/a/a/a/v0/b/y;

    if-eq v3, v10, :cond_6

    move v3, v11

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    .line 9
    sget-object v0, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    goto :goto_2

    :cond_7
    if-nez v8, :cond_a

    if-eqz v9, :cond_a

    if-eqz v3, :cond_8

    .line 10
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const/16 v0, 0x5a

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 11
    :cond_a
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/b/b;

    if-eqz v10, :cond_b

    .line 13
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    invoke-static {v10, v12}, Ls1/a/a/a/v0/j/l;->c(Ls1/a/a/a/v0/b/b;Ljava/util/Set;)V

    .line 15
    invoke-interface {v8, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_b
    const/16 v0, 0xd

    .line 16
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 17
    :cond_c
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/b/k;

    invoke-static {v9}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v9

    const-string v10, "$this$isTypeRefinementEnabled"

    .line 18
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v10, Ls1/a/a/a/v0/m/l1/f;->a:Ls1/a/a/a/v0/b/z;

    .line 20
    invoke-interface {v9, v10}, Ls1/a/a/a/v0/b/a0;->Z(Ls1/a/a/a/v0/b/z;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/m/l1/m;

    if-eqz v9, :cond_d

    .line 21
    iget-object v9, v9, Ls1/a/a/a/v0/m/l1/m;->a:Ljava/lang/Object;

    .line 22
    check-cast v9, Ls1/a/a/a/v0/m/l1/e;

    goto :goto_5

    :cond_d
    move-object v9, v2

    :goto_5
    if-eqz v9, :cond_e

    move v9, v11

    goto :goto_6

    :cond_e
    move v9, v5

    :goto_6
    if-eqz v9, :cond_f

    move v5, v11

    .line 23
    :cond_f
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v9

    if-gt v9, v11, :cond_10

    goto :goto_9

    .line 24
    :cond_10
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 26
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 27
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 28
    move-object v14, v10

    check-cast v14, Ls1/a/a/a/v0/b/a;

    check-cast v13, Ls1/a/a/a/v0/b/a;

    .line 29
    invoke-static {v14, v13, v5, v11}, Ls1/a/a/a/v0/j/l;->q(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;ZZ)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 30
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 31
    :cond_12
    invoke-static {v13, v14, v5, v11}, Ls1/a/a/a/v0/j/l;->q(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;ZZ)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_7

    .line 32
    :cond_13
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    move-object v8, v9

    .line 33
    :goto_9
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 34
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v0

    :cond_15
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/b/b;

    if-eqz v3, :cond_16

    .line 35
    invoke-interface {v10}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v11

    if-ne v11, v0, :cond_16

    move-object v10, v5

    goto :goto_b

    :cond_16
    invoke-interface {v10}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v10

    .line 36
    :goto_b
    invoke-virtual {v10, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_15

    move-object v9, v10

    goto :goto_a

    :cond_17
    if-eqz v9, :cond_19

    move-object v2, v9

    :goto_c
    if-eqz v4, :cond_18

    .line 37
    sget-object v0, Ls1/a/a/a/v0/b/q;->h:Ls1/a/a/a/v0/b/r;

    goto :goto_d

    :cond_18
    sget-object v0, Ls1/a/a/a/v0/b/q;->g:Ls1/a/a/a/v0/b/r;

    :goto_d
    move-object v3, v0

    .line 38
    new-instance v0, Ls1/a/a/a/v0/j/l$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/l$b;-><init>()V

    invoke-static {v7, v0}, Ls1/a/a/a/v0/j/l;->s(Ljava/util/Collection;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b;

    .line 39
    sget-object v4, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Ls1/a/a/a/v0/b/b;->m0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/b;

    move-result-object v0

    .line 40
    invoke-virtual {v6, v0, v7}, Ls1/a/a/a/v0/j/k;->d(Ls1/a/a/a/v0/b/b;Ljava/util/Collection;)V

    .line 41
    invoke-virtual {v6, v0}, Ls1/a/a/a/v0/j/k;->a(Ls1/a/a/a/v0/b/b;)V

    return-void

    :cond_19
    const/16 v0, 0x5d

    .line 42
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1a
    const/16 v0, 0x5c

    .line 43
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1b
    const/16 v0, 0x5f

    .line 44
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1c
    const/16 v0, 0x5e

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1d
    const/16 v0, 0x55

    .line 45
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1e
    const/16 v0, 0x54

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    :cond_1f
    const/16 v0, 0x53

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2
.end method

.method public static g(Ljava/lang/Object;Ljava/util/Collection;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(TH;",
            "Ljava/util/Collection<",
            "TH;>;",
            "Ls1/z/b/l<",
            "TH;",
            "Ls1/a/a/a/v0/b/a;",
            ">;",
            "Ls1/z/b/l<",
            "TH;",
            "Ls1/s;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p2, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/a;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {p2, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/a;

    if-ne p0, v2, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1, v3}, Ls1/a/a/a/v0/j/l;->j(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v3

    .line 9
    sget-object v4, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    if-ne v3, v4, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v4, Ls1/a/a/a/v0/j/l$c$a;->c:Ls1/a/a/a/v0/j/l$c$a;

    if-ne v3, v4, :cond_0

    .line 13
    invoke-interface {p3, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/16 p0, 0x62

    .line 15
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_5
    const/16 p0, 0x61

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static i(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_b

    .line 1
    instance-of v1, p0, Ls1/a/a/a/v0/b/v;

    if-eqz v1, :cond_0

    instance-of v2, p1, Ls1/a/a/a/v0/b/v;

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Ls1/a/a/a/v0/b/k0;

    if-eqz v2, :cond_2

    instance-of v3, p1, Ls1/a/a/a/v0/b/k0;

    if-nez v3, :cond_2

    :cond_1
    const-string p0, "Member kind mismatch"

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This type of CallableDescriptor cannot be checked for overridability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    :goto_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/f/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p0, "Name mismatch"

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p0

    return-object p0

    .line 6
    :cond_5
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    if-eq v1, v2, :cond_8

    const-string p0, "Receiver presence mismatch"

    .line 7
    invoke-static {p0}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p0

    goto :goto_3

    .line 8
    :cond_8
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_9

    const-string p0, "Value parameter number mismatch"

    .line 9
    invoke-static {p0}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p0

    goto :goto_3

    :cond_9
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_a

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    const/16 p0, 0x27

    .line 10
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_c
    const/16 p0, 0x26

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static j(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c$a;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Ls1/a/a/a/v0/j/l;->l(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v2

    .line 2
    invoke-virtual {v0, p0, p1, v1}, Ls1/a/a/a/v0/j/l;->l(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object p0

    .line 3
    sget-object p1, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    if-ne v2, p1, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/a/a/a/v0/j/l$c$a;->c:Ls1/a/a/a/v0/j/l$c$a;

    if-eq v2, p1, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ls1/a/a/a/v0/j/l$c$a;->b:Ls1/a/a/a/v0/j/l$c$a;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static k(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-eqz p1, :cond_9

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 3
    invoke-static {p0, p1}, Ls1/a/a/a/v0/j/l;->p(Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/o;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v2, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ls1/a/a/a/v0/j/l;->f(Ljava/util/List;Ljava/util/List;)Ls1/k;

    move-result-object v2

    .line 5
    instance-of v4, p0, Ls1/a/a/a/v0/b/v;

    if-eqz v4, :cond_1

    .line 6
    invoke-static {p0, v0, p1, v1, v2}, Ls1/a/a/a/v0/j/l;->o(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z

    move-result p0

    return p0

    .line 7
    :cond_1
    instance-of v4, p0, Ls1/a/a/a/v0/b/k0;

    if-eqz v4, :cond_8

    .line 8
    move-object v4, p0

    check-cast v4, Ls1/a/a/a/v0/b/k0;

    .line 9
    move-object v5, p1

    check-cast v5, Ls1/a/a/a/v0/b/k0;

    .line 10
    invoke-interface {v4}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v6

    invoke-interface {v5}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-nez v7, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v6, v7}, Ls1/a/a/a/v0/j/l;->p(Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/o;)Z

    move-result v6

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v8

    :goto_1
    if-nez v6, :cond_4

    return v3

    .line 12
    :cond_4
    invoke-interface {v4}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    iget-object p0, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 14
    check-cast p0, Ls1/a/a/a/v0/m/l1/l;

    .line 15
    iget-object p1, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ls1/a/a/a/v0/m/l1/l;->e(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result p0

    return p0

    .line 17
    :cond_5
    invoke-interface {v4}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v5}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {p0, v0, p1, v1, v2}, Ls1/a/a/a/v0/j/l;->o(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v3, v8

    :cond_7
    return v3

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected callable: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/16 p0, 0x42

    .line 19
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0x41

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static o(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/a;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/b/a;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/k<",
            "Ls1/a/a/a/v0/m/l1/l;",
            "Ls1/a/a/a/v0/m/l1/b;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 1
    iget-object p0, p4, Ls1/k;->a:Ljava/lang/Object;

    .line 2
    check-cast p0, Ls1/a/a/a/v0/m/l1/l;

    .line 3
    iget-object p2, p4, Ls1/k;->b:Ljava/lang/Object;

    .line 4
    check-cast p2, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-virtual {p3}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Ls1/a/a/a/v0/m/l1/l;->f(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x4a

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw p0

    :cond_1
    const/16 p1, 0x48

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw p0
.end method

.method public static p(Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/o;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/o;->f()Ls1/a/a/a/v0/b/r;

    move-result-object p0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/o;->f()Ls1/a/a/a/v0/b/r;

    move-result-object p1

    invoke-static {p0, p1}, Ls1/a/a/a/v0/b/q;->b(Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static q(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;ZZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ls1/a/a/a/v0/b/a;",
            ">(TD;TD;ZZ)Z"
        }
    .end annotation

    sget-object v0, Ls1/a/a/a/v0/j/e;->a:Ls1/a/a/a/v0/j/e;

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->a()Ls1/a/a/a/v0/b/a;

    move-result-object v1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->a()Ls1/a/a/a/v0/b/a;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p2, p3}, Ls1/a/a/a/v0/j/e;->a(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->a()Ls1/a/a/a/v0/b/a;

    move-result-object p1

    .line 3
    sget v1, Ls1/a/a/a/v0/j/g;->a:I

    .line 4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->a()Ls1/a/a/a/v0/b/a;

    move-result-object p0

    invoke-static {p0, v1}, Ls1/a/a/a/v0/j/g;->b(Ls1/a/a/a/v0/b/a;Ljava/util/Set;)V

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/a;

    .line 7
    invoke-virtual {v0, p1, v1, p2, p3}, Ls1/a/a/a/v0/j/e;->a(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/16 p0, 0xc

    .line 8
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v1

    :cond_4
    const/16 p0, 0xb

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v1
.end method

.method public static r(Ls1/a/a/a/v0/b/b;Ls1/z/b/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/b/b;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/b;

    .line 2
    invoke-interface {v2}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v3

    sget-object v4, Ls1/a/a/a/v0/b/q;->g:Ls1/a/a/a/v0/b/r;

    if-ne v3, v4, :cond_0

    .line 3
    invoke-static {v2, p1}, Ls1/a/a/a/v0/j/l;->r(Ls1/a/a/a/v0/b/b;Ls1/z/b/l;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/q;->g:Ls1/a/a/a/v0/b/r;

    if-eq v1, v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    sget-object v2, Ls1/a/a/a/v0/b/q;->k:Ls1/a/a/a/v0/b/r;

    goto :goto_5

    .line 8
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v0

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/b;

    .line 9
    invoke-interface {v4}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v4

    if-nez v3, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {v4, v3}, Ls1/a/a/a/v0/b/q;->b(Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    :goto_3
    move-object v3, v4

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    goto :goto_4

    .line 12
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/b;

    .line 13
    invoke-interface {v4}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/a/a/a/v0/b/q;->b(Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_9

    :cond_a
    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_b
    move-object v2, v3

    :goto_5
    if-nez v2, :cond_c

    :goto_6
    move-object v2, v0

    goto :goto_7

    .line 15
    :cond_c
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v3

    sget-object v4, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    if-ne v3, v4, :cond_e

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/b;

    .line 17
    invoke-interface {v3}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    if-eq v4, v5, :cond_d

    invoke-interface {v3}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    .line 18
    :cond_e
    invoke-virtual {v2}, Ls1/a/a/a/v0/b/r;->d()Ls1/a/a/a/v0/b/r;

    move-result-object v2

    :cond_f
    :goto_7
    if-nez v2, :cond_11

    if-eqz p1, :cond_10

    .line 19
    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_10
    sget-object v1, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    goto :goto_8

    :cond_11
    move-object v1, v2

    .line 21
    :goto_8
    instance-of v3, p0, Ls1/a/a/a/v0/b/h1/e0;

    if-eqz v3, :cond_14

    .line 22
    move-object v3, p0

    check-cast v3, Ls1/a/a/a/v0/b/h1/e0;

    if-eqz v1, :cond_13

    .line 23
    iput-object v1, v3, Ls1/a/a/a/v0/b/h1/e0;->i:Ls1/a/a/a/v0/b/r;

    .line 24
    check-cast p0, Ls1/a/a/a/v0/b/k0;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k0;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/j0;

    if-nez v2, :cond_12

    move-object v3, v0

    goto :goto_a

    :cond_12
    move-object v3, p1

    .line 25
    :goto_a
    invoke-static {v1, v3}, Ls1/a/a/a/v0/j/l;->r(Ls1/a/a/a/v0/b/b;Ls1/z/b/l;)V

    goto :goto_9

    :cond_13
    const/16 p0, 0x10

    .line 26
    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/e0;->X(I)V

    throw v0

    .line 27
    :cond_14
    instance-of p1, p0, Ls1/a/a/a/v0/b/h1/r;

    if-eqz p1, :cond_16

    .line 28
    check-cast p0, Ls1/a/a/a/v0/b/h1/r;

    if-eqz v1, :cond_15

    .line 29
    iput-object v1, p0, Ls1/a/a/a/v0/b/h1/r;->k:Ls1/a/a/a/v0/b/r;

    goto :goto_b

    :cond_15
    const/16 p0, 0x9

    .line 30
    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/r;->X(I)V

    throw v0

    .line 31
    :cond_16
    check-cast p0, Ls1/a/a/a/v0/b/h1/d0;

    .line 32
    iput-object v1, p0, Ls1/a/a/a/v0/b/h1/d0;->k:Ls1/a/a/a/v0/b/r;

    .line 33
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/d0;->o0()Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object p1

    if-eq v1, p1, :cond_17

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Ls1/a/a/a/v0/b/h1/d0;->e:Z

    :cond_17
    :goto_b
    return-void

    :cond_18
    const/16 p0, 0x6b

    .line 35
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_19
    const/16 p0, 0x69

    .line 36
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public static s(Ljava/util/Collection;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TH;>;",
            "Ls1/z/b/l<",
            "TH;",
            "Ls1/a/a/a/v0/b/a;",
            ">;)TH;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x4e

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "$this$map"

    .line 4
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transform"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-interface {p1, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-interface {p1, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/a;

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    invoke-interface {p1, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/a;

    if-eqz v7, :cond_7

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/b/a;

    .line 13
    invoke-static {v7, v9}, Ls1/a/a/a/v0/j/l;->k(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    if-eqz v8, :cond_6

    .line 14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    invoke-static {v7, v5}, Ls1/a/a/a/v0/j/l;->k(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5, v7}, Ls1/a/a/a/v0/j/l;->k(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_7
    const/16 p0, 0x45

    .line 16
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 17
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    const/16 p0, 0x4f

    .line 18
    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 19
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_c

    .line 20
    invoke-static {v0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0x50

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2

    .line 21
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-interface {p1, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/a;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->a2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_e
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_f

    return-object v1

    .line 23
    :cond_f
    invoke-static {v0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    const/16 p0, 0x52

    invoke-static {p0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v2
.end method


# virtual methods
.method public final b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/k<",
            "Ls1/a/a/a/v0/m/l1/l;",
            "Ls1/a/a/a/v0/m/l1/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    iget-object v0, p3, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ls1/a/a/a/v0/m/l1/l;

    .line 4
    iget-object p3, p3, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast p3, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p2

    invoke-virtual {v0, p3, p1, p2}, Ls1/a/a/a/v0/m/l1/l;->e(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0x2e

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_3
    const/16 p1, 0x2d

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_4
    const/16 p1, 0x2c

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)Ls1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;)",
            "Ls1/k<",
            "Ls1/a/a/a/v0/m/l1/l;",
            "Ls1/a/a/a/v0/m/l1/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 1
    new-instance v1, Ls1/a/a/a/v0/m/l1/l;

    iget-object v2, p0, Ls1/a/a/a/v0/j/l;->a:Ls1/a/a/a/v0/m/l1/e;

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/m/l1/l;-><init>(Ls1/a/a/a/v0/m/l1/e;)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ls1/a/a/a/v0/j/l$d;

    invoke-direct {p1, p0, v0}, Ls1/a/a/a/v0/j/l$d;-><init>(Ls1/a/a/a/v0/j/l;Ljava/util/Map;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ls1/a/a/a/v0/j/l$d;

    invoke-direct {p1, p0, v0}, Ls1/a/a/a/v0/j/l$d;-><init>(Ls1/a/a/a/v0/j/l;Ljava/util/Map;)V

    .line 7
    :goto_1
    new-instance p2, Ls1/k;

    invoke-direct {p2, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    const/16 p1, 0x2b

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_3
    const/16 p1, 0x2a

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_4
    const/16 p1, 0x29

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_5
    const/16 p1, 0x28

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public h(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b;",
            ">;",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/j/k;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    if-eqz v0, :cond_14

    if-eqz p3, :cond_13

    if-eqz v1, :cond_12

    .line 1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/b/b;

    if-eqz v6, :cond_6

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-static {}, Ls1/a/a/a/v0/o/m;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v11

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/b/b;

    move-object/from16 v14, p0

    .line 6
    invoke-virtual {v14, v13, v6, v1}, Ls1/a/a/a/v0/j/l;->l(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v15

    invoke-virtual {v15}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v15

    .line 7
    invoke-interface {v13}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ls1/a/a/a/v0/b/q;->e(Ls1/a/a/a/v0/b/r;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {v13, v6}, Ls1/a/a/a/v0/b/q;->f(Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z

    move-result v16

    if-eqz v16, :cond_0

    move/from16 v16, v8

    goto :goto_2

    :cond_0
    move/from16 v16, v7

    .line 8
    :goto_2
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_3

    if-eq v15, v9, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v16, :cond_2

    .line 9
    invoke-virtual {v2, v13, v6}, Ls1/a/a/a/v0/j/k;->c(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V

    .line 10
    :cond_2
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v16, :cond_4

    .line 11
    invoke-virtual {v11, v13}, Ls1/a/a/a/v0/o/m;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object/from16 v14, p0

    .line 13
    invoke-virtual {v2, v6, v11}, Ls1/a/a/a/v0/j/k;->d(Ls1/a/a/a/v0/b/b;Ljava/util/Collection;)V

    .line 14
    invoke-interface {v4, v10}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    move-object/from16 v14, p0

    const/16 v0, 0x39

    .line 15
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_7
    move-object/from16 v14, p0

    .line 16
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v0, v9, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v5, "$this$all"

    .line 18
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    .line 20
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ls1/a/a/a/v0/b/b;

    .line 22
    invoke-interface {v6}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v6

    if-ne v6, v0, :cond_b

    move v6, v8

    goto :goto_3

    :cond_b
    move v6, v7

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_c
    :goto_4
    move v7, v8

    :goto_5
    if-eqz v7, :cond_d

    .line 24
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/b;

    .line 25
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v1, v2}, Ls1/a/a/a/v0/j/l;->e(Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V

    goto :goto_6

    .line 26
    :cond_d
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 27
    :goto_7
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "descriptors"

    .line 28
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/b/b;

    if-nez v5, :cond_f

    goto :goto_9

    .line 31
    :cond_f
    invoke-interface {v5}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v7

    invoke-interface {v6}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v8

    invoke-static {v7, v8}, Ls1/a/a/a/v0/b/q;->b(Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_e

    :goto_9
    move-object v5, v6

    goto :goto_8

    .line 33
    :cond_10
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 34
    new-instance v4, Ls1/a/a/a/v0/j/n;

    invoke-direct {v4}, Ls1/a/a/a/v0/j/n;-><init>()V

    new-instance v6, Ls1/a/a/a/v0/j/o;

    invoke-direct {v6, v2, v5}, Ls1/a/a/a/v0/j/o;-><init>(Ls1/a/a/a/v0/j/k;Ls1/a/a/a/v0/b/b;)V

    invoke-static {v5, v0, v4, v6}, Ls1/a/a/a/v0/j/l;->g(Ljava/lang/Object;Ljava/util/Collection;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v4

    .line 35
    invoke-static {v4, v1, v2}, Ls1/a/a/a/v0/j/l;->e(Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V

    goto :goto_7

    :cond_11
    return-void

    :cond_12
    move-object/from16 v14, p0

    const/16 v0, 0x35

    .line 36
    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_13
    move-object/from16 v14, p0

    const/16 v0, 0x34

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_14
    move-object/from16 v14, p0

    const/16 v0, 0x33

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_15
    move-object/from16 v14, p0

    const/16 v0, 0x32

    invoke-static {v0}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3
.end method

.method public l(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/l$c;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Ls1/a/a/a/v0/j/l;->m(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x12

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0

    :cond_1
    const/16 p1, 0x11

    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v0
.end method

.method public m(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;Z)Ls1/a/a/a/v0/j/l$c;
    .locals 11

    sget-object v0, Ls1/a/a/a/v0/j/h$a;->a:Ls1/a/a/a/v0/j/h$a;

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Ls1/a/a/a/v0/j/l;->n(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object p4

    .line 2
    invoke-virtual {p4}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    sget-object v2, Ls1/a/a/a/v0/j/l;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "External condition"

    const-string v7, "External condition failed"

    const/4 v8, 0x2

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/j/h;

    .line 4
    invoke-interface {v5}, Ls1/a/a/a/v0/j/h;->a()Ls1/a/a/a/v0/j/h$a;

    move-result-object v9

    if-ne v9, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v5}, Ls1/a/a/a/v0/j/h;->a()Ls1/a/a/a/v0/j/h$a;

    move-result-object v9

    sget-object v10, Ls1/a/a/a/v0/j/h$a;->b:Ls1/a/a/a/v0/j/h$a;

    if-ne v9, v10, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v5, p1, p2, p3}, Ls1/a/a/a/v0/j/h;->b(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/h$b;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v6}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-static {v7}, Ls1/a/a/a/v0/j/l$c;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    return-object p1

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-object p4

    .line 10
    :cond_7
    sget-object p4, Ls1/a/a/a/v0/j/l;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/j/h;

    .line 11
    invoke-interface {v1}, Ls1/a/a/a/v0/j/h;->a()Ls1/a/a/a/v0/j/h$a;

    move-result-object v2

    if-eq v2, v0, :cond_8

    goto :goto_2

    .line 12
    :cond_8
    invoke-interface {v1, p1, p2, p3}, Ls1/a/a/a/v0/j/h;->b(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/h$b;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_a

    if-eq v2, v8, :cond_9

    goto :goto_2

    .line 14
    :cond_9
    invoke-static {v6}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    return-object p1

    .line 15
    :cond_a
    invoke-static {v7}, Ls1/a/a/a/v0/j/l$c;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    return-object p1

    .line 16
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Contract violation in "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " condition. It\'s not supposed to end with success"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_c
    sget-object p1, Ls1/a/a/a/v0/j/l$c;->b:Ls1/a/a/a/v0/j/l$c;

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    invoke-static {v3}, Ls1/a/a/a/v0/j/l$c;->a(I)V

    const/4 p1, 0x0

    throw p1

    :cond_e
    const/4 p1, 0x0

    const/16 p2, 0x15

    .line 18
    invoke-static {p2}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw p1

    :cond_f
    const/4 p1, 0x0

    const/16 p2, 0x14

    invoke-static {p2}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw p1
.end method

.method public n(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Z)Ls1/a/a/a/v0/j/l$c;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    if-eqz v2, :cond_12

    .line 1
    invoke-static/range {p1 .. p2}, Ls1/a/a/a/v0/j/l;->i(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Ls1/a/a/a/v0/j/l;->d(Ls1/a/a/a/v0/b/a;)Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-static/range {p2 .. p2}, Ls1/a/a/a/v0/j/l;->d(Ls1/a/a/a/v0/b/a;)Ljava/util/List;

    move-result-object v5

    .line 4
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    .line 5
    invoke-interface/range {p2 .. p2}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    .line 6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    if-eq v8, v9, :cond_3

    .line 7
    :goto_0
    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "Type parameter number mismatch"

    if-ge v10, v2, :cond_2

    .line 8
    sget-object v2, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/e0;

    move-object v6, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/e0;

    invoke-interface {v2, v1, v6}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {v3}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3}, Ls1/a/a/a/v0/j/l$c;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    .line 11
    :cond_3
    invoke-virtual {v0, v6, v7}, Ls1/a/a/a/v0/j/l;->f(Ljava/util/List;Ljava/util/List;)Ls1/k;

    move-result-object v8

    move v9, v10

    .line 12
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 13
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/b/w0;

    if-eqz v11, :cond_a

    if-eqz v13, :cond_9

    .line 14
    invoke-interface {v11}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v11

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v13}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v13, v15, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/m/e0;

    .line 18
    invoke-virtual {v14}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v15

    .line 19
    :cond_5
    invoke-interface {v15}, Ljava/util/ListIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 20
    invoke-interface {v15}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ls1/a/a/a/v0/m/e0;

    .line 21
    invoke-virtual {v0, v13, v12, v8}, Ls1/a/a/a/v0/j/l;->b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 22
    invoke-interface {v15}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_6
    :goto_3
    move v12, v10

    goto :goto_4

    :cond_7
    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_8

    const-string v1, "Type parameter bounds mismatch"

    .line 23
    invoke-static {v1}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_9
    const/16 v1, 0x30

    .line 24
    invoke-static {v1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_a
    const/16 v1, 0x2f

    invoke-static {v1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_b
    move v6, v10

    .line 25
    :goto_5
    move-object v7, v4

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_d

    .line 26
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/m/e0;

    move-object v9, v5

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, v7, v9, v8}, Ls1/a/a/a/v0/j/l;->b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/k;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v1, "Value parameter type mismatch"

    .line 27
    invoke-static {v1}, Ls1/a/a/a/v0/j/l$c;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 28
    :cond_d
    instance-of v4, v1, Ls1/a/a/a/v0/b/v;

    if-eqz v4, :cond_e

    instance-of v4, v2, Ls1/a/a/a/v0/b/v;

    if-eqz v4, :cond_e

    move-object v4, v1

    check-cast v4, Ls1/a/a/a/v0/b/v;

    invoke-interface {v4}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v4

    move-object v5, v2

    check-cast v5, Ls1/a/a/a/v0/b/v;

    invoke-interface {v5}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v5

    if-eq v4, v5, :cond_e

    const-string v1, "Incompatible suspendability"

    .line 29
    invoke-static {v1}, Ls1/a/a/a/v0/j/l$c;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    :cond_e
    if-eqz p3, :cond_10

    .line 30
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 31
    invoke-interface/range {p2 .. p2}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    .line 32
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v12, 0x1

    goto :goto_6

    :cond_f
    move v12, v10

    :goto_6
    if-nez v12, :cond_10

    .line 33
    iget-object v4, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 34
    check-cast v4, Ls1/a/a/a/v0/m/l1/l;

    .line 35
    iget-object v5, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 36
    check-cast v5, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v1

    invoke-virtual {v4, v5, v2, v1}, Ls1/a/a/a/v0/m/l1/l;->f(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "Return type mismatch"

    .line 37
    invoke-static {v1}, Ls1/a/a/a/v0/j/l$c;->b(Ljava/lang/String;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    return-object v1

    .line 38
    :cond_10
    sget-object v1, Ls1/a/a/a/v0/j/l$c;->b:Ls1/a/a/a/v0/j/l$c;

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    invoke-static {v10}, Ls1/a/a/a/v0/j/l$c;->a(I)V

    throw v3

    :cond_12
    const/16 v1, 0x1d

    .line 39
    invoke-static {v1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3

    :cond_13
    const/16 v1, 0x1c

    invoke-static {v1}, Ls1/a/a/a/v0/j/l;->a(I)V

    throw v3
.end method
