.class public final Landroidx/media2/session/ThumbRatingParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/ThumbRating;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/ThumbRating;

    invoke-direct {v0}, Landroidx/media2/session/ThumbRating;-><init>()V

    .line 2
    iget-boolean v1, v0, Landroidx/media2/session/ThumbRating;->a:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->g(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media2/session/ThumbRating;->a:Z

    .line 3
    iget-boolean v1, v0, Landroidx/media2/session/ThumbRating;->b:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->g(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/media2/session/ThumbRating;->b:Z

    return-object v0
.end method

.method public static write(Landroidx/media2/session/ThumbRating;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Landroidx/media2/session/ThumbRating;->a:Z

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->C(Z)V

    .line 5
    iget-boolean p0, p0, Landroidx/media2/session/ThumbRating;->b:Z

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, p0}, Ln3/i0/c;->C(Z)V

    return-void
.end method
