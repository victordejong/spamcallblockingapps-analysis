.class public synthetic Lcom/amazon/device/ads/AdRegistration$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$amazon$device$ads$DTBBannerType:[I

.field public static final synthetic $SwitchMap$com$amazon$device$ads$DTBSlotType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/DTBSlotType;->values()[Lcom/amazon/device/ads/DTBSlotType;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBSlotType:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lcom/amazon/device/ads/DTBSlotType;->SLOT_320_50:Lcom/amazon/device/ads/DTBSlotType;

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v4, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBSlotType:[I

    sget-object v5, Lcom/amazon/device/ads/DTBSlotType;->SLOT_300_250:Lcom/amazon/device/ads/DTBSlotType;

    aput v1, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBSlotType:[I

    sget-object v6, Lcom/amazon/device/ads/DTBSlotType;->SLOT_728_90:Lcom/amazon/device/ads/DTBSlotType;

    aput v4, v5, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBSlotType:[I

    sget-object v6, Lcom/amazon/device/ads/DTBSlotType;->SLOT_SMART:Lcom/amazon/device/ads/DTBSlotType;

    aput v0, v5, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    invoke-static {}, Lcom/amazon/device/ads/DTBBannerType;->values()[Lcom/amazon/device/ads/DTBBannerType;

    new-array v0, v1, [I

    sput-object v0, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBBannerType:[I

    :try_start_4
    sget-object v4, Lcom/amazon/device/ads/DTBBannerType;->PHONE_BANNER:Lcom/amazon/device/ads/DTBBannerType;

    aput v3, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/device/ads/AdRegistration$1;->$SwitchMap$com$amazon$device$ads$DTBBannerType:[I

    sget-object v2, Lcom/amazon/device/ads/DTBBannerType;->TABLET_BANNER:Lcom/amazon/device/ads/DTBBannerType;

    aput v1, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
