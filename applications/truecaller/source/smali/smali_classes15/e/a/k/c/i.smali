.class public final Le/a/k/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/c1$d;


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/f1;)V
    .locals 6

    const-string v0, "surfaceRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object v0, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-object v1, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ln3/e/b/h0;->a()Ln3/e/b/l0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-interface {v1, v0}, Ln3/e/b/l0;->e(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p1, Ln3/e/b/f1;->a:Landroid/util/Size;

    const-string v2, "surfaceRequest.resolution"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 10
    iget-object v3, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->h:Ljava/io/File;

    if-eqz v3, :cond_3

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const-string v5, "Executors.newSingleThreadExecutor()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v4, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->k:Ljava/util/concurrent/ExecutorService;

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recording rotation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", recording size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    iget-object v1, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    new-instance v2, Le/a/k/c/i$c;

    invoke-direct {v2, v3, p1, v0}, Le/a/k/c/i$c;-><init>(Ljava/io/File;Ln3/e/b/f1;I)V

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v2, v1}, Le/a/k/c/i$c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 19
    :goto_1
    check-cast v1, Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 20
    invoke-virtual {p1}, Ln3/e/b/f1;->b()Z

    return-void

    .line 21
    :cond_1
    new-instance v2, Le/a/k/c/i$a;

    invoke-direct {v2, p0}, Le/a/k/c/i$a;-><init>(Le/a/k/c/i;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 22
    iget-object v2, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 23
    iget-object v2, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->i:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xbb8

    .line 24
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 25
    iget-object v3, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    new-instance v4, Le/a/k/c/i$d;

    invoke-direct {v4, v1}, Le/a/k/c/i$d;-><init>(Landroid/media/MediaRecorder;)V

    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :try_start_1
    invoke-virtual {v4, v3}, Le/a/k/c/i$d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 28
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v3, v0

    .line 29
    :goto_2
    check-cast v3, Landroid/view/Surface;

    if-eqz v3, :cond_3

    .line 30
    iget-object v4, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 31
    iget-object v4, v4, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_2

    .line 32
    new-instance v0, Le/a/k/c/i$b;

    invoke-direct {v0, p0, v2}, Le/a/k/c/i$b;-><init>(Le/a/k/c/i;Z)V

    invoke-virtual {p1, v3, v4, v0}, Ln3/e/b/f1;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Ln3/k/h/b;)V

    .line 33
    iget-object p1, p0, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 34
    iput-object v1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->g:Landroid/media/MediaRecorder;

    return-void

    :cond_2
    const-string p1, "recorderExecutor"

    .line 35
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
