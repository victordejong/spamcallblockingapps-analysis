.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->t(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Lq3/a/n;

.field public final synthetic c:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lq3/a/n;Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->b:Lq3/a/n;

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->c:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->c:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/c/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-object v2, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->d:Ln3/e/c/c;

    .line 4
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->c:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-object v2, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->d:Ln3/e/c/c;

    if-nez v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->b:Lq3/a/n;

    invoke-static {v1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    sget-object v2, Ln3/e/b/m0;->b:Ln3/e/b/m0;

    const-string v3, "CameraSelector.DEFAULT_FRONT_CAMERA"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->r(Ln3/e/b/m0;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->c:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v3, Ln3/e/b/m0;->c:Ln3/e/b/m0;

    const-string v4, "CameraSelector.DEFAULT_BACK_CAMERA"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->r(Ln3/e/b/m0;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 11
    :goto_0
    iput v0, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->f:I

    .line 12
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->b:Lq3/a/n;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->b:Lq3/a/n;

    invoke-static {v1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void

    .line 14
    :catch_0
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$k;->b:Lq3/a/n;

    invoke-static {v1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
