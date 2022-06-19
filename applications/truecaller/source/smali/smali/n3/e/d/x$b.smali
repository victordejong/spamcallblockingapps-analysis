.class public Ln3/e/d/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/util/Size;

.field public b:Ln3/e/b/f1;

.field public c:Landroid/util/Size;

.field public d:Z

.field public final synthetic e:Ln3/e/d/x;


# direct methods
.method public constructor <init>(Ln3/e/d/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/e/d/x$b;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    if-eqz v0, :cond_0

    const-string v0, "Request canceled: "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SurfaceViewImpl"

    .line 3
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    invoke-virtual {v0}, Ln3/e/b/f1;->b()Z

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    iget-object v0, v0, Ln3/e/d/x;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ln3/e/d/x$b;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln3/e/d/x$b;->a:Landroid/util/Size;

    if-eqz v1, :cond_0

    iget-object v4, p0, Ln3/e/d/x$b;->c:Landroid/util/Size;

    .line 3
    invoke-virtual {v1, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "SurfaceViewImpl"

    const-string v4, "Surface set on Preview."

    .line 4
    invoke-static {v2, v4, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    iget-object v2, p0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    iget-object v2, v2, Ln3/e/d/x;->e:Landroid/view/SurfaceView;

    .line 6
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Ln3/e/d/j;

    invoke-direct {v4, p0}, Ln3/e/d/j;-><init>(Ln3/e/d/x$b;)V

    .line 7
    invoke-virtual {v1, v0, v2, v4}, Ln3/e/b/f1;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Ln3/k/h/b;)V

    .line 8
    iput-boolean v3, p0, Ln3/e/d/x$b;->d:Z

    .line 9
    iget-object v0, p0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    .line 10
    iput-boolean v3, v0, Ln3/e/d/v;->d:Z

    .line 11
    invoke-virtual {v0}, Ln3/e/d/v;->f()V

    return v3

    :cond_1
    return v2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const-string p1, "Surface changed. Size: "

    const-string p2, "x"

    .line 1
    invoke-static {p1, p3, p2, p4}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "SurfaceViewImpl"

    .line 2
    invoke-static {v0, p1, p2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p3, p4}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Ln3/e/d/x$b;->c:Landroid/util/Size;

    .line 4
    invoke-virtual {p0}, Ln3/e/d/x$b;->b()Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    const-string v0, "SurfaceViewImpl"

    const-string v1, "Surface created."

    .line 1
    invoke-static {v0, v1, p1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string p1, "SurfaceViewImpl"

    const-string v0, "Surface destroyed."

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Ln3/e/d/x$b;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    if-eqz v0, :cond_1

    const-string v0, "Surface invalidated "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    .line 7
    iget-object p1, p1, Ln3/e/b/f1;->h:Ln3/e/b/j1/k0;

    .line 8
    invoke-virtual {p1}, Ln3/e/b/j1/k0;->a()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ln3/e/d/x$b;->a()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Ln3/e/d/x$b;->d:Z

    .line 11
    iput-object v1, p0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    .line 12
    iput-object v1, p0, Ln3/e/d/x$b;->c:Landroid/util/Size;

    .line 13
    iput-object v1, p0, Ln3/e/d/x$b;->a:Landroid/util/Size;

    return-void
.end method
