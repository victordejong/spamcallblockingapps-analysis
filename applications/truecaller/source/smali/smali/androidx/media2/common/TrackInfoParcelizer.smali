.class public final Landroidx/media2/common/TrackInfoParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 3
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 4
    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->f()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/SessionPlayer$TrackInfo;Ln3/i0/c;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL"

    .line 4
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    if-eqz v1, :cond_3

    const-string v2, "language"

    .line 6
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "mime"

    .line 9
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "is-forced-subtitle"

    .line 12
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->g(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v1, "is-autoselect"

    .line 13
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->g(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v1, "is-default"

    .line 14
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->g(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 15
    :cond_3
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE"

    iget-boolean v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 18
    invoke-virtual {p1, v4}, Ln3/i0/c;->B(I)V

    .line 19
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 20
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v1, 0x3

    .line 21
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 22
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 23
    iget-object p0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const/4 v0, 0x4

    .line 24
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 25
    invoke-virtual {p1, p0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
