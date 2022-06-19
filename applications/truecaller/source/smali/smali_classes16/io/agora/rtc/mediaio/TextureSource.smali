.class public abstract Lio/agora/rtc/mediaio/TextureSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSource;
.implements Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# instance fields
.field public mConsumer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/mediaio/IVideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight:I

.field public mPixelFormat:I

.field public mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

.field public mWidth:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    .line 3
    iput p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    const/16 v0, 0xb

    .line 4
    iput v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mPixelFormat:I

    const-string v0, "TexCamThread"

    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 6
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;IIZ)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    .line 10
    iput p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    const/16 v0, 0xb

    .line 11
    iput v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mPixelFormat:I

    const-string v0, "TexCamThreadOesTo2D"

    .line 12
    invoke-static {v0, p1, p4, p2, p3}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 13
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 14
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getCaptureType()I
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->CAMERA:Lio/agora/rtc/mediaio/MediaIO$CaptureType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->intValue()I

    move-result v0

    return v0
.end method

.method public getContentHint()I
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->NONE:Lio/agora/rtc/mediaio/MediaIO$ContentHint;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->intValue()I

    move-result v0

    return v0
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCapturerClosed()V
.end method

.method public abstract onCapturerOpened()Z
.end method

.method public abstract onCapturerStarted()Z
.end method

.method public abstract onCapturerStopped()V
.end method

.method public onDispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerClosed()V

    return-void
.end method

.method public onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerOpened()Z

    move-result p1

    return p1
.end method

.method public onStart()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStarted()Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStopped()V

    return-void
.end method

.method public onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V
    .locals 0

    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->stopListening()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-void
.end method
