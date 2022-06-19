.class public final synthetic Ln3/e/a/e/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/b;


# instance fields
.field public final synthetic a:Ln3/e/a/e/e2;

.field public final synthetic b:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic c:Ln3/e/a/e/k2/o/g;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/e2;Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/p0;->a:Ln3/e/a/e/e2;

    iput-object p2, p0, Ln3/e/a/e/p0;->b:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Ln3/e/a/e/p0;->c:Ln3/e/a/e/k2/o/g;

    iput-object p4, p0, Ln3/e/a/e/p0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/p0;->a:Ln3/e/a/e/e2;

    iget-object v1, p0, Ln3/e/a/e/p0;->b:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Ln3/e/a/e/p0;->c:Ln3/e/a/e/k2/o/g;

    iget-object v3, p0, Ln3/e/a/e/p0;->d:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Ln3/e/a/e/e2;->z(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
