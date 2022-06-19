.class public final Landroidx/media2/common/MediaMetadataParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/common/MediaMetadata;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/common/MediaMetadata;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    .line 3
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata;->c:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/ParcelImplListSlice;

    iput-object p0, v0, Landroidx/media2/common/MediaMetadata;->c:Landroidx/media2/common/ParcelImplListSlice;

    .line 4
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata;->g()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/MediaMetadata;Ln3/i0/c;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 4
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    check-cast v4, Landroid/graphics/Bitmap;

    .line 10
    new-instance v5, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    invoke-direct {v5, v3, v4}, Landroidx/media2/common/MediaMetadata$BitmapEntry;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 11
    instance-of v4, v5, Landroidx/media2/common/MediaItem;

    if-eqz v4, :cond_1

    .line 12
    new-instance v4, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;

    check-cast v5, Landroidx/media2/common/MediaItem;

    invoke-direct {v4, v5}, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;-><init>(Landroidx/media2/common/MediaItem;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v4, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Ln3/i0/e;)V

    .line 14
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v2, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {v2, v1}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Landroidx/media2/common/MediaMetadata;->c:Landroidx/media2/common/ParcelImplListSlice;

    .line 17
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 20
    invoke-virtual {p1, v0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    .line 21
    iget-object p0, p0, Landroidx/media2/common/MediaMetadata;->c:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 23
    invoke-virtual {p1, p0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
