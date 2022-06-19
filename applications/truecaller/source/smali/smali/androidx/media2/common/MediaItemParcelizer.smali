.class public final Landroidx/media2/common/MediaItemParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/common/MediaItem;
    .locals 4

    .line 1
    new-instance v0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0}, Landroidx/media2/common/MediaItem;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaMetadata;

    iput-object v1, v0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    .line 3
    iget-wide v1, v0, Landroidx/media2/common/MediaItem;->c:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/MediaItem;->c:J

    .line 4
    iget-wide v1, v0, Landroidx/media2/common/MediaItem;->d:J

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/MediaItem;->d:J

    return-object v0
.end method

.method public static write(Landroidx/media2/common/MediaItem;Ln3/i0/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 5
    invoke-virtual {p1, v0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    .line 6
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->c:J

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 8
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 9
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->d:J

    const/4 p0, 0x3

    .line 10
    invoke-virtual {p1, p0}, Ln3/i0/c;->B(I)V

    .line 11
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaItem\'s subclasses shouldn\'t be parcelized."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
