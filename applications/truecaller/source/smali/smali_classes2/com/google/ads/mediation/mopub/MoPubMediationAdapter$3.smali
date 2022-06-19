.class public synthetic Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

.field public static final synthetic $SwitchMap$com$mopub$nativeads$NativeErrorCode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    invoke-static {}, Lcom/mopub/nativeads/NativeErrorCode;->values()[Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v0, 0x11

    new-array v1, v0, [I

    sput-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v4, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v1, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v4, v5, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v5, v6, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v6, 0x5

    :try_start_4
    sget-object v7, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v6, v7, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v7, 0x6

    :try_start_5
    sget-object v8, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v7, v8, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v8, 0x7

    :try_start_6
    sget-object v9, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v8, v9, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v9, 0x8

    :try_start_7
    sget-object v10, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v9, v10, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v10, 0x9

    :try_start_8
    sget-object v11, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v10, v11, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v11, 0xa

    :try_start_9
    sget-object v12, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v11, v12, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v12, 0xb

    :try_start_a
    sget-object v13, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v12, v13, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v13, 0xc

    :try_start_b
    sget-object v14, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v13, v14, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v14, 0xd

    :try_start_c
    sget-object v15, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v14, v15, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v15, 0xe

    :try_start_d
    sget-object v16, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v15, v16, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v16, 0xf

    :try_start_e
    sget-object v17, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v16, v17, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v17, 0x10

    :try_start_f
    sget-object v18, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    aput v17, v18, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 2
    :catch_f
    invoke-static {}, Lcom/mopub/mobileads/MoPubErrorCode;->values()[Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v0, 0x23

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    :try_start_10
    aput v3, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v1, v0, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v4, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v5, v0, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v6, v0, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v7, v0, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v8, v0, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v9, v0, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v10, v0, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v11, v0, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v12, v0, v12
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v13, v0, v13
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v14, v0, v14
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v15, v0, v15
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v16, v0, v16
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    aput v17, v0, v17
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v1, 0x11

    aput v1, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v1, 0x12

    aput v1, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v1, 0x13

    aput v1, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v1, 0x14

    aput v1, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    const/16 v0, 0x1a

    :try_start_24
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x15

    aput v2, v1, v0
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x1b

    const/16 v3, 0x16

    aput v3, v1, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x1c

    const/16 v3, 0x17

    aput v3, v1, v2
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x1d

    const/16 v3, 0x18

    aput v3, v1, v2
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x1e

    const/16 v3, 0x19

    aput v3, v1, v2
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v2, 0x21

    aput v0, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/16 v1, 0x22

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
