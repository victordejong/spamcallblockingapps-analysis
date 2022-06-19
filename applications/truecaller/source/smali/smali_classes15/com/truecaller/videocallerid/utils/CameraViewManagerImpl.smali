.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/h;
.implements Ln3/v/a0;
.implements Lq3/a/i0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B7\u0008\u0007\u0012\u0008\u0008\u0001\u0010d\u001a\u00020S\u0012\u0008\u0008\u0001\u0010X\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010M\u001a\u00020J\u0012\u0006\u0010P\u001a\u00020N\u0012\u0006\u0010F\u001a\u00020D\u00a2\u0006\u0004\u0008o\u0010pJ\u0015\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0015\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u0017\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u0015\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u0015\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u0017\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J\u000f\u0010\u001c\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u0013\u0010\u001d\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0015\u0010 \u001a\u0004\u0018\u00010\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010\u001eJI\u0010\'\u001a\u0004\u0018\u00018\u0001\"\u0004\u0008\u0000\u0010!\"\u0004\u0008\u0001\u0010\"*\u00028\u00002\"\u0010&\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010$\u0012\u0006\u0012\u0004\u0018\u00010%0#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J<\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010!2\u001c\u0010.\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000$\u0012\u0006\u0012\u0004\u0018\u00010%0-H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00107\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00109R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010<R*\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010>8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u00082\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010OR\u0016\u0010R\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010QR\u0016\u0010V\u001a\u00020S8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0016\u0010X\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010WR\"\u0010\\\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010Q\u001a\u0004\u0008Y\u0010\u0010\"\u0004\u0008Z\u0010[R\"\u0010b\u001a\u0008\u0012\u0004\u0012\u00020^0]8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008Y\u0010_\u001a\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020S8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010n\u001a\u00020l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010m\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006q"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;",
        "Le/a/k/c/h;",
        "Ln3/v/a0;",
        "Lq3/a/i0;",
        "Lq3/a/n0;",
        "",
        "m",
        "()Lq3/a/n0;",
        "Ls1/s;",
        "h",
        "startRecording",
        "Le/a/k/c/j0;",
        "a",
        "Q0",
        "d",
        "f",
        "()Z",
        "k",
        "c",
        "l",
        "()V",
        "n",
        "j",
        "",
        "ratio",
        "g",
        "(F)V",
        "onLifecycleStart",
        "onLifecycleStop",
        "t",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "q",
        "u",
        "T",
        "R",
        "Lkotlin/Function2;",
        "Ls1/w/d;",
        "",
        "block",
        "s",
        "(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;",
        "Ln3/e/b/m0;",
        "cameraSelector",
        "r",
        "(Ln3/e/b/m0;)Z",
        "Lkotlin/Function1;",
        "action",
        "p",
        "(Ls1/z/b/l;)Lq3/a/n0;",
        "Ln3/e/b/h0;",
        "e",
        "Ln3/e/b/h0;",
        "camera",
        "Landroid/media/MediaRecorder;",
        "Landroid/media/MediaRecorder;",
        "recorder",
        "Ljava/util/concurrent/ExecutorService;",
        "Ljava/util/concurrent/ExecutorService;",
        "recorderExecutor",
        "Lq3/a/b3/c;",
        "Lq3/a/b3/c;",
        "mutex",
        "Lkotlin/Function0;",
        "Ls1/z/b/a;",
        "getOnRecordingMaxDurationReached",
        "()Ls1/z/b/a;",
        "(Ls1/z/b/a;)V",
        "onRecordingMaxDurationReached",
        "Le/a/k/c/s1;",
        "Le/a/k/c/s1;",
        "videoFileUtil",
        "Ln3/e/c/c;",
        "Ln3/e/c/c;",
        "cameraProvider",
        "Landroidx/camera/view/PreviewView;",
        "o",
        "Landroidx/camera/view/PreviewView;",
        "previewView",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/fragment/app/Fragment;",
        "lifecycleOwner",
        "Z",
        "useCasesBound",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "coroutineContext",
        "Lq3/a/i0;",
        "coroutineScope",
        "b",
        "setRecording",
        "(Z)V",
        "recording",
        "Lq3/a/x2/z0;",
        "Landroid/graphics/PointF;",
        "Lq3/a/x2/z0;",
        "getFocusPoints",
        "()Lq3/a/x2/z0;",
        "focusPoints",
        "Ls1/w/f;",
        "ioContext",
        "Ljava/io/File;",
        "Ljava/io/File;",
        "tempRecordingFile",
        "Ljava/util/concurrent/Semaphore;",
        "i",
        "Ljava/util/concurrent/Semaphore;",
        "recordingSurfaceLock",
        "",
        "I",
        "lensFacing",
        "<init>",
        "(Ls1/w/f;Lq3/a/i0;Landroidx/camera/view/PreviewView;Landroidx/fragment/app/Fragment;Le/a/k/c/s1;)V",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final b:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/b3/c;

.field public d:Ln3/e/c/c;

.field public e:Ln3/e/b/h0;

.field public f:I

.field public g:Landroid/media/MediaRecorder;

.field public h:Ljava/io/File;

.field public i:Ljava/util/concurrent/Semaphore;

.field public volatile j:Z

.field public k:Ljava/util/concurrent/ExecutorService;

.field public l:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ls1/w/f;

.field public final n:Lq3/a/i0;

.field public final o:Landroidx/camera/view/PreviewView;

.field public final p:Landroidx/fragment/app/Fragment;

.field public final q:Le/a/k/c/s1;


