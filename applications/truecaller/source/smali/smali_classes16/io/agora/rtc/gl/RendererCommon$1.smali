.class public synthetic Lio/agora/rtc/gl/RendererCommon$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon$ScalingType;->values()[Lio/agora/rtc/gl/RendererCommon$ScalingType;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lio/agora/rtc/gl/RendererCommon$1;->$SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lio/agora/rtc/gl/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lio/agora/rtc/gl/RendererCommon$1;->$SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType:[I

    sget-object v4, Lio/agora/rtc/gl/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lio/agora/rtc/gl/RendererCommon$1;->$SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType:[I

    sget-object v3, Lio/agora/rtc/gl/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
