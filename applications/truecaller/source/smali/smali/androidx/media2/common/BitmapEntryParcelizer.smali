.class public final Landroidx/media2/common/BitmapEntryParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/common/MediaMetadata$BitmapEntry;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$BitmapEntry;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    iput-object p0, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static write(Landroidx/media2/common/MediaMetadata$BitmapEntry;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->L(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, p0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    return-void
.end method
