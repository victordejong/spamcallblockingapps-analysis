.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$b;
    }
.end annotation


# static fields
.field public static c:I

.field public static d:Z


# instance fields
.field public final a:Lcom/google/android/exoplayer2/video/DummySurface$b;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$b;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->a:Lcom/google/android/exoplayer2/video/DummySurface$b;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 7

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x18

    const/16 v2, 0x3055

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v5, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v6, "samsung"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v6, "XT1650"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 6
    invoke-static {p0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "EGL_EXT_protected_content"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v4

    :goto_1
    if-eqz p0, :cond_7

    const/16 p0, 0x11

    if-ge v0, p0, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 9
    invoke-static {p0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "EGL_KHR_surfaceless_context"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v3

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    return v3

    :cond_6
    const/4 p0, 0x2

    return p0

    :cond_7
    return v4
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->a(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/google/android/exoplayer2/video/DummySurface;->c:I

    .line 3
    sput-boolean v2, Lcom/google/android/exoplayer2/video/DummySurface;->d:Z

    .line 4
    :cond_0
    sget p0, Lcom/google/android/exoplayer2/video/DummySurface;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 4

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    invoke-static {p0}, Ln3/g0/y;->x(Z)V

    .line 3
    new-instance p0, Lcom/google/android/exoplayer2/video/DummySurface$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$b;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    sget p1, Lcom/google/android/exoplayer2/video/DummySurface;->c:I

    goto :goto_2

    :cond_2
    move p1, v1

    .line 5
    :goto_2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->b:Landroid/os/Handler;

    .line 7
    new-instance v3, Le/m/a/c/q1/j;

    invoke-direct {v3, v2}, Le/m/a/c/q1/j;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->a:Le/m/a/c/q1/j;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->e:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->c:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move v1, v0

    goto :goto_3

    .line 12
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->c:Ljava/lang/Error;

    if-nez p1, :cond_5

    .line 16
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->e:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 18
    :cond_5
    throw p1

    .line 19
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->a:Lcom/google/android/exoplayer2/video/DummySurface$b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->b:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->a:Lcom/google/android/exoplayer2/video/DummySurface$b;

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/DummySurface$b;->b:Landroid/os/Handler;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/DummySurface$b;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->b:Z

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
