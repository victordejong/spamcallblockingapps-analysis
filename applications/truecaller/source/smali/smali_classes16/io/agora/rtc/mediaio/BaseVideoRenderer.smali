.class public Lio/agora/rtc/mediaio/BaseVideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final ERROR_EGL:Ljava/lang/String; = "Only one egl surface allowed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final eglRenderer:Lio/agora/rtc/gl/EglRenderer;

.field private mBufferType:I

.field private mHasEglSurface:Z

.field private mPixelFormat:I

.field private mStarted:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    .line 3
    iput v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    .line 6
    new-instance v0, Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method private rendI420Frame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0, p3, p4}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p2, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p2, p1, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 6
    invoke-virtual {p2}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method

.method private rendI420Frame([BIIIIJ)V
    .locals 0

    if-eqz p1, :cond_2

    .line 7
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p3, p4}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance p2, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p2, p1, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 10
    iget-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 11
    invoke-virtual {p2}, Lio/agora/rtc/gl/VideoFrame;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private rendRGBAFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lio/agora/rtc/gl/RgbaBuffer;

    new-instance v0, Lio/agora/rtc/mediaio/BaseVideoRenderer$2;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer$2;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    invoke-direct {p2, p1, p3, p4, v0}, Lio/agora/rtc/gl/RgbaBuffer;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V

    .line 2
    new-instance p1, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p1, p2, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 3
    iget-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p2, p1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 4
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method

.method private rendRGBAFrame([BIIIIJ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 5
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    new-instance p2, Lio/agora/rtc/gl/RgbaBuffer;

    new-instance v0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    invoke-direct {p2, p1, p3, p4, v0}, Lio/agora/rtc/gl/RgbaBuffer;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V

    .line 8
    new-instance p1, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p1, p2, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 9
    iget-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p2, p1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 10
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method private rendTextureFrame(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IIIJ[F)V
    .locals 12

    move-object v0, p0

    .line 1
    invoke-static/range {p8 .. p8}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v7

    .line 2
    new-instance v11, Lio/agora/rtc/gl/TextureBufferImpl;

    iget-object v1, v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v1}, Lio/agora/rtc/gl/EglRenderer;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v2

    new-instance v10, Lio/agora/rtc/mediaio/BaseVideoRenderer$1;

    invoke-direct {v10, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$1;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    move v3, p3

    move/from16 v4, p4

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v10}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;)V

    .line 3
    new-instance v1, Lio/agora/rtc/gl/VideoFrame;

    move/from16 v2, p5

    move-wide/from16 v3, p6

    invoke-direct {v1, v11, v2, v3, v4}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 4
    iget-object v2, v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v2, v1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 5
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method


# virtual methods
.method public consume(IIIIIJ[F)V
    .locals 10

    move v0, p2

    move-object v9, p0

    .line 1
    iget-boolean v1, v9, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    .line 4
    invoke-direct/range {v0 .. v8}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendTextureFrame(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IIIJ[F)V

    :cond_2
    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 6
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendI420Frame(Ljava/nio/ByteBuffer;IIIIJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 7
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame(Ljava/nio/ByteBuffer;IIIIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public consume([BIIIIJ)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 9
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendI420Frame([BIIIIJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 10
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame([BIIIIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBufferType()I
    .locals 2

    .line 1
    iget v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer type is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEGLContextHandle()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglRenderer;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/rtc/gl/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEglRender()Lio/agora/rtc/gl/EglRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    return-object v0
.end method

.method public getPixelFormat()I
    .locals 2

    .line 1
    iget v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel format is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;)V
    .locals 2

    .line 1
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {v1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc/gl/EglRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 4
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    new-instance v3, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;

    invoke-direct {v3, p0, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lio/agora/rtc/gl/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglRenderer;->release()V

    return-void
.end method

.method public setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    return-void
.end method

.method public setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    return-void
.end method

.method public setRenderSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 7
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 8
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only one egl surface allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurface:Landroid/view/Surface;

    .line 4
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only one egl surface allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderView(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 4
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one egl surface allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderView(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .line 7
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 8
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mTextureView:Landroid/view/TextureView;

    .line 10
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one egl surface allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    return v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 4
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    new-instance v2, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;

    invoke-direct {v2, p0, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lio/agora/rtc/gl/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
