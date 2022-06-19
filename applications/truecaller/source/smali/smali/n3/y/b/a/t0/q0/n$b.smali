.class public final Ln3/y/b/a/t0/q0/n$b;
.super Ln3/y/b/a/t0/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/q0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/w0/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/t0/i0;-><init>(Ln3/y/b/a/w0/b;)V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/q0/n$b;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public c(Landroidx/media2/exoplayer/external/Format;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/q0/n$b;->p:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 3
    :cond_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move-object v1, v2

    goto :goto_5

    .line 4
    :cond_1
    iget-object v3, v1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v3, :cond_3

    .line 5
    iget-object v7, v1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v7, v7, v5

    .line 6
    instance-of v8, v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v8, :cond_2

    .line 7
    check-cast v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 8
    iget-object v7, v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v8, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_2
    if-ne v5, v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v3, -0x1

    .line 9
    new-array v2, v2, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    :goto_3
    if-ge v4, v3, :cond_8

    if-eq v4, v5, :cond_7

    if-ge v4, v5, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v4, -0x1

    .line 10
    :goto_4
    iget-object v7, v1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v7, v7, v4

    .line 11
    aput-object v7, v2, v6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 12
    :cond_8
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 13
    :goto_5
    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-super {p0, p1}, Ln3/y/b/a/t0/i0;->c(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
