.class public final Ln3/e/d/z;
.super Ln3/e/d/v;
.source "SourceFile"


# instance fields
.field public e:Landroid/view/TextureView;

.field public f:Landroid/graphics/SurfaceTexture;

.field public g:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ln3/e/b/f1$f;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ln3/e/b/f1;

.field public i:Z

.field public j:Landroid/graphics/SurfaceTexture;

.field public k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:Ln3/e/d/v$a;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Ln3/e/d/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/e/d/v;-><init>(Landroid/widget/FrameLayout;Ln3/e/d/u;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/e/d/z;->i:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ln3/e/d/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/e/d/z;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/e/d/z;->j:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Ln3/e/d/z;->j:Landroid/graphics/SurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln3/e/d/z;->j:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ln3/e/d/z;->i:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/e/d/z;->i:Z

    return-void
.end method

.method public e(Ln3/e/b/f1;Ln3/e/d/v$a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/e/b/f1;->a:Landroid/util/Size;

    .line 2
    iput-object v0, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Ln3/e/d/z;->l:Ln3/e/d/v$a;

    .line 4
    iget-object p2, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Landroid/view/TextureView;

    iget-object v0, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p2, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    new-instance v0, Ln3/e/d/y;

    invoke-direct {v0, p0}, Ln3/e/d/y;-><init>(Ln3/e/d/z;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    iget-object p2, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 14
    iget-object p2, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iget-object p2, p0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Ln3/e/b/f1;->b()Z

    .line 17
    :cond_0
    iput-object p1, p0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 18
    iget-object p2, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    .line 19
    invoke-virtual {p2}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Ln3/e/d/l;

    invoke-direct {v0, p0, p1}, Ln3/e/d/l;-><init>(Ln3/e/d/z;Ln3/e/b/f1;)V

    .line 20
    iget-object p1, p1, Ln3/e/b/f1;->g:Ln3/h/a/b;

    .line 21
    iget-object p1, p1, Ln3/h/a/b;->c:Ln3/h/a/f;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1, v0, p2}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Ln3/e/d/z;->h()V

    return-void
.end method

.method public g()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/e/d/k;

    invoke-direct {v0, p0}, Ln3/e/d/k;-><init>(Ln3/e/d/z;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ln3/e/d/z;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Ln3/e/d/v;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Ln3/e/d/z;->f:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    iget-object v1, p0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 5
    new-instance v2, Ln3/e/d/n;

    invoke-direct {v2, p0, v0}, Ln3/e/d/n;-><init>(Ln3/e/d/z;Landroid/view/Surface;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 6
    iput-object v2, p0, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    new-instance v3, Ln3/e/d/m;

    invoke-direct {v3, p0, v0, v2, v1}, Ln3/e/d/m;-><init>(Ln3/e/d/z;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/e/b/f1;)V

    iget-object v0, p0, Ln3/e/d/z;->e:Landroid/view/TextureView;

    .line 8
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 9
    check-cast v2, Ln3/h/a/e;

    .line 10
    iget-object v1, v2, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v1, v3, v0}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ln3/e/d/v;->d:Z

    .line 12
    invoke-virtual {p0}, Ln3/e/d/v;->f()V

    :cond_1
    :goto_0
    return-void
.end method
