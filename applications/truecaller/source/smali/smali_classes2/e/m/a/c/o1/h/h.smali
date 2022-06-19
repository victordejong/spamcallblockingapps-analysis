.class public final Le/m/a/c/o1/h/h;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/o1/h/h$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Landroid/hardware/Sensor;

.field public final c:Le/m/a/c/o1/h/d;

.field public final d:Landroid/os/Handler;

.field public final e:Le/m/a/c/o1/h/i;

.field public final f:Le/m/a/c/o1/h/f;

.field public g:Landroid/graphics/SurfaceTexture;

.field public h:Landroid/view/Surface;

.field public i:Le/m/a/c/q0$e;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Le/m/a/c/o1/h/h;->d:Landroid/os/Handler;

    const-string v1, "sensor"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Le/m/a/c/o1/h/h;->a:Landroid/hardware/SensorManager;

    .line 6
    sget v2, Le/m/a/c/q1/d0;->a:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    const/16 v0, 0xf

    .line 7
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    .line 8
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 9
    :cond_1
    iput-object v0, p0, Le/m/a/c/o1/h/h;->b:Landroid/hardware/Sensor;

    .line 10
    new-instance v0, Le/m/a/c/o1/h/f;

    invoke-direct {v0}, Le/m/a/c/o1/h/f;-><init>()V

    iput-object v0, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    .line 11
    new-instance v1, Le/m/a/c/o1/h/h$a;

    invoke-direct {v1, p0, v0}, Le/m/a/c/o1/h/h$a;-><init>(Le/m/a/c/o1/h/h;Le/m/a/c/o1/h/f;)V

    .line 12
    new-instance v0, Le/m/a/c/o1/h/i;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-direct {v0, p1, v1, v2}, Le/m/a/c/o1/h/i;-><init>(Landroid/content/Context;Le/m/a/c/o1/h/i$a;F)V

    iput-object v0, p0, Le/m/a/c/o1/h/h;->e:Le/m/a/c/o1/h/i;

    const-string v2, "window"

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 16
    new-instance v2, Le/m/a/c/o1/h/d;

    const/4 v3, 0x2

    new-array v4, v3, [Le/m/a/c/o1/h/d$a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v2, p1, v4}, Le/m/a/c/o1/h/d;-><init>(Landroid/view/Display;[Le/m/a/c/o1/h/d$a;)V

    iput-object v2, p0, Le/m/a/c/o1/h/h;->c:Le/m/a/c/o1/h/d;

    .line 17
    iput-boolean v5, p0, Le/m/a/c/o1/h/h;->j:Z

    .line 18
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/m/a/c/o1/h/h;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/m/a/c/o1/h/h;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Le/m/a/c/o1/h/h;->b:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Le/m/a/c/o1/h/h;->l:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v3, p0, Le/m/a/c/o1/h/h;->a:Landroid/hardware/SensorManager;

    iget-object v4, p0, Le/m/a/c/o1/h/h;->c:Le/m/a/c/o1/h/d;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Le/m/a/c/o1/h/h;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Le/m/a/c/o1/h/h;->c:Le/m/a/c/o1/h/d;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5
    :goto_1
    iput-boolean v0, p0, Le/m/a/c/o1/h/h;->l:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/m/a/c/o1/h/h;->d:Landroid/os/Handler;

    new-instance v1, Le/m/a/c/o1/h/b;

    invoke-direct {v1, p0}, Le/m/a/c/o1/h/b;-><init>(Le/m/a/c/o1/h/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/o1/h/h;->k:Z

    .line 2
    invoke-virtual {p0}, Le/m/a/c/o1/h/h;->a()V

    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/a/c/o1/h/h;->k:Z

    .line 3
    invoke-virtual {p0}, Le/m/a/c/o1/h/h;->a()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    .line 2
    iput p1, v0, Le/m/a/c/o1/h/f;->k:I

    return-void
.end method

.method public setSingleTapListener(Le/m/a/c/o1/h/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/o1/h/h;->e:Le/m/a/c/o1/h/i;

    .line 2
    iput-object p1, v0, Le/m/a/c/o1/h/i;->g:Le/m/a/c/o1/h/g;

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/o1/h/h;->j:Z

    .line 2
    invoke-virtual {p0}, Le/m/a/c/o1/h/h;->a()V

    return-void
.end method

.method public setVideoComponent(Le/m/a/c/q0$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/m/a/c/o1/h/h;->h:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, v1}, Le/m/a/c/q0$e;->clearVideoSurface(Landroid/view/Surface;)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    iget-object v1, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    invoke-interface {v0, v1}, Le/m/a/c/q0$e;->clearVideoFrameMetadataListener(Le/m/a/c/r1/o;)V

    .line 5
    iget-object v0, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    iget-object v1, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    invoke-interface {v0, v1}, Le/m/a/c/q0$e;->clearCameraMotionListener(Le/m/a/c/r1/t/a;)V

    .line 6
    :cond_2
    iput-object p1, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    invoke-interface {p1, v0}, Le/m/a/c/q0$e;->setVideoFrameMetadataListener(Le/m/a/c/r1/o;)V

    .line 8
    iget-object p1, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    iget-object v0, p0, Le/m/a/c/o1/h/h;->f:Le/m/a/c/o1/h/f;

    invoke-interface {p1, v0}, Le/m/a/c/q0$e;->setCameraMotionListener(Le/m/a/c/r1/t/a;)V

    .line 9
    iget-object p1, p0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    iget-object v0, p0, Le/m/a/c/o1/h/h;->h:Landroid/view/Surface;

    invoke-interface {p1, v0}, Le/m/a/c/q0$e;->setVideoSurface(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method
