.class public final Landroidx/media2/session/ConnectionResultParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/ConnectionResult;
    .locals 4

    .line 1
    new-instance v0, Landroidx/media2/session/ConnectionResult;

    invoke-direct {v0}, Landroidx/media2/session/ConnectionResult;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->a:I

    .line 3
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Ln3/i0/c;->n(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/i0/c;->y()Landroid/os/IBinder;

    move-result-object v1

    .line 6
    :goto_0
    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    .line 7
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->m:I

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->m:I

    .line 8
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->n:I

    const/16 v2, 0xb

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->n:I

    .line 9
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/ParcelImplListSlice;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    .line 10
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->p:Landroidx/media2/session/SessionCommandGroup;

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommandGroup;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->p:Landroidx/media2/session/SessionCommandGroup;

    .line 11
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->q:I

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->q:I

    .line 12
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->r:I

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->r:I

    .line 13
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->s:I

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->s:I

    .line 14
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->t:Landroid/os/Bundle;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->t:Landroid/os/Bundle;

    .line 15
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->u:Landroidx/media2/common/VideoSize;

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/VideoSize;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->u:Landroidx/media2/common/VideoSize;

    .line 16
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    const/16 v2, 0x13

    .line 17
    invoke-virtual {p0, v2}, Ln3/i0/c;->n(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Ln3/i0/c;->m(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19
    :goto_1
    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    .line 20
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->d:Landroid/app/PendingIntent;

    .line 21
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 22
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x15

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 23
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 24
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x18

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 25
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    const/16 v2, 0x19

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaMetadata;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    .line 26
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->B:I

    const/16 v2, 0x1a

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->B:I

    .line 27
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->e:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->e:I

    .line 28
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, v0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    .line 29
    iget-wide v1, v0, Landroidx/media2/session/ConnectionResult;->h:J

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/ConnectionResult;->h:J

    .line 30
    iget-wide v1, v0, Landroidx/media2/session/ConnectionResult;->i:J

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/ConnectionResult;->i:J

    .line 31
    iget v1, v0, Landroidx/media2/session/ConnectionResult;->j:F

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->p(FI)F

    move-result v1

    iput v1, v0, Landroidx/media2/session/ConnectionResult;->j:F

    .line 32
    iget-wide v1, v0, Landroidx/media2/session/ConnectionResult;->k:J

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/ConnectionResult;->k:J

    .line 33
    iget-object v1, v0, Landroidx/media2/session/ConnectionResult;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/MediaController$PlaybackInfo;

    iput-object p0, v0, Landroidx/media2/session/ConnectionResult;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 34
    invoke-virtual {v0}, Landroidx/media2/session/ConnectionResult;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/session/ConnectionResult;Ln3/i0/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->b:Ln3/y/d/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/media2/session/ConnectionResult;->b:Ln3/y/d/a;

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    .line 5
    iget-object v1, p0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    .line 6
    invoke-static {v1}, Ln3/y/d/b;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->a:I

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 11
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 13
    invoke-virtual {p1, v0}, Ln3/i0/c;->M(Landroid/os/IBinder;)V

    .line 14
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->m:I

    const/16 v1, 0xa

    .line 15
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 16
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 17
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->n:I

    const/16 v1, 0xb

    .line 18
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 19
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 20
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    const/16 v1, 0xc

    .line 21
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 22
    invoke-virtual {p1, v0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    .line 23
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->p:Landroidx/media2/session/SessionCommandGroup;

    const/16 v1, 0xd

    .line 24
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 25
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 26
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->q:I

    const/16 v1, 0xe

    .line 27
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 28
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 29
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->r:I

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 31
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 32
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->s:I

    const/16 v1, 0x10

    .line 33
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 34
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 35
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->t:Landroid/os/Bundle;

    const/16 v1, 0x11

    .line 36
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 37
    invoke-virtual {p1, v0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->u:Landroidx/media2/common/VideoSize;

    const/16 v1, 0x12

    .line 39
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 40
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 41
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    const/16 v1, 0x13

    .line 42
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->G(Ljava/util/Collection;I)V

    .line 43
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    .line 44
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 45
    invoke-virtual {p1, v0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    .line 46
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x14

    .line 47
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 48
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 49
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x15

    .line 50
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 51
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 52
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x17

    .line 53
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 54
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 55
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x18

    .line 56
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 57
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 58
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    const/16 v1, 0x19

    .line 59
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 60
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 61
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->B:I

    const/16 v1, 0x1a

    .line 62
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 63
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 64
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->e:I

    const/4 v1, 0x3

    .line 65
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 66
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 67
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    const/4 v1, 0x4

    .line 68
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 69
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 70
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->h:J

    const/4 v2, 0x5

    .line 71
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 72
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 73
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->i:J

    const/4 v2, 0x6

    .line 74
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 75
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 76
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->j:F

    const/4 v1, 0x7

    .line 77
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 78
    invoke-virtual {p1, v0}, Ln3/i0/c;->H(F)V

    .line 79
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->k:J

    const/16 v2, 0x8

    .line 80
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 81
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 82
    iget-object p0, p0, Landroidx/media2/session/ConnectionResult;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    const/16 v0, 0x9

    .line 83
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 84
    invoke-virtual {p1, p0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
