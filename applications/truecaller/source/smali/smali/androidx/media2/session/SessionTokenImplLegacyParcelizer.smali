.class public final Landroidx/media2/session/SessionTokenImplLegacyParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionTokenImplLegacy;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/SessionTokenImplLegacy;

    invoke-direct {v0}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    .line 3
    iget v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    .line 4
    iget v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    .line 5
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    .line 6
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/os/Bundle;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/os/Bundle;

    .line 8
    invoke-virtual {v0}, Landroidx/media2/session/SessionTokenImplLegacy;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionTokenImplLegacy;Ln3/i0/c;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 5
    iget-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Ln3/i0/e;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v3, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ln3/i0/e;)V

    .line 8
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    .line 9
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ln3/i0/e;)V

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 13
    :cond_0
    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    .line 14
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 16
    invoke-virtual {p1, v0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    .line 17
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 19
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 20
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    const/4 v1, 0x3

    .line 21
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 22
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 23
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    const/4 v1, 0x4

    .line 24
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 25
    invoke-virtual {p1, v0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    .line 26
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Ljava/lang/String;

    const/4 v1, 0x5

    .line 27
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 28
    invoke-virtual {p1, v0}, Ln3/i0/c;->L(Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/os/Bundle;

    const/4 v0, 0x6

    .line 30
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 31
    invoke-virtual {p1, p0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    return-void
.end method
