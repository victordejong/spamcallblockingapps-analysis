.class public Lio/agora/rtc/mediaio/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final MAX_TEXTURE_COPY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lio/agora/rtc/gl/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field private mCopyTo2DTexture:Z

.field private mHeight:I

.field private mWidth:I

.field private final oesTextureId:I

.field private pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field public final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

.field private yuvConverter:Lio/agora/rtc/gl/YuvConverter;


# direct methods
.method private constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 8
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 9
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 11
    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 12
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->createDummyPbufferSurface()V

    .line 14
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 15
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 16
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 17
    new-instance p1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$4;

    invoke-direct {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$4;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {v0, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 19
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZII)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    .line 25
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 26
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 27
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 28
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 29
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 30
    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 31
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->createDummyPbufferSurface()V

    .line 33
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iput-boolean p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    if-eqz p3, :cond_0

    .line 35
    iput p4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mWidth:I

    .line 36
    iput p5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mHeight:I

    .line 37
    new-instance p1, Lio/agora/rtc/gl/TextureTransformer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lio/agora/rtc/gl/TextureTransformer;-><init>(I)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    :cond_0
    const p1, 0x8d65

    .line 38
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 39
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 40
    new-instance p1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;

    invoke-direct {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 41
    iget-object p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {p3}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 42
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZII)V

    return-void
.end method

.method public static synthetic access$1000(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/gl/YuvConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/gl/YuvConverter;)Lio/agora/rtc/gl/YuvConverter;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    return-object p1
.end method

.method public static synthetic access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p0
.end method

.method public static synthetic access$202(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method public static synthetic access$302(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method public static synthetic access$400(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    return p0
.end method

.method public static synthetic access$402(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method public static synthetic access$500(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method public static synthetic access$600(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    return p0
.end method

.method public static synthetic access$702(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    return p1
.end method

.method public static synthetic access$800(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    return p0
.end method

.method public static synthetic access$802(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    return p1
.end method

.method public static synthetic access$900(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->release()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;

    invoke-direct {v0, p1, v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 9

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILjava/lang/String;)V

    invoke-static {v8, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-object p0
.end method

.method private release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/agora/rtc/gl/YuvConverter;->release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureTransformer;->release()V

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 7
    iget v2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 8
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 9
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 5
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->updateTexImage()V

    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 6
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 7
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    .line 8
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    if-eqz v0, :cond_1

    .line 9
    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    sget-object v2, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v2}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v2

    iget v3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mWidth:I

    iget v7, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v7}, Lio/agora/rtc/gl/TextureTransformer;->copy(IIII)I

    move-result v2

    .line 10
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    sget-object v3, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-interface/range {v1 .. v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    invoke-interface {v0, v1, v4, v5, v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(I[FJ)V

    :cond_2
    :goto_0
    return-void

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateTexImage()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createTextureBuffer(IILandroid/graphics/Matrix;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 11

    .line 1
    new-instance v10, Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-virtual {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v1

    sget-object v4, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    iget v5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    iget-object v7, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    new-instance v9, Lio/agora/rtc/mediaio/SurfaceTextureHelper$10;

    invoke-direct {v9, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$10;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    move-object v0, v10

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;)V

    return-object v10
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;

    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public returnTextureFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;

    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    iget-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTextureHelper listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$6;

    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$6;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public textureToYuv(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v0

    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 2
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;

    invoke-direct {v2, p0, v0, p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;[Lio/agora/rtc/gl/VideoFrame$I420Buffer;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)V

    invoke-static {v1, v2}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "textureToByteBuffer called with unexpected textureId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
