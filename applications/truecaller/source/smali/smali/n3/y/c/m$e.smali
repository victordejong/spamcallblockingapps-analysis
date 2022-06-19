.class public Ln3/y/c/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/h/a/f;

.field public final synthetic b:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Ln3/h/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$e;->b:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/m$e;->a:Ln3/h/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/c/m$e;->b:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    iget-object v3, v0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v1}, Ln3/y/b/a/k0;->g()V

    .line 5
    iput-object v2, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 6
    iget-object v1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v1}, Ln3/y/c/j0$e;->a()V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Ln3/y/c/j0;->l:Z

    .line 8
    :cond_0
    iget-object v0, p0, Ln3/y/c/m$e;->a:Ln3/h/a/f;

    invoke-virtual {v0, v2}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Ln3/y/c/m$e;->a:Ln3/h/a/f;

    invoke-virtual {v1, v0}, Ln3/h/a/f;->i(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
