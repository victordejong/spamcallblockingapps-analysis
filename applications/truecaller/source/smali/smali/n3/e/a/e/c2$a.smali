.class public Ln3/e/a/e/c2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/c2;->a(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/c2;


# direct methods
.method public constructor <init>(Ln3/e/a/e/c2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/c2$a;->a:Ln3/e/a/e/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/e/a/e/c2$a;->a:Ln3/e/a/e/c2;

    .line 2
    invoke-virtual {p1}, Ln3/e/a/e/c2;->v()V

    .line 3
    iget-object p1, p0, Ln3/e/a/e/c2$a;->a:Ln3/e/a/e/c2;

    iget-object v0, p1, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 4
    invoke-virtual {v0, p1}, Ln3/e/a/e/s1;->a(Ln3/e/a/e/b2;)V

    .line 5
    iget-object v1, v0, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Ln3/e/a/e/s1;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method
