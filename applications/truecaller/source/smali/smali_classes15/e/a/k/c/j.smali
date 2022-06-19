.class public final Le/a/k/c/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/k;

.field public final synthetic c:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Le/a/k/c/k;Landroid/media/MediaRecorder;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/j;->b:Le/a/k/c/k;

    iput-object p2, p0, Le/a/k/c/j;->c:Landroid/media/MediaRecorder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/c/j;->b:Le/a/k/c/k;

    iget-object v0, v0, Le/a/k/c/k;->b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object v0, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->k:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/k/c/j;->c:Landroid/media/MediaRecorder;

    .line 5
    iget-object v2, p0, Le/a/k/c/j;->b:Le/a/k/c/k;

    iget-object v2, v2, Le/a/k/c/k;->b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    iget-boolean v2, v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 10
    iget-object v0, p0, Le/a/k/c/j;->b:Le/a/k/c/k;

    iget-object v0, v0, Le/a/k/c/k;->b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 11
    iput-object v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    .line 13
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
