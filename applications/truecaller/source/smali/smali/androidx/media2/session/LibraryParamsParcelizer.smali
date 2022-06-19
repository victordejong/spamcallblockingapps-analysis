.class public final Landroidx/media2/session/LibraryParamsParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-direct {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    .line 3
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    .line 4
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    .line 5
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result p0

    iput p0, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    return-object v0
.end method

.method public static write(Landroidx/media2/session/MediaLibraryService$LibraryParams;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    .line 5
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 8
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 11
    iget p0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 13
    invoke-virtual {p1, p0}, Ln3/i0/c;->I(I)V

    return-void
.end method