# direct methods
.method public constructor <init>(Ls1/w/f;Lq3/a/i0;Landroidx/camera/view/PreviewView;Landroidx/fragment/app/Fragment;Le/a/k/c/s1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewView"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->m:Ls1/w/f;

    iput-object p2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->n:Lq3/a/i0;

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    iput-object p4, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q:Le/a/k/c/s1;

    .line 2
    sget-object p1, Lq3/a/w2/i;->b:Lq3/a/w2/i;

    const/4 p2, 0x0

    const/4 p5, 0x1

    invoke-static {p2, p5, p1, p5}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->b:Lq3/a/x2/z0;

    .line 3
    invoke-static {p2, p5}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->c:Lq3/a/b3/c;

    .line 4
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->i:Ljava/util/concurrent/Semaphore;

    .line 5
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 6
    new-instance p1, Ln3/k/i/e;

    .line 7
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 8
    new-instance p5, Le/a/k/c/m;

    invoke-direct {p5, p0}, Le/a/k/c/m;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V

    .line 9
    invoke-direct {p1, p4, p5}, Ln3/k/i/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 10
    iget-object p4, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p4, Ln3/k/i/e$b;

    .line 11
    iget-object p4, p4, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p4, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 12
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 13
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 14
    new-instance p5, Le/a/k/c/n;

    invoke-direct {p5, p0}, Le/a/k/c/n;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V

    .line 15
    invoke-direct {p2, p4, p5}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 16
    new-instance p4, Le/a/k/c/l;

    invoke-direct {p4, p1, p2}, Le/a/k/c/l;-><init>(Ln3/k/i/e;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final o(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    invoke-static {p0}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public Q0()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$h;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public a()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Le/a/k/c/j0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/e/b/h0;->a()Ln3/e/b/l0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/e/b/l0;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public d()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$d;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public e(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->l:Ls1/z/b/a;

    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/m0;->c:Ln3/e/b/m0;

    const-string v1, "CameraSelector.DEFAULT_BACK_CAMERA"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->r(Ln3/e/b/m0;)Z

    move-result v0

    return v0
.end method

.method public g(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/e/b/h0;->a()Ln3/e/b/l0;

    move-result-object v1

    const-string v2, "camera.cameraInfo"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ln3/e/b/l0;->f()Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "camera.cameraInfo.zoomState"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/i1;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ln3/e/b/i1;->a()F

    move-result v1

    .line 3
    invoke-interface {v0}, Ln3/e/b/h0;->b()Ln3/e/b/i0;

    move-result-object v0

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Ln3/e/b/i0;->a(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->n:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$o;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public i()Lq3/a/x2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->b:Lq3/a/x2/z0;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/m0;->b:Ln3/e/b/m0;

    const-string v1, "CameraSelector.DEFAULT_FRONT_CAMERA"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->r(Ln3/e/b/m0;)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ln3/e/b/h0;->b()Ln3/e/b/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "camera?.cameraControl ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ln3/e/b/h0;->a()Ln3/e/b/l0;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "camera?.cameraInfo ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ln3/e/b/l0;->h()Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "cameraInfo.torchState"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v2}, Ln3/e/b/i0;->b(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    return-void
.end method

.method public m()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$j;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/e/b/h0;->a()Ln3/e/b/l0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/e/b/l0;->h()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final onLifecycleStart()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_START:Ln3/v/u$a;
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$f;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    return-void
.end method

.method public final onLifecycleStop()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$g;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    return-void
.end method

.method public final p(Ls1/z/b/l;)Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lq3/a/n0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v2, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v3, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$a;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;

    iget v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-instance p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;-><init>(Ls1/w/d;)V

    iput v3, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$b;->e:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ln3/e/b/m0;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;

    invoke-direct {v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;-><init>(Ln3/e/b/m0;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final synthetic s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;

    iget v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;

    invoke-direct {v0, p0, p3}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 4
    :try_start_1
    iput v4, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    invoke-interface {p2, p1, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v3
.end method

.method public startRecording()Lq3/a/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p(Ls1/z/b/l;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public final t(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;

    iget v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->g:Ljava/lang/Object;

    iput v6, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    .line 5
    new-instance p1, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p1, v2, v6}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 7
    iget-object v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "previewView.context"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Ln3/e/c/c;->b(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    const-string v7, "ProcessCameraProvider.getInstance(context)"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v7, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;

    invoke-direct {v7, v2, p1, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lq3/a/n;Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V

    .line 10
    iget-object v8, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v8}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 12
    check-cast v2, Ln3/e/b/j1/t1/c/e;

    .line 13
    iget-object v2, v2, Ln3/e/b/j1/t1/c/e;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2, v7, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    const-string v2, "frame"

    .line 15
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 16
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 17
    iget-object v6, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q:Le/a/k/c/s1;

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_a

    iput-object v2, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->g:Ljava/lang/Object;

    iput v4, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    .line 20
    check-cast v6, Le/a/k/c/a;

    .line 21
    new-instance p1, Le/a/k/c/t1;

    invoke-direct {p1, v6, v5}, Le/a/k/c/t1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    .line 22
    iget-object v4, v6, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v6, Le/a/k/c/z1;

    invoke-direct {v6, p1, v5}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v4, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 23
    :cond_8
    :goto_3
    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_a

    .line 24
    iput-object p1, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->h:Ljava/io/File;

    .line 25
    iput-object v5, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$l;->e:I

    invoke-virtual {v2, v0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    .line 28
    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;-><init>(Ls1/w/d;)V

    invoke-virtual {p0, p0, v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
