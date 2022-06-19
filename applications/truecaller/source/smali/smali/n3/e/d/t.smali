.class public final Ln3/e/d/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/c1$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/c1$a<",
        "Ln3/e/b/j1/b0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/z;

.field public final b:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Landroidx/camera/view/PreviewView$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/camera/view/PreviewView$e;

.field public final d:Ln3/e/d/v;

.field public e:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Ln3/e/b/j1/z;Ln3/v/k0;Ln3/e/d/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/z;",
            "Ln3/v/k0<",
            "Landroidx/camera/view/PreviewView$e;",
            ">;",
            "Ln3/e/d/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/d/t;->f:Z

    .line 3
    iput-object p1, p0, Ln3/e/d/t;->a:Ln3/e/b/j1/z;

    .line 4
    iput-object p2, p0, Ln3/e/d/t;->b:Ln3/v/k0;

    .line 5
    iput-object p3, p0, Ln3/e/d/t;->d:Ln3/e/d/v;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/view/PreviewView$e;

    iput-object p1, p0, Ln3/e/d/t;->c:Landroidx/camera/view/PreviewView$e;

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Landroidx/camera/view/PreviewView$e;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/e/d/t;->c:Landroidx/camera/view/PreviewView$e;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Ln3/e/d/t;->c:Landroidx/camera/view/PreviewView$e;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "StreamStateObserver"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Preview stream state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Ln3/e/d/t;->b:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
