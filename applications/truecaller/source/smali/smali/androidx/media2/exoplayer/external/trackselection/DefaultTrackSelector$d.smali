.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b:Z

    .line 3
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v1, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->d:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4
    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->c:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v0

    .line 5
    :goto_1
    iget-object v3, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->b:Ljava/lang/String;

    iget-boolean p2, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->c:Z

    .line 6
    invoke-static {p1, v3, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e:I

    if-lez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    .line 7
    :goto_2
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->d:Z

    .line 8
    invoke-static {p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v0

    .line 9
    :goto_3
    invoke-static {p1, p4, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f:I

    if-gtz p2, :cond_6

    if-nez v1, :cond_6

    if-eqz p3, :cond_7

    if-lez p1, :cond_7

    :cond_6
    move v0, v2

    .line 10
    :cond_7
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 2
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e:I

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->c:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->c:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    .line 5
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->d:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->d:Z

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    .line 6
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)I

    move-result p1

    return p1
.end method
