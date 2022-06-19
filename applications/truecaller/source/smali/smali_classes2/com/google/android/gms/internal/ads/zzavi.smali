.class public final Lcom/google/android/gms/internal/ads/zzavi;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zza:[I

.field private zzb:Landroid/os/Handler;

.field private zzc:Landroid/graphics/SurfaceTexture;

.field private zzd:Ljava/lang/Error;

.field private zze:Ljava/lang/RuntimeException;

.field private zzf:Lcom/google/android/gms/internal/ads/zzavk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    return v7

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 3
    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 5
    :try_start_2
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 6
    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 7
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return v7

    .line 8
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v7

    .line 10
    :cond_2
    :try_start_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v6

    .line 11
    :goto_1
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eqz v2, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    const-string v9, "eglGetDisplay failed"

    .line 12
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    new-array v8, v5, [I

    .line 13
    invoke-static {v2, v8, v6, v8, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v8

    const-string v9, "eglInitialize failed"

    .line 14
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    const/16 v8, 0x11

    new-array v9, v8, [I

    const/16 v8, 0x3040

    aput v8, v9, v6

    const/16 v16, 0x4

    aput v16, v9, v7

    const/16 v8, 0x3024

    aput v8, v9, v5

    const/16 v8, 0x8

    aput v8, v9, v4

    const/16 v10, 0x3023

    aput v10, v9, v16

    const/4 v15, 0x5

    aput v8, v9, v15

    const/16 v10, 0x3022

    const/16 v17, 0x6

    aput v10, v9, v17

    const/4 v14, 0x7

    aput v8, v9, v14

    const/16 v10, 0x3021

    aput v10, v9, v8

    const/16 v10, 0x9

    aput v8, v9, v10

    const/16 v8, 0xa

    const/16 v10, 0x3025

    aput v10, v9, v8

    const/16 v8, 0xb

    aput v6, v9, v8

    const/16 v8, 0xc

    const/16 v10, 0x3027

    aput v10, v9, v8

    const/16 v8, 0xd

    const/16 v18, 0x3038

    aput v18, v9, v8

    const/16 v8, 0xe

    const/16 v10, 0x3033

    aput v10, v9, v8

    const/16 v8, 0xf

    aput v16, v9, v8

    const/16 v8, 0x10

    aput v18, v9, v8

    new-array v13, v7, [Landroid/opengl/EGLConfig;

    new-array v12, v7, [I

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v8, v2

    move-object v11, v13

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v20

    move v3, v14

    move-object/from16 v14, v22

    move v3, v15

    move/from16 v15, v21

    .line 15
    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v8

    if-eqz v8, :cond_5

    aget v8, v22, v6

    if-lez v8, :cond_5

    aget-object v8, v19, v6

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    const-string v9, "eglChooseConfig failed"

    .line 16
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    aget-object v8, v19, v6

    const/16 v9, 0x32c0

    const/16 v10, 0x3098

    if-eqz v0, :cond_6

    new-array v11, v3, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v9, v11, v5

    aput v7, v11, v4

    aput v18, v11, v16

    goto :goto_4

    :cond_6
    new-array v11, v4, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v18, v11, v5

    :goto_4
    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 17
    invoke-static {v2, v8, v10, v11, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v10

    if-eqz v10, :cond_7

    move v11, v7

    goto :goto_5

    :cond_7
    move v11, v6

    :goto_5
    const-string v12, "eglCreateContext failed"

    .line 18
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    const/16 v11, 0x3056

    const/16 v12, 0x3057

    if-eqz v0, :cond_8

    const/4 v13, 0x7

    new-array v13, v13, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v9, v13, v16

    aput v7, v13, v3

    aput v18, v13, v17

    goto :goto_6

    :cond_8
    new-array v13, v3, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v18, v13, v16

    .line 19
    :goto_6
    invoke-static {v2, v8, v13, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    if-eqz v3, :cond_9

    move v4, v7

    goto :goto_7

    :cond_9
    move v4, v6

    :goto_7
    const-string v5, "eglCreatePbufferSurface failed"

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    .line 21
    invoke-static {v2, v3, v3, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    const-string v3, "eglMakeCurrent failed"

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 23
    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 24
    aget v3, v3, v6

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 25
    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavk;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    .line 26
    invoke-direct {v2, v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Lcom/google/android/gms/internal/ads/zzavi;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzavj;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-enter p0

    .line 27
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 29
    :try_start_5
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-enter p0

    .line 30
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 31
    monitor-exit p0

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catch_1
    move-exception v0

    .line 32
    :try_start_7
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-enter p0

    .line 33
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 34
    monitor-exit p0

    :goto_8
    return v7

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :goto_9
    monitor-enter p0

    .line 35
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 36
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 37
    throw v0

    :catchall_6
    move-exception v0

    .line 38
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzavk;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v1, v2

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    return-object p1

    :cond_2
    throw p1

    .line 9
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
