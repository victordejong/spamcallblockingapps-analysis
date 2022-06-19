.class public final Landroidx/media2/session/SessionResultParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionResult;
    .locals 4

    .line 1
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0}, Landroidx/media2/session/SessionResult;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionResult;->a:I

    .line 3
    iget-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    .line 4
    iget-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    .line 5
    iget-object v1, v0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/MediaItem;

    iput-object p0, v0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    .line 6
    iput-object p0, v0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionResult;Ln3/i0/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    invoke-static {v1}, Ln3/y/d/b;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 9
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 10
    iget-wide v0, p0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v2, 0x2

    .line 11
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 12
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 13
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 15
    invoke-virtual {p1, v0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    .line 16
    iget-object p0, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 18
    invoke-virtual {p1, p0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    return-void
.end method
