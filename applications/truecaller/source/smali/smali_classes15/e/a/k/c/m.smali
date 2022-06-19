.class public final Le/a/k/c/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/c/m;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Le/a/k/c/m;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object v1, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    .line 3
    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->performClick()Z

    .line 4
    iget-object v1, p0, Le/a/k/c/m;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v3, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ln3/e/b/h0;->b()Ln3/e/b/i0;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "camera?.cameraControl ?: return"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v5, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    invoke-virtual {v5}, Landroidx/camera/view/PreviewView;->getMeteringPointFactory()Ln3/e/b/b1;

    move-result-object v5

    const-string v6, "previewView.meteringPointFactory"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object v6, v5

    check-cast v6, Ln3/e/d/w;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v2, v7, v0

    aput p1, v7, v4

    .line 8
    monitor-enter v6

    .line 9
    :try_start_0
    iget-object v8, v6, Ln3/e/d/w;->c:Landroid/graphics/Matrix;

    if-nez v8, :cond_0

    .line 10
    sget-object v0, Ln3/e/d/w;->d:Landroid/graphics/PointF;

    monitor-exit v6

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v6, Landroid/graphics/PointF;

    aget v0, v7, v0

    aget v7, v7, v4

    invoke-direct {v6, v0, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v6

    .line 14
    :goto_0
    new-instance v6, Ln3/e/b/a1;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, v5, Ln3/e/b/b1;->a:Landroid/util/Rational;

    const v8, 0x3e19999a    # 0.15f

    invoke-direct {v6, v7, v0, v8, v5}, Ln3/e/b/a1;-><init>(FFFLandroid/util/Rational;)V

    const-string v0, "factory.createPoint(x, y)"

    .line 15
    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ln3/e/b/r0$a;

    invoke-direct {v0, v6, v4}, Ln3/e/b/r0$a;-><init>(Ln3/e/b/a1;I)V

    const-wide/16 v5, 0x0

    .line 17
    iput-wide v5, v0, Ln3/e/b/r0$a;->d:J

    .line 18
    new-instance v5, Ln3/e/b/r0;

    invoke-direct {v5, v0}, Ln3/e/b/r0;-><init>(Ln3/e/b/r0$a;)V

    const-string v0, "FocusMeteringAction.Buil\u2026el()\n            .build()"

    .line 19
    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v3, v5}, Ln3/e/b/i0;->c(Ln3/e/b/r0;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 21
    iget-object v0, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->b:Lq3/a/x2/z0;

    .line 22
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return v4

    :cond_2
    return v0
.end method
