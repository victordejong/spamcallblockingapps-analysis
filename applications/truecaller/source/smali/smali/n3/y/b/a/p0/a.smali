.class public Ln3/y/b/a/p0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/p0/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ln3/y/b/a/p0/e;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/y/b/a/p0/c<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static e(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    if-ge v1, v2, :cond_4

    .line 3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Ln3/y/b/a/c;->c:Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ln3/y/b/a/c;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 6
    iget-object v3, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->e:[B

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ln3/y/b/a/p0/a;->e(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    aget-object v0, v0, v2

    .line 5
    sget-object v3, Ln3/y/b/a/c;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    goto :goto_0

    :cond_0
    return v2

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, "cenc"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "cbc1"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cbcs"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cens"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    .line 12
    :cond_4
    :goto_1
    sget p1, Ln3/y/b/a/x0/x;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method public c(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ln3/y/b/a/p0/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ln3/y/b/a/p0/b<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public d(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/p0/a;->b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method
