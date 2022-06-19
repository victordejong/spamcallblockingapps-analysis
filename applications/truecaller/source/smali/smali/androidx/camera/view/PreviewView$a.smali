.class public Landroidx/camera/view/PreviewView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/c1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView;


# direct methods
.method public constructor <init>(Landroidx/camera/view/PreviewView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/e/b/f1;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->L0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ln3/e/d/f;

    invoke-direct {v1, p0, p1}, Ln3/e/d/f;-><init>(Landroidx/camera/view/PreviewView$a;Ln3/e/b/f1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "PreviewView"

    const-string v1, "Surface requested by Preview."

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p1, Ln3/e/b/f1;->c:Ln3/e/b/j1/b0;

    .line 5
    iget-object v1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Ln3/e/d/e;

    invoke-direct {v2, p0, v0, p1}, Ln3/e/d/e;-><init>(Landroidx/camera/view/PreviewView$a;Ln3/e/b/j1/b0;Ln3/e/b/f1;)V

    .line 7
    iput-object v2, p1, Ln3/e/b/f1;->j:Ln3/e/b/f1$h;

    .line 8
    iput-object v1, p1, Ln3/e/b/f1;->k:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v3, p1, Ln3/e/b/f1;->i:Ln3/e/b/f1$g;

    if-eqz v3, :cond_1

    .line 10
    new-instance v4, Ln3/e/b/v;

    invoke-direct {v4, v2, v3}, Ln3/e/b/v;-><init>(Ln3/e/b/f1$h;Ln3/e/b/f1$g;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v1, Landroidx/camera/view/PreviewView;->a:Landroidx/camera/view/PreviewView$b;

    .line 12
    iget-object v3, p1, Ln3/e/b/f1;->c:Ln3/e/b/j1/b0;

    .line 13
    invoke-interface {v3}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Ln3/e/b/l0;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.camera.camera2.legacy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 15
    const-class v4, Ln3/e/d/b0/a/a/c;

    invoke-static {v4}, Ln3/e/d/b0/a/a/a;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    .line 16
    :goto_0
    iget-boolean v7, p1, Ln3/e/b/f1;->b:Z

    if-nez v7, :cond_6

    .line 17
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-le v7, v8, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-ne v3, v5, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid implementation mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v5, v6

    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    .line 20
    new-instance v2, Ln3/e/d/z;

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->c:Ln3/e/d/u;

    invoke-direct {v2, v3, v4}, Ln3/e/d/z;-><init>(Landroid/widget/FrameLayout;Ln3/e/d/u;)V

    goto :goto_2

    .line 21
    :cond_7
    new-instance v2, Ln3/e/d/x;

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->c:Ln3/e/d/u;

    invoke-direct {v2, v3, v4}, Ln3/e/d/x;-><init>(Landroid/widget/FrameLayout;Ln3/e/d/u;)V

    :goto_2
    iput-object v2, v1, Landroidx/camera/view/PreviewView;->b:Ln3/e/d/v;

    .line 22
    new-instance v1, Ln3/e/d/t;

    .line 23
    invoke-interface {v0}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->d:Ln3/v/k0;

    iget-object v3, v3, Landroidx/camera/view/PreviewView;->b:Ln3/e/d/v;

    invoke-direct {v1, v2, v4, v3}, Ln3/e/d/t;-><init>(Ln3/e/b/j1/z;Ln3/v/k0;Ln3/e/d/v;)V

    .line 24
    iget-object v2, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v2, Landroidx/camera/view/PreviewView;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    invoke-interface {v0}, Ln3/e/b/j1/b0;->e()Ln3/e/b/j1/c1;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    .line 26
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 27
    check-cast v2, Ln3/e/b/j1/x0;

    .line 28
    iget-object v4, v2, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    monitor-enter v4

    .line 29
    :try_start_0
    iget-object v5, v2, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/x0$a;

    if-eqz v5, :cond_8

    .line 30
    iget-object v7, v5, Ln3/e/b/j1/x0$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    :cond_8
    new-instance v6, Ln3/e/b/j1/x0$a;

    invoke-direct {v6, v3, v1}, Ln3/e/b/j1/x0$a;-><init>(Ljava/util/concurrent/Executor;Ln3/e/b/j1/c1$a;)V

    .line 32
    iget-object v3, v2, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->O0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v7, Ln3/e/b/j1/u0;

    invoke-direct {v7, v2, v5, v6}, Ln3/e/b/j1/u0;-><init>(Ln3/e/b/j1/x0;Ln3/e/b/j1/x0$a;Ln3/e/b/j1/x0$a;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v2, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v2, Landroidx/camera/view/PreviewView;->b:Ln3/e/d/v;

    new-instance v3, Ln3/e/d/d;

    invoke-direct {v3, p0, v1, v0}, Ln3/e/d/d;-><init>(Landroidx/camera/view/PreviewView$a;Ln3/e/d/t;Ln3/e/b/j1/b0;)V

    invoke-virtual {v2, p1, v3}, Ln3/e/d/v;->e(Ln3/e/b/f1;Ln3/e/d/v$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
