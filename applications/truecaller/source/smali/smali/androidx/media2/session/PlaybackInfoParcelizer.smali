.class public final Landroidx/media2/session/PlaybackInfoParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-direct {v0}, Landroidx/media2/session/MediaController$PlaybackInfo;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    .line 3
    iget v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    .line 4
    iget v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    .line 5
    iget v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    .line 6
    iget-object v1, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object p0

    check-cast p0, Landroidx/media/AudioAttributesCompat;

    iput-object p0, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/MediaController$PlaybackInfo;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 5
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 8
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 11
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 13
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 14
    iget-object p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    const/4 v0, 0x5

    .line 15
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 16
    invoke-virtual {p1, p0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    return-void
.end method
