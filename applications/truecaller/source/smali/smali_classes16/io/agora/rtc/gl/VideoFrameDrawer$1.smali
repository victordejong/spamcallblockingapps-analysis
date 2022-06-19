.class public synthetic Lio/agora/rtc/gl/VideoFrameDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->values()[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lio/agora/rtc/gl/VideoFrameDrawer$1;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lio/agora/rtc/gl/VideoFrameDrawer$1;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    sget-object v3, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
