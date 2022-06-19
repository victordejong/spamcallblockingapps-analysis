.class public final Landroidx/media2/common/SubtitleDataParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/common/SubtitleData;
    .locals 4

    .line 1
    new-instance v0, Landroidx/media2/common/SubtitleData;

    invoke-direct {v0}, Landroidx/media2/common/SubtitleData;-><init>()V

    .line 2
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->a:J

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->a:J

    .line 3
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ln3/i0/c;->t(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->b:J

    .line 4
    iget-object v1, v0, Landroidx/media2/common/SubtitleData;->c:[B

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v2}, Ln3/i0/c;->n(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ln3/i0/c;->j()[B

    move-result-object v1

    .line 7
    :goto_0
    iput-object v1, v0, Landroidx/media2/common/SubtitleData;->c:[B

    return-object v0
.end method

.method public static write(Landroidx/media2/common/SubtitleData;Ln3/i0/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 5
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->b:J

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, v0, v1}, Ln3/i0/c;->J(J)V

    .line 8
    iget-object p0, p0, Landroidx/media2/common/SubtitleData;->c:[B

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, p0}, Ln3/i0/c;->E([B)V

    return-void
.end method
