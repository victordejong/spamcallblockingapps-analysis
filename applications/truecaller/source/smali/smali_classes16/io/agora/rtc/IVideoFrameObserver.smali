.class public abstract Lio/agora/rtc/IVideoFrameObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/IVideoFrameObserver$VideoFrame;
    }
.end annotation


# static fields
.field public static final FRAME_TYPE_RGBA:I = 0x2

.field public static final FRAME_TYPE_YUV420:I = 0x0

.field public static final FRAME_TYPE_YUV422:I = 0x1

.field public static final POSITION_POST_CAPTURER:I = 0x1

.field public static final POSITION_PRE_ENCODER:I = 0x4

.field public static final POSITION_PRE_RENDERER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMirrorApplied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getObservedFramePosition()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRotationApplied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoFormatPreference()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultipleChannelFrameWanted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCaptureVideoFrame(Lio/agora/rtc/IVideoFrameObserver$VideoFrame;)Z
.end method

.method public onPreEncodeVideoFrame(Lio/agora/rtc/IVideoFrameObserver$VideoFrame;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onRenderVideoFrame(ILio/agora/rtc/IVideoFrameObserver$VideoFrame;)Z
.end method

.method public onRenderVideoFrameEx(Ljava/lang/String;ILio/agora/rtc/IVideoFrameObserver$VideoFrame;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
