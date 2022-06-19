.class public Lio/agora/rtc/gdp/OffscreenSurface;
.super Lio/agora/rtc/gdp/EglSurfaceBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/agora/rtc/gdp/EglCore;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gdp/EglSurfaceBase;-><init>(Lio/agora/rtc/gdp/EglCore;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lio/agora/rtc/gdp/EglSurfaceBase;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method
