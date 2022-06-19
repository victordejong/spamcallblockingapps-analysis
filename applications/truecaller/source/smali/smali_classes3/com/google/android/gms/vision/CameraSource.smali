.class public Lcom/google/android/gms/vision/CameraSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/CameraSource$b;,
        Lcom/google/android/gms/vision/CameraSource$a;,
        Lcom/google/android/gms/vision/CameraSource$c;,
        Lcom/google/android/gms/vision/CameraSource$PictureCallback;,
        Lcom/google/android/gms/vision/CameraSource$ShutterCallback;,
        Lcom/google/android/gms/vision/CameraSource$Builder;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/hardware/Camera;

.field public d:I

.field public e:I

.field public f:Lcom/google/android/gms/common/images/Size;

.field public g:F

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/Thread;

.field public m:Lcom/google/android/gms/vision/CameraSource$b;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->d:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 4
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->g:F

    const/16 v1, 0x400

    .line 5
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->h:I

    const/16 v1, 0x300

    .line 6
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->i:I

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->j:Z

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->n:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Le/m/a/f/r/d;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/CameraSource;->c()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    .line 5
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 7
    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->l:Ljava/lang/Thread;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    const/4 v1, 0x1

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iput-boolean v1, p1, Lcom/google/android/gms/vision/CameraSource$b;->d:Z

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->l:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    const/4 v2, 0x0

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iput-boolean v2, v1, Lcom/google/android/gms/vision/CameraSource$b;->d:Z

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->l:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :catch_0
    :try_start_4
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->l:Ljava/lang/Thread;

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 14
    :try_start_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 18
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    :catchall_1
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public final c()Landroid/hardware/Camera;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->d:I

    .line 2
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 4
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_15

    .line 6
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/vision/CameraSource;->h:I

    iget v4, p0, Lcom/google/android/gms/vision/CameraSource;->i:I

    .line 8
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 10
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 13
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 15
    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-float v13, v13

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v13, v10, v13

    .line 16
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3c23d70a    # 0.01f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 17
    new-instance v10, Lcom/google/android/gms/vision/CameraSource$c;

    invoke-direct {v10, v9, v12}, Lcom/google/android/gms/vision/CameraSource$c;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_5

    .line 19
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 20
    new-instance v9, Lcom/google/android/gms/vision/CameraSource$c;

    invoke-direct {v9, v6, v8}, Lcom/google/android/gms/vision/CameraSource$c;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const v6, 0x7fffffff

    move v9, v2

    move v11, v6

    move-object v10, v8

    :cond_6
    :goto_4
    if-ge v9, v5, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Lcom/google/android/gms/vision/CameraSource$c;

    .line 22
    iget-object v13, v12, Lcom/google/android/gms/vision/CameraSource$c;->a:Lcom/google/android/gms/common/images/Size;

    .line 23
    iget v14, v13, Lcom/google/android/gms/common/images/Size;->a:I

    sub-int/2addr v14, v1

    .line 24
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 25
    iget v13, v13, Lcom/google/android/gms/common/images/Size;->b:I

    sub-int/2addr v13, v4

    .line 26
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v13, v14

    if-ge v13, v11, :cond_6

    move-object v10, v12

    move v11, v13

    goto :goto_4

    :cond_7
    if-eqz v10, :cond_14

    .line 27
    iget-object v1, v10, Lcom/google/android/gms/vision/CameraSource$c;->b:Lcom/google/android/gms/common/images/Size;

    .line 28
    iget-object v4, v10, Lcom/google/android/gms/vision/CameraSource$c;->a:Lcom/google/android/gms/common/images/Size;

    .line 29
    iput-object v4, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    .line 30
    iget v4, p0, Lcom/google/android/gms/vision/CameraSource;->g:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 31
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5

    .line 32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v8

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 33
    aget v11, v9, v2

    sub-int v11, v4, v11

    .line 34
    aget v10, v9, v10

    sub-int v10, v4, v10

    .line 35
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v10, v11

    if-ge v10, v6, :cond_8

    move-object v7, v9

    move v6, v10

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_13

    .line 36
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v1, :cond_a

    .line 37
    iget v5, v1, Lcom/google/android/gms/common/images/Size;->a:I

    .line 38
    iget v1, v1, Lcom/google/android/gms/common/images/Size;->b:I

    .line 39
    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    .line 41
    iget v5, v1, Lcom/google/android/gms/common/images/Size;->a:I

    .line 42
    iget v1, v1, Lcom/google/android/gms/common/images/Size;->b:I

    .line 43
    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 44
    aget v1, v7, v2

    aget v5, v7, v10

    invoke-virtual {v4, v1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v1, 0x11

    .line 45
    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->a:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 47
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_e

    if-eq v1, v10, :cond_d

    const/4 v5, 0x2

    if-eq v1, v5, :cond_c

    const/4 v5, 0x3

    if-eq v1, v5, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x10e

    goto :goto_7

    :cond_c
    const/16 v1, 0xb4

    goto :goto_7

    :cond_d
    const/16 v1, 0x5a

    goto :goto_7

    :cond_e
    :goto_6
    move v1, v2

    .line 48
    :goto_7
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 49
    invoke-static {v3, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 50
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v10, :cond_f

    .line 51
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    rsub-int v1, v3, 0x168

    .line 52
    rem-int/lit16 v1, v1, 0x168

    goto :goto_8

    .line 53
    :cond_f
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    move v1, v3

    .line 54
    :goto_8
    div-int/lit8 v5, v3, 0x5a

    iput v5, p0, Lcom/google/android/gms/vision/CameraSource;->e:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 56
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 58
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    new-array v1, v10, [Ljava/lang/Object;

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "FocusMode %s is not supported on this device."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    iput-object v8, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    .line 62
    :cond_11
    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->j:Z

    if-eqz v1, :cond_12

    .line 63
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 65
    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 66
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->k:Ljava/lang/String;

    .line 67
    :cond_12
    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 68
    new-instance v1, Lcom/google/android/gms/vision/CameraSource$a;

    invoke-direct {v1, p0, v8}, Lcom/google/android/gms/vision/CameraSource$a;-><init>(Lcom/google/android/gms/vision/CameraSource;Le/m/a/f/r/d;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/vision/CameraSource;->d(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/vision/CameraSource;->d(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/vision/CameraSource;->d(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/vision/CameraSource;->d(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find suitable preview size."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find requested camera."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lcom/google/android/gms/common/images/Size;)[B
    .locals 4

    const/16 v0, 0x11

    .line 1
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 2
    iget v1, p1, Lcom/google/android/gms/common/images/Size;->b:I

    .line 3
    iget p1, p1, Lcom/google/android/gms/common/images/Size;->a:I

    mul-int/2addr v1, p1

    mul-int/2addr v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 5
    new-array p1, p1, [B

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
