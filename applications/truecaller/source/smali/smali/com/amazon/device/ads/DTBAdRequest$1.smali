.class public synthetic Lcom/amazon/device/ads/DTBAdRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/MRAIDPolicy;->values()[Lcom/amazon/device/ads/MRAIDPolicy;

    const/4 v0, 0x5

    new-array v1, v0, [I

    sput-object v1, Lcom/amazon/device/ads/DTBAdRequest$1;->$SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/amazon/device/ads/MRAIDPolicy;->AUTO_DETECT:Lcom/amazon/device/ads/MRAIDPolicy;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest$1;->$SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I

    sget-object v3, Lcom/amazon/device/ads/MRAIDPolicy;->DFP:Lcom/amazon/device/ads/MRAIDPolicy;

    const/4 v3, 0x2

    aput v3, v1, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/device/ads/DTBAdRequest$1;->$SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I

    sget-object v4, Lcom/amazon/device/ads/MRAIDPolicy;->MOPUB:Lcom/amazon/device/ads/MRAIDPolicy;

    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x4

    :try_start_3
    sget-object v3, Lcom/amazon/device/ads/DTBAdRequest$1;->$SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I

    sget-object v4, Lcom/amazon/device/ads/MRAIDPolicy;->CUSTOM:Lcom/amazon/device/ads/MRAIDPolicy;

    aput v2, v3, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest$1;->$SwitchMap$com$amazon$device$ads$MRAIDPolicy:[I

    sget-object v3, Lcom/amazon/device/ads/MRAIDPolicy;->NONE:Lcom/amazon/device/ads/MRAIDPolicy;

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
