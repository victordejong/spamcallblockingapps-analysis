.class public Landroidx/media2/exoplayer/external/video/DummySurface$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ln3/y/b/a/x0/d;

.field public b:Landroid/os/Handler;

.field public c:Ljava/lang/Error;

.field public d:Ljava/lang/RuntimeException;

.field public e:Landroidx/media2/exoplayer/external/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_b

    const/4 v13, 0x2

    new-array v5, v13, [I

    const/4 v14, 0x1

    .line 6
    invoke-static {v4, v5, v3, v5, v14}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7
    iput-object v4, v2, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    new-array v15, v14, [Landroid/opengl/EGLConfig;

    new-array v11, v14, [I

    .line 8
    sget-object v5, Ln3/y/b/a/x0/d;->g:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object v7, v15

    move-object v10, v11

    move-object/from16 v17, v11

    move/from16 v11, v16

    .line 9
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_9

    .line 10
    aget v6, v17, v3

    if-lez v6, :cond_9

    aget-object v6, v15, v3

    if-eqz v6, :cond_9

    .line 11
    aget-object v4, v15, v3

    .line 12
    iget-object v6, v2, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x5

    if-nez v1, :cond_0

    new-array v5, v5, [I

    .line 13
    fill-array-data v5, :array_0

    goto :goto_0

    :cond_0
    new-array v5, v7, [I

    .line 14
    fill-array-data v5, :array_1

    .line 15
    :goto_0
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 16
    invoke-static {v6, v4, v8, v5, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 17
    iput-object v5, v2, Ln3/y/b/a/x0/d;->d:Landroid/opengl/EGLContext;

    .line 18
    iget-object v6, v2, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    if-ne v1, v14, :cond_1

    .line 19
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_2

    :cond_1
    if-ne v1, v13, :cond_2

    const/4 v7, 0x7

    new-array v7, v7, [I

    .line 20
    fill-array-data v7, :array_2

    goto :goto_1

    :cond_2
    new-array v7, v7, [I

    .line 21
    fill-array-data v7, :array_3

    .line 22
    :goto_1
    invoke-static {v6, v4, v7, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 23
    :goto_2
    invoke-static {v6, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    iput-object v4, v2, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    .line 25
    iget-object v4, v2, Ln3/y/b/a/x0/d;->b:[I

    .line 26
    invoke-static {v14, v4, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v4, v3

    .line 27
    :goto_3
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    if-eqz v5, :cond_4

    const-string v6, "glError "

    .line 28
    invoke-static {v4}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    move v4, v5

    goto :goto_3

    .line 29
    :cond_4
    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, v2, Ln3/y/b/a/x0/d;->b:[I

    aget v5, v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, v2, Ln3/y/b/a/x0/d;->f:Landroid/graphics/SurfaceTexture;

    .line 30
    invoke-virtual {v4, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 31
    new-instance v2, Landroidx/media2/exoplayer/external/video/DummySurface;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 32
    iget-object v4, v4, Ln3/y/b/a/x0/d;->f:Landroid/graphics/SurfaceTexture;

    .line 33
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    move v3, v14

    .line 34
    :cond_5
    invoke-direct {v2, v0, v4, v3, v12}, Landroidx/media2/exoplayer/external/video/DummySurface;-><init>(Landroidx/media2/exoplayer/external/video/DummySurface$b;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$a;)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->e:Landroidx/media2/exoplayer/external/video/DummySurface;

    return-void

    .line 35
    :cond_6
    new-instance v1, Ln3/y/b/a/x0/d$b;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    .line 36
    :cond_7
    new-instance v1, Ln3/y/b/a/x0/d$b;

    const-string v2, "eglCreatePbufferSurface failed"

    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    .line 37
    :cond_8
    new-instance v1, Ln3/y/b/a/x0/d$b;

    const-string v2, "eglCreateContext failed"

    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    .line 38
    :cond_9
    new-instance v1, Ln3/y/b/a/x0/d$b;

    new-array v2, v5, [Ljava/lang/Object;

    .line 39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    aget v4, v17, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    aget-object v3, v15, v3

    aput-object v3, v2, v13

    .line 40
    sget v3, Ln3/y/b/a/x0/x;->a:I

    .line 41
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    .line 43
    :cond_a
    new-instance v1, Ln3/y/b/a/x0/d$b;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    .line 44
    :cond_b
    new-instance v1, Ln3/y/b/a/x0/d$b;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2, v12}, Ln3/y/b/a/x0/d$b;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/d$a;)V

    throw v1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 4
    iget-object v1, v0, Ln3/y/b/a/x0/d;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, v0, Ln3/y/b/a/x0/d;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Ln3/y/b/a/x0/d;->b:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object v3, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_1

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    :cond_1
    iget-object v3, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    iget-object v3, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    iget-object v4, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    :cond_2
    iget-object v3, v0, Ln3/y/b/a/x0/d;->d:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_3

    .line 13
    iget-object v4, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 14
    :cond_3
    sget v3, Ln3/y/b/a/x0/x;->a:I

    if-lt v3, v1, :cond_4

    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 16
    :cond_4
    iget-object v1, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_5

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 17
    iget-object v1, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 18
    :cond_5
    iput-object v2, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    .line 19
    iput-object v2, v0, Ln3/y/b/a/x0/d;->d:Landroid/opengl/EGLContext;

    .line 20
    iput-object v2, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    .line 21
    iput-object v2, v0, Ln3/y/b/a/x0/d;->f:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v3

    .line 22
    iget-object v4, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    if-eqz v4, :cond_6

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 23
    iget-object v4, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 24
    :cond_6
    iget-object v4, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    if-eqz v4, :cond_7

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    iget-object v4, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    iget-object v5, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    invoke-static {v4, v5}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 26
    :cond_7
    iget-object v4, v0, Ln3/y/b/a/x0/d;->d:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_8

    .line 27
    iget-object v5, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 28
    :cond_8
    sget v4, Ln3/y/b/a/x0/x;->a:I

    if-lt v4, v1, :cond_9

    .line 29
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 30
    :cond_9
    iget-object v1, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_a

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 31
    iget-object v1, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 32
    :cond_a
    iput-object v2, v0, Ln3/y/b/a/x0/d;->c:Landroid/opengl/EGLDisplay;

    .line 33
    iput-object v2, v0, Ln3/y/b/a/x0/d;->d:Landroid/opengl/EGLContext;

    .line 34
    iput-object v2, v0, Ln3/y/b/a/x0/d;->e:Landroid/opengl/EGLSurface;

    .line 35
    iput-object v2, v0, Ln3/y/b/a/x0/d;->f:Landroid/graphics/SurfaceTexture;

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return v1

    .line 4
    :cond_1
    :try_start_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_3
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->c:Ljava/lang/Error;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    monitor-enter p0

    .line 10
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 11
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :catch_1
    move-exception p1

    .line 12
    :try_start_5
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->d:Ljava/lang/RuntimeException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit p0

    :goto_0
    return v1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    .line 16
    :goto_1
    monitor-enter p0

    .line 17
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 18
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    :catchall_5
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1
.end method
