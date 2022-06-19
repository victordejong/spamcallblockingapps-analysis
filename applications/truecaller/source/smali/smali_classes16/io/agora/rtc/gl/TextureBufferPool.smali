.class public Lio/agora/rtc/gl/TextureBufferPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureBufferPool"

.field private static final VERBOSE:Z = false

.field private static final nextSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private dropCount:I

.field private final eglBase:Lio/agora/rtc/gl/EglBase;

.field private final eglContext:Lio/agora/rtc/gl/EglBase$Context;

.field private final glPixelFormat:I

.field private final handler:Landroid/os/Handler;

.field private isQuitting:Z

.field private final keepBufferCnt:I

.field private final maxBufferCnt:I

.field private final name:Ljava/lang/String;

.field private final ownGlThread:Z

.field private final shrinkPool:Z

.field private final textureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final yuvConverter:Lio/agora/rtc/gl/YuvConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/agora/rtc/gl/TextureBufferPool;->nextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->shrinkPool:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->isQuitting:Z

    .line 6
    iput v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->dropCount:I

    .line 7
    sget-object v1, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init buffer pool, ownGlThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->name:Ljava/lang/String;

    .line 9
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->maxBufferCnt:I

    const/4 p2, 0x3

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->keepBufferCnt:I

    .line 11
    iput p3, p0, Lio/agora/rtc/gl/TextureBufferPool;->glPixelFormat:I

    .line 12
    iput-object p4, p0, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    .line 13
    iput-boolean p5, p0, Lio/agora/rtc/gl/TextureBufferPool;->ownGlThread:Z

    .line 14
    iput-object p6, p0, Lio/agora/rtc/gl/TextureBufferPool;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p7, Lio/agora/rtc/gl/YuvConverter;

    invoke-direct {p7}, Lio/agora/rtc/gl/YuvConverter;-><init>()V

    :goto_0
    iput-object p7, p0, Lio/agora/rtc/gl/TextureBufferPool;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    .line 16
    invoke-virtual {p6}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 17
    new-instance p1, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {p1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;Lio/agora/rtc/gl/TextureBufferPool$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/gl/TextureBufferPool;-><init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lio/agora/rtc/gl/TextureBufferPool;ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/agora/rtc/gl/TextureBufferPool;->doTextureCopy(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/gl/TextureBufferPool;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/gl/TextureBufferPool;->isQuitting:Z

    return p0
.end method

.method public static synthetic access$302(Lio/agora/rtc/gl/TextureBufferPool;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->isQuitting:Z

    return p1
.end method

.method public static synthetic access$400(Lio/agora/rtc/gl/TextureBufferPool;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/TextureBufferPool;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lio/agora/rtc/gl/TextureBufferPool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/TextureBufferPool;->release()V

    return-void
.end method

.method public static synthetic access$600(Lio/agora/rtc/gl/TextureBufferPool;Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/TextureBufferPool;->releaseTextureFramebuffer(Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;)V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/gl/TextureBufferPool;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private acquireTextureFramebuffer()Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    .line 2
    iget-boolean v3, v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v0, 0x1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lio/agora/rtc/gl/TextureBufferPool;->maxBufferCnt:I

    if-lt v1, v3, :cond_2

    .line 4
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->dropCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->dropCount:I

    const-string v0, "Drop@TexPool"

    .line 5
    invoke-static {v0, v1}, Lio/agora/rtc/internal/ATrace;->traceCounter(Ljava/lang/String;I)V

    return-object v2

    :cond_2
    const/16 v1, 0xde1

    .line 6
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    move-result v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 8
    new-instance v4, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    aget v2, v2, v3

    invoke-direct {v4, v1, v2}, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;-><init>(II)V

    .line 9
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    .line 10
    :cond_3
    iput-boolean v0, v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    return-object v1
.end method

.method public static agoraFrameTypeToTextureBufferType(I)Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
    .locals 1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    goto :goto_0

    :cond_0
    sget-object p0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    :goto_0
    return-object p0
.end method

.method public static create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/TextureBufferPool;
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
    new-instance v0, Lio/agora/rtc/gl/TextureBufferPool$1;

    invoke-direct {v0, p1, p0, v1, p2}, Lio/agora/rtc/gl/TextureBufferPool$1;-><init>(Lio/agora/rtc/gl/EglBase$Context;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-static {v1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/gl/TextureBufferPool;

    return-object p0
.end method

.method public static createWithinGlThread(Ljava/lang/String;IILandroid/os/Handler;Lio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;)Lio/agora/rtc/gl/TextureBufferPool;
    .locals 9

    .line 1
    new-instance v8, Lio/agora/rtc/gl/TextureBufferPool;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/TextureBufferPool;-><init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;)V

    return-object v8
.end method

.method private doTextureCopy(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/gl/TextureBufferPool;->acquireTextureFramebuffer()Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "setupTextureFrameBuffer"

    .line 2
    invoke-static {v3}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    move/from16 v3, p3

    move/from16 v7, p4

    .line 3
    invoke-direct {v0, v1, v3, v7}, Lio/agora/rtc/gl/TextureBufferPool;->setupTextureFrameBuffer(Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;II)Z

    move-result v4

    .line 4
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    if-nez v4, :cond_1

    .line 5
    invoke-direct {v0, v1}, Lio/agora/rtc/gl/TextureBufferPool;->releaseTextureFramebuffer(Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;)V

    return-object v2

    .line 6
    :cond_1
    iget v2, v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "drawTexture"

    .line 7
    invoke-static {v2}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p4}, Lio/agora/rtc/gl/TextureBufferPool;->drawTexture(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;II)V

    .line 9
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string v2, "flush"

    .line 10
    invoke-static {v2}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 11
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 14
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const/4 v4, 0x1

    new-array v15, v4, [Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 15
    new-instance v16, Lio/agora/rtc/gl/TextureBufferImpl;

    iget-object v5, v0, Lio/agora/rtc/gl/TextureBufferPool;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    sget-object v8, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    iget v9, v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    iget-object v11, v0, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    iget-object v12, v0, Lio/agora/rtc/gl/TextureBufferPool;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    new-instance v13, Lio/agora/rtc/gl/TextureBufferPool$4;

    move-object/from16 v4, p6

    invoke-direct {v13, v0, v15, v1, v4}, Lio/agora/rtc/gl/TextureBufferPool$4;-><init>(Lio/agora/rtc/gl/TextureBufferPool;[Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;Ljava/lang/Runnable;)V

    sget-object v1, Lio/agora/rtc/gl/TextureBufferPool;->nextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v14

    move-object/from16 v4, v16

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v14}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;I)V

    aput-object v16, v15, v2

    .line 17
    aget-object v1, v15, v2

    return-object v1
.end method

.method private drawTexture(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;II)V
    .locals 10

    const/16 v0, 0x4000

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    sget-object v3, Lio/agora/rtc/gl/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v4, p3

    move v5, p4

    move v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown texture type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    sget-object v2, Lio/agora/rtc/gl/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p3

    move v4, p4

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIII)V

    :goto_0
    const-string p1, "TextureBufferPool.drawFrameBuffer"

    .line 6
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void
.end method

.method public static makeTextureBuffer(Lio/agora/rtc/gl/EglBase$Context;IIII[FLandroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 12

    if-nez p5, :cond_0

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p5 .. p5}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 3
    new-instance v0, Lio/agora/rtc/gl/TextureBufferImpl;

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lio/agora/rtc/gl/EglBase;->getCurrentContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p0

    .line 5
    :goto_1
    invoke-static {p1}, Lio/agora/rtc/gl/TextureBufferPool;->agoraFrameTypeToTextureBufferType(I)Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v5

    sget-object v1, Lio/agora/rtc/gl/TextureBufferPool;->nextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    move-object v1, v0

    move v3, p3

    move/from16 v4, p4

    move v6, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;I)V

    return-object v0
.end method

.method private release()V
    .locals 7

    .line 1
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/TextureBufferPool;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4
    new-array v1, v0, [I

    .line 5
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 6
    iget-object v5, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    .line 7
    iget v6, v5, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    aput v6, v1, v4

    .line 8
    iget v5, v5, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lio/agora/rtc/gl/TextureBufferPool;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": delete textures "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x1

    .line 11
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 12
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    .line 14
    iget-boolean v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->ownGlThread:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 17
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_3
    return-void
.end method

.method private releaseTextureFramebuffer(Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    .line 2
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    sget-object p1, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    const-string v0, "texture info not found!"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p0, Lio/agora/rtc/gl/TextureBufferPool;->keepBufferCnt:I

    if-lt v1, v2, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 5
    iget v4, p1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    aput v4, v3, v0

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v3, v2, [I

    .line 6
    iget p1, p1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    aput p1, v3, v0

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private setupTextureFrameBuffer(Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;II)Z
    .locals 16

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    const/4 v12, 0x0

    if-lez v10, :cond_3

    if-gtz v11, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-boolean v1, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->specified:Z

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    iget v1, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->width:I

    if-ne v1, v10, :cond_1

    iget v1, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->height:I

    if-ne v1, v11, :cond_1

    return v13

    :cond_1
    const v1, 0x84c0

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 3
    iget v1, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    const/16 v14, 0xde1

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "glTexImage2D"

    .line 4
    invoke-static {v1}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    move-object/from16 v15, p0

    .line 5
    iget v7, v15, Lio/agora/rtc/gl/TextureBufferPool;->glPixelFormat:I

    const/4 v6, 0x0

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v3, v7

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 6
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string v1, "TextureBufferPool.glTexImage2D"

    .line 7
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 8
    invoke-static {v14, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v1, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "glFramebufferTexture2D"

    .line 10
    invoke-static {v1}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const v1, 0x8ce0

    .line 11
    iget v3, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    invoke-static {v2, v1, v14, v3, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 12
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    .line 13
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 14
    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8cd5

    if-eq v1, v2, :cond_2

    .line 15
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer not complete, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 16
    :cond_2
    iput-boolean v13, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->specified:Z

    .line 17
    iput v10, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->width:I

    .line 18
    iput v11, v0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->height:I

    return v13

    :cond_3
    :goto_0
    move-object/from16 v15, p0

    .line 19
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v12
.end method


# virtual methods
.method public anyTextureInUse()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->textureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    .line 2
    iget-boolean v1, v1, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/TextureBufferPool;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dispose()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/gl/TextureBufferPool$3;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/TextureBufferPool$3;-><init>(Lio/agora/rtc/gl/TextureBufferPool;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public textureCopy(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 11

    move-object v8, p0

    .line 4
    iget-object v9, v8, Lio/agora/rtc/gl/TextureBufferPool;->handler:Landroid/os/Handler;

    new-instance v10, Lio/agora/rtc/gl/TextureBufferPool$2;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/TextureBufferPool$2;-><init>(Lio/agora/rtc/gl/TextureBufferPool;ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)V

    invoke-static {v9, v10}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    return-object v0
.end method

.method public textureCopy(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v1

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v2

    .line 2
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v3

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v4

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object v0, p0

    move-object v6, p2

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/agora/rtc/gl/TextureBufferPool;->textureCopy(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p1

    return-object p1
.end method
