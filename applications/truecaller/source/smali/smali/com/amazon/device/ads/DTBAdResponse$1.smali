.class public synthetic Lcom/amazon/device/ads/DTBAdResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$amazon$device$ads$AdType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdType;->values()[Lcom/amazon/device/ads/AdType;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/amazon/device/ads/DTBAdResponse$1;->$SwitchMap$com$amazon$device$ads$AdType:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/amazon/device/ads/DTBAdResponse$1;->$SwitchMap$com$amazon$device$ads$AdType:[I

    sget-object v4, Lcom/amazon/device/ads/AdType;->DISPLAY:Lcom/amazon/device/ads/AdType;

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/amazon/device/ads/DTBAdResponse$1;->$SwitchMap$com$amazon$device$ads$AdType:[I

    sget-object v3, Lcom/amazon/device/ads/AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdType;

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
