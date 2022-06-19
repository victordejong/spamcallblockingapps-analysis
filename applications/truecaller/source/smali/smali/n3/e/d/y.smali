.class public Ln3/e/d/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic a:Ln3/e/d/z;


# direct methods
.method public constructor <init>(Ln3/e/d/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "SurfaceTexture available. Size: "

    const-string v1, "x"

    .line 1
    invoke-static {v0, p2, v1, p3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "TextureViewImpl"

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, p2, v0}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p2, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    iput-object p1, p2, Ln3/e/d/z;->f:Landroid/graphics/SurfaceTexture;

    .line 4
    iget-object p1, p2, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p2, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Surface invalidated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    iget-object p2, p2, Ln3/e/d/z;->h:Ln3/e/b/f1;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p3, p1, v0}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    iget-object p1, p1, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 10
    iget-object p1, p1, Ln3/e/b/f1;->h:Ln3/e/b/j1/k0;

    .line 11
    invoke-virtual {p1}, Ln3/e/b/j1/k0;->a()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Ln3/e/d/z;->h()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    const/4 v1, 0x0

    iput-object v1, v0, Ln3/e/d/z;->f:Landroid/graphics/SurfaceTexture;

    .line 2
    iget-object v2, v0, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Ln3/e/d/y$a;

    invoke-direct {v1, p0, p1}, Ln3/e/d/y$a;-><init>(Ln3/e/d/y;Landroid/graphics/SurfaceTexture;)V

    iget-object v0, v0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    .line 4
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 5
    new-instance v3, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v3, v2, v1}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {v2, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    iget-object v0, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    iput-object p1, v0, Ln3/e/d/z;->j:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "TextureViewImpl"

    const-string v0, "SurfaceTexture about to be destroyed"

    .line 7
    invoke-static {p1, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p1, "SurfaceTexture size changed: "

    const-string v0, "x"

    .line 1
    invoke-static {p1, p2, v0, p3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "TextureViewImpl"

    .line 2
    invoke-static {p3, p1, p2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/e/d/y;->a:Ln3/e/d/z;

    iget-object p1, p1, Ln3/e/d/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/h/a/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
