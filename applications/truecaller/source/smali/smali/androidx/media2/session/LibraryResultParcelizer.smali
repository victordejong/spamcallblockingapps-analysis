.class public final Landroidx/media2/session/LibraryResultParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/LibraryResult;
    .locals 4

    .line 1
    new-instance v0, Landroidx/media2/session/LibraryResult;

    invoke-direct {v0}, Landroidx/media2/session/LibraryResult;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/LibraryResult;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/LibraryResult;->a:I

    .line 3
    iget-wide v1, v0, Landroidx/media2/session/LibraryResult;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/LibraryResult;->b:J

    .line 4
    iget-object v1, v0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, v0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    .line 5
    iget-object v1, v0, Landroidx/media2/session/LibraryResult;->e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    iput-object v1, v0, Landroidx/media2/session/LibraryResult;->e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 6
    iget-object v1, v0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/ParcelImplListSlice;

    iput-object p0, v0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    .line 7
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/session/LibraryResult;Ln3/i0/c;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    invoke-static {v1}, Ln3/y/d/b;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

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
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v1, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    if-nez v1, :cond_5

    .line 10
    iget-object v1, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    .line 11
    sget-object v2, Ln3/y/d/b;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 12
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 13
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/common/MediaItem;

    if-eqz v4, :cond_3

    .line 15
    new-instance v5, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;

    invoke-direct {v5, v4}, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;-><init>(Landroidx/media2/common/MediaItem;)V

    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_4
    new-instance v1, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {v1, v2}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    .line 18
    :goto_2
    iput-object v1, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    .line 19
    :cond_5
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 20
    :cond_6
    :goto_3
    iget v0, p0, Landroidx/media2/session/LibraryResult;->a:I

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 22
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 23
    iget-wide v0, p0, Landroidx/media2/session/LibraryResult;->b:J

    const/4 v2, 0x2

    .line 24
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 25
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 26
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    const/4 v1, 0x3

    .line 27
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 28
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 29
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 31
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 32
    iget-object p0, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v0, 0x5

    .line 33
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 34
    invoke-virtual {p1, p0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    return-void
.end method
