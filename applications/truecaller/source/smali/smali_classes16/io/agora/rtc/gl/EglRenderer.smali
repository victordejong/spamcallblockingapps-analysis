.class public Lio/agora/rtc/gl/EglRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;,
        Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;,
        Lio/agora/rtc/gl/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private final eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field private final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lio/agora/rtc/gl/VideoFrame;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/agora/rtc/gl/VideoFrameDrawer;

    invoke-direct {v0}, Lio/agora/rtc/gl/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$1;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglRenderer$1;)V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 12
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    return-object p0
.end method

.method public static synthetic access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    return-object p1
.end method

.method public static synthetic access$100(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->logStatistics()V

    return-void
.end method

.method public static synthetic access$1000(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method public static synthetic access$1100(Lio/agora/rtc/gl/EglRenderer;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc/gl/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method public static synthetic access$200(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-object p0
.end method

.method public static synthetic access$702(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-object p1
.end method

.method public static synthetic access$800(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/VideoFrameDrawer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    return-object p0
.end method

.method public static synthetic access$900(Lio/agora/rtc/gl/EglRenderer;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 4

    if-gtz p3, :cond_0

    const-string p1, "NA"

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " us"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearSurface"

    .line 2
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private logStatistics()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 4
    monitor-exit v2

    return-void

    .line 5
    :cond_0
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    mul-long/2addr v5, v7

    long-to-float v5, v5

    long-to-float v6, v3

    div-float/2addr v5, v6

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. Frames received: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Dropped: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Rendered: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Render fps: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 7
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average render time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 8
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average swapBuffer time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 9
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {p0, v3}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private renderFrameOnRenderThread()V
    .locals 13

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v9, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-nez v9, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 7
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_3

    :goto_0
    move v4, v10

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 10
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_4

    const-string v1, "Skipping frame rendering - fps reduction is active."

    .line 11
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 13
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    goto :goto_0

    .line 14
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 16
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_2
    iget v2, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    .line 19
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmpl-float v1, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v1, :cond_6

    div-float/2addr v2, v0

    move v0, v5

    goto :goto_3

    :cond_6
    div-float/2addr v0, v2

    move v2, v5

    .line 20
    :goto_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 21
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    iget-boolean v1, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 24
    :cond_7
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 25
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v4, :cond_8

    .line 26
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 28
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 29
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceWidth()I

    move-result v7

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceHeight()I

    move-result v8

    move-object v2, v9

    .line 30
    invoke-virtual/range {v1 .. v8}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 34
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 35
    :try_start_3
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    add-int/2addr v5, v10

    iput v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 36
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    sub-long v7, v2, v11

    add-long/2addr v7, v5

    iput-wide v7, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 37
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long/2addr v2, v0

    add-long/2addr v2, v5

    iput-wide v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 38
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 39
    :cond_8
    :goto_4
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void

    :catchall_1
    move-exception v0

    .line 40
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 41
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :cond_9
    :goto_5
    const-string v0, "Dropping frame - No surface"

    .line 42
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void

    :catchall_3
    move-exception v1

    .line 44
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method private resetStatistics(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 4
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 5
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 7
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V
    .locals 7

    .line 3
    new-instance v6, Lio/agora/rtc/gl/EglRenderer$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/gl/EglRenderer$5;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lio/agora/rtc/gl/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v8, Lio/agora/rtc/gl/EglRenderer$9;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/gl/EglRenderer$9;-><init>(Lio/agora/rtc/gl/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1
    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    return-object v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "Initializing EglRenderer"

    .line 3
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 5
    new-instance p3, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EglRenderer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 8
    new-instance p3, Lio/agora/rtc/gl/EglRenderer$2;

    invoke-direct {p3, p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer$2;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase$Context;[I)V

    invoke-static {v1, p3}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 11
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "Dropping frame - Not initialized or already released."

    .line 6
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 7
    monitor-exit v1

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v3}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 11
    :cond_2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 12
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->retain()V

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v0, Lio/agora/rtc/gl/EglRenderer$7;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$7;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    invoke-static {p1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    .line 16
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 17
    :try_start_4
    iget v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 18
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 19
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :catchall_2
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 21
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 5
    array-length v2, v1

    if-lez v2, :cond_1

    const-string v2, "EglRenderer stack trace:"

    .line 6
    invoke-direct {p0, v2}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 8
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 5

    const-string v0, "Releasing."

    .line 1
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v0, "Already released"

    .line 5
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    new-instance v3, Lio/agora/rtc/gl/EglRenderer$3;

    invoke-direct {v3, p0}, Lio/agora/rtc/gl/EglRenderer$3;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lio/agora/rtc/gl/EglRenderer$4;

    invoke-direct {v4, p0, v2, v0}, Lio/agora/rtc/gl/EglRenderer$4;-><init>(Lio/agora/rtc/gl/EglRenderer;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v2

    .line 14
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 16
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 17
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Releasing done."

    .line 18
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc/gl/EglRenderer$8;

    invoke-direct {v2, p0, p1}, Lio/agora/rtc/gl/EglRenderer$8;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v1, Lio/agora/rtc/gl/EglRenderer$6;

    invoke-direct {v1, p0, v0, p1}, Lio/agora/rtc/gl/EglRenderer$6;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lio/agora/rtc/gl/EglRenderer$FrameListener;)V

    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeFrameListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->onFrame(Lio/agora/rtc/gl/VideoFrame;)V

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpsReduction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    .line 4
    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, p1

    float-to-long v3, v3

    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 6
    :goto_0
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirror(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
