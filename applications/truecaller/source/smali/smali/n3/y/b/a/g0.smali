.class public final Ln3/y/b/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/g0$a;,
        Ln3/y/b/a/g0$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/g0$b;

.field public final b:Ln3/y/b/a/g0$a;

.field public final c:Ln3/y/b/a/l0;

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Landroid/os/Handler;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/g0$a;Ln3/y/b/a/g0$b;Ln3/y/b/a/l0;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/g0;->b:Ln3/y/b/a/g0$a;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/g0;->a:Ln3/y/b/a/g0$b;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/g0;->c:Ln3/y/b/a/l0;

    .line 5
    iput-object p5, p0, Ln3/y/b/a/g0;->f:Landroid/os/Handler;

    .line 6
    iput p4, p0, Ln3/y/b/a/g0;->g:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ln3/y/b/a/g0;->i:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Ln3/y/b/a/g0;->i:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/y/b/a/g0;->j:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ln3/y/b/a/g0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/g0;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 3
    iput-boolean v1, p0, Ln3/y/b/a/g0;->h:Z

    .line 4
    iget-object v0, p0, Ln3/y/b/a/g0;->b:Ln3/y/b/a/g0$a;

    check-cast v0, Ln3/y/b/a/v;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, v0, Ln3/y/b/a/v;->w:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ln3/y/b/a/g0;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget-object v1, v0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d(Ljava/lang/Object;)Ln3/y/b/a/g0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/g0;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/g0;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public e(I)Ln3/y/b/a/g0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/g0;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput p1, p0, Ln3/y/b/a/g0;->d:I

    return-object p0
.end method
