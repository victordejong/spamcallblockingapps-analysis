.class public final Landroidx/media2/exoplayer/external/video/DummySurface;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/DummySurface$b;
    }
.end annotation


# static fields
.field public static c:I

.field public static d:Z


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/video/DummySurface$b;

.field public b:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/video/DummySurface$b;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->a:Landroidx/media2/exoplayer/external/video/DummySurface$b;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    sget-object v3, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

    const-string v4, "XT1650"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v2

    :cond_1
    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 4
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const-string v0, "EGL_EXT_protected_content"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Landroidx/media2/exoplayer/external/video/DummySurface;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Landroidx/media2/exoplayer/external/video/DummySurface;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->a(Landroid/content/Context;)I

    move-result p0

    :goto_0
    sput p0, Landroidx/media2/exoplayer/external/video/DummySurface;->c:I

    .line 3
    sput-boolean v2, Landroidx/media2/exoplayer/external/video/DummySurface;->d:Z

    .line 4
    :cond_1
    sget p0, Landroidx/media2/exoplayer/external/video/DummySurface;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;
    .locals 4

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->b(Landroid/content/Context;)Z

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
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 3
    new-instance p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$b;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    sget p1, Landroidx/media2/exoplayer/external/video/DummySurface;->c:I

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

    iput-object v2, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->b:Landroid/os/Handler;

    .line 7
    new-instance v3, Ln3/y/b/a/x0/d;

    invoke-direct {v3, v2}, Ln3/y/b/a/x0/d;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->a:Ln3/y/b/a/x0/d;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10
    :goto_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->e:Landroidx/media2/exoplayer/external/video/DummySurface;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->c:Ljava/lang/Error;
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
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->c:Ljava/lang/Error;

    if-nez p1, :cond_5

    .line 16
    iget-object p0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$b;->e:Landroidx/media2/exoplayer/external/video/DummySurface;

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
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->a:Landroidx/media2/exoplayer/external/video/DummySurface$b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->b:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->a:Landroidx/media2/exoplayer/external/video/DummySurface$b;

    .line 5
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/DummySurface$b;->b:Landroid/os/Handler;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v1, Landroidx/media2/exoplayer/external/video/DummySurface$b;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->b:Z

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
