.class public final Ln3/y/c/j0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/j0;


# direct methods
.method public constructor <init>(Ln3/y/c/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/j0$f;->a:Ln3/y/c/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$f;->a:Ln3/y/c/j0;

    .line 2
    iget-object v1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v1}, Ln3/y/c/j0$e;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v2

    iget-object v3, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 4
    invoke-virtual {v3}, Ln3/y/b/a/k0;->b()J

    move-result-wide v4

    .line 5
    invoke-virtual {v3}, Ln3/y/b/a/k0;->c()J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v8

    const/16 v10, 0x64

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x64

    mul-long/2addr v4, v8

    .line 6
    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v3, v11, v10}, Ln3/y/b/a/x0/x;->g(III)I

    move-result v10

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v11

    .line 7
    :goto_1
    check-cast v1, Ln3/y/c/m;

    const/16 v3, 0x2c0

    .line 8
    invoke-static {v1, v2, v3, v10}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 9
    :cond_3
    iget-object v1, v0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    iget-object v2, v0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, v0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    iget-object v0, v0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
