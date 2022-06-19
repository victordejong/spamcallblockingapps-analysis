.class public synthetic Lcom/amazon/device/ads/DtbAdRequestParamsBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$amazon$device$ads$AdType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdType;->values()[Lcom/amazon/device/ads/AdType;

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder$1;->$SwitchMap$com$amazon$device$ads$AdType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
