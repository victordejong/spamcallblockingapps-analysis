.class public final Ln3/y/b/a/t0/q0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/q0/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;
    .locals 5

    .line 1
    new-instance v0, Ln3/y/b/a/t0/q0/f$a;

    instance-of v1, p0, Ln3/y/b/a/q0/w/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    instance-of v1, p0, Ln3/y/b/a/q0/w/a;

    if-nez v1, :cond_1

    instance-of v1, p0, Ln3/y/b/a/q0/w/c;

    if-nez v1, :cond_1

    instance-of v1, p0, Ln3/y/b/a/q0/t/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 2
    :goto_1
    instance-of v4, p0, Ln3/y/b/a/q0/w/b0;

    if-nez v4, :cond_2

    instance-of v4, p0, Ln3/y/b/a/q0/u/d;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 3
    :cond_3
    invoke-direct {v0, p0, v1, v2}, Ln3/y/b/a/t0/q0/f$a;-><init>(Ln3/y/b/a/q0/g;ZZ)V

    return-object v0
.end method

.method public static b(Ln3/y/b/a/x0/v;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Ln3/y/b/a/q0/u/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/x0/v;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)",
            "Ln3/y/b/a/q0/u/d;"
        }
    .end annotation

    .line 1
    new-instance v6, Ln3/y/b/a/q0/u/d;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object v5, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/q0/u/d;-><init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/u/i;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v6
.end method

.method public static c(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Ln3/y/b/a/x0/v;)Ln3/y/b/a/q0/w/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Ln3/y/b/a/x0/v;",
            ")",
            "Ln3/y/b/a/q0/w/b0;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "application/cea-608"

    .line 1
    invoke-static {v1, p1, v0, v1, v1}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 4
    :goto_0
    iget-object p1, p2, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 6
    sget-object p2, Ln3/y/b/a/x0/j;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {p1}, Ln3/y/b/a/x0/x;->D(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 8
    array-length v2, p2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    .line 9
    invoke-static {v4}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {v4}, Ln3/y/b/a/x0/j;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v4, v1

    :goto_3
    const-string p2, "audio/mp4a-latm"

    .line 11
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    or-int/lit8 p0, p0, 0x2

    :cond_5
    if-nez p1, :cond_6

    goto :goto_5

    .line 12
    :cond_6
    invoke-static {p1}, Ln3/y/b/a/x0/x;->D(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 13
    array-length p2, p1

    :goto_4
    if-ge v0, p2, :cond_8

    aget-object v2, p1, v0

    .line 14
    invoke-static {v2}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 15
    invoke-static {v2}, Ln3/y/b/a/x0/j;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v2

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    const-string p1, "video/avc"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    or-int/lit8 p0, p0, 0x4

    .line 17
    :cond_9
    new-instance p1, Ln3/y/b/a/q0/w/b0;

    new-instance p2, Ln3/y/b/a/q0/w/g;

    invoke-direct {p2, p0, p3}, Ln3/y/b/a/q0/w/g;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Ln3/y/b/a/q0/w/b0;-><init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/w/c0$c;)V

    return-object p1
.end method

.method public static d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ln3/y/b/a/q0/g;->h(Ln3/y/b/a/q0/d;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    move v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    .line 3
    throw p0

    .line 4
    :catch_0
    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    :goto_0
    return v0
.end method
