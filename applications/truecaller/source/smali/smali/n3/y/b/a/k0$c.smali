.class public final Ln3/y/b/a/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/y0/o;
.implements Ln3/y/b/a/n0/n;
.implements Ln3/y/b/a/s0/d;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ln3/y/b/a/n0/e$c;
.implements Ln3/y/b/a/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/b/a/k0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/k0;Ln3/y/b/a/k0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    return-void
.end method

.method public G5(ZI)V
    .locals 0

    return-void
.end method

.method public H5(Ln3/y/b/a/l0;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/l0;->o()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Ln3/y/b/a/l0$c;

    invoke-direct {p2}, Ln3/y/b/a/l0$c;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, p2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object p1

    iget-object p1, p1, Ln3/y/b/a/l0$c;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public I5(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/f;)V
    .locals 0

    return-void
.end method

.method public J5(Ln3/y/b/a/e0;)V
    .locals 0

    return-void
.end method

.method public K5(Ln3/y/b/a/f;)V
    .locals 0

    return-void
.end method

.method public a(IIIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/g;

    .line 4
    iget-object v2, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 5
    iget-object v2, v2, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3, p4}, Ln3/y/b/a/y0/g;->a(IIIF)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 9
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 11
    invoke-interface {v1, p1, p2, p3, p4}, Ln3/y/b/a/y0/o;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget v1, v0, Ln3/y/b/a/k0;->r:I

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, v0, Ln3/y/b/a/k0;->r:I

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/n0/f;

    .line 6
    iget-object v2, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 7
    iget-object v2, v2, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v1, p1}, Ln3/y/b/a/n0/f;->b(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 11
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/n0/n;

    .line 13
    invoke-interface {v1, p1}, Ln3/y/b/a/n0/n;->b(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->d()Z

    move-result v1

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/k0;->m(ZI)V

    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln3/y/b/a/n0/n;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Ln3/y/b/a/n0/n;->d(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 4
    invoke-interface {v1, p1, p2, p3}, Ln3/y/b/a/y0/o;->e(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln3/y/b/a/y0/o;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Ln3/y/b/a/y0/o;->f(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object v0, v0, Ln3/y/b/a/k0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/g;

    .line 5
    invoke-interface {v1}, Ln3/y/b/a/y0/g;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 7
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 9
    invoke-interface {v1, p1}, Ln3/y/b/a/y0/o;->g(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public h(IJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln3/y/b/a/n0/n;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Ln3/y/b/a/n0/n;->h(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h5(I)V
    .locals 0

    return-void
.end method

.method public n(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 6
    invoke-interface {v1, p1}, Ln3/y/b/a/y0/o;->n(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ln3/y/b/a/o0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/n0/n;

    .line 6
    invoke-interface {v1, p1}, Ln3/y/b/a/n0/n;->o(Ln3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/k0;->l(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/k0;->f(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Ln3/y/b/a/k0;->l(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Ln3/y/b/a/k0;->f(II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/k0;->f(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public q(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/n0/n;

    .line 6
    invoke-interface {v1, p1}, Ln3/y/b/a/n0/n;->q(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-virtual {p1, p3, p4}, Ln3/y/b/a/k0;->f(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/k0;->l(Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ln3/y/b/a/k0;->l(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    invoke-virtual {p1, v1, v1}, Ln3/y/b/a/k0;->f(II)V

    return-void
.end method

.method public u(Ln3/y/b/a/o0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 4
    invoke-interface {v1, p1}, Ln3/y/b/a/y0/o;->u(Ln3/y/b/a/o0/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public v(Ln3/y/b/a/o0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/o;

    .line 6
    invoke-interface {v1, p1}, Ln3/y/b/a/y0/o;->v(Ln3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w1(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/s0/d;

    .line 4
    invoke-interface {v1, p1}, Ln3/y/b/a/s0/d;->x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Ln3/y/b/a/o0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/n0/n;

    .line 4
    invoke-interface {v1, p1}, Ln3/y/b/a/n0/n;->y(Ln3/y/b/a/o0/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    const/4 v0, 0x0

    .line 10
    iput v0, p1, Ln3/y/b/a/k0;->r:I

    return-void
.end method
