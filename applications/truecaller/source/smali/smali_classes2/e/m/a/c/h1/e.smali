.class public final Le/m/a/c/h1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Le/m/a/c/h1/e;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 7
    iput-boolean p5, p0, Le/m/a/c/h1/e;->g:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p9, :cond_1

    if-eqz p4, :cond_1

    .line 8
    sget p5, Le/m/a/c/q1/d0;->a:I

    const/16 p6, 0x13

    if-lt p5, p6, :cond_0

    const-string p5, "adaptive-playback"

    .line 9
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    move p5, p1

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    if-eqz p5, :cond_1

    move p5, p1

    goto :goto_1

    :cond_1
    move p5, p3

    .line 10
    :goto_1
    iput-boolean p5, p0, Le/m/a/c/h1/e;->e:Z

    const/16 p5, 0x15

    if-eqz p4, :cond_3

    .line 11
    sget p6, Le/m/a/c/q1/d0;->a:I

    if-lt p6, p5, :cond_2

    const-string p6, "tunneled-playback"

    .line 12
    invoke-virtual {p4, p6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    move p6, p1

    goto :goto_2

    :cond_2
    move p6, p3

    :cond_3
    :goto_2
    if-nez p10, :cond_6

    if-eqz p4, :cond_5

    .line 13
    sget p6, Le/m/a/c/q1/d0;->a:I

    if-lt p6, p5, :cond_4

    const-string p5, "secure-playback"

    .line 14
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    move p4, p1

    goto :goto_3

    :cond_4
    move p4, p3

    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    move p1, p3

    .line 15
    :cond_6
    :goto_4
    iput-boolean p1, p0, Le/m/a/c/h1/e;->f:Z

    .line 16
    invoke-static {p2}, Le/m/a/c/q1/q;->g(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Le/m/a/c/h1/e;->h:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    .line 4
    invoke-static {p1, v0}, Le/m/a/c/q1/d0;->d(II)I

    move-result p1

    mul-int/2addr p1, v0

    .line 5
    invoke-static {p2, p0}, Le/m/a/c/q1/d0;->d(II)I

    move-result p2

    mul-int/2addr p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Le/m/a/c/h1/e;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 5
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Le/m/a/c/h1/e;
    .locals 12

    .line 1
    new-instance v11, Le/m/a/c/h1/e;

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Le/m/a/c/h1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public c()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/Format;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v3, p0, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {v0}, Le/m/a/c/q1/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v3, p0, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    :goto_0
    move v0, v1

    goto :goto_3

    .line 5
    :cond_2
    invoke-static {p1}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    iget-boolean v4, p0, Le/m/a/c/h1/e;->h:Z

    if-nez v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0}, Le/m/a/c/h1/e;->c()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 10
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v3, :cond_5

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v7, v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_6
    sget-object v0, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto :goto_0

    :cond_7
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    return v1

    .line 12
    :cond_8
    iget-boolean v0, p0, Le/m/a/c/h1/e;->h:Z

    const/16 v3, 0x15

    if-eqz v0, :cond_e

    .line 13
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->n:I

    if-lez v0, :cond_d

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->o:I

    if-gtz v4, :cond_9

    goto :goto_4

    .line 14
    :cond_9
    sget v5, Le/m/a/c/q1/d0;->a:I

    if-lt v5, v3, :cond_a

    .line 15
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->p:F

    float-to-double v1, p1

    invoke-virtual {p0, v0, v4, v1, v2}, Le/m/a/c/h1/e;->g(IID)Z

    move-result p1

    return p1

    :cond_a
    mul-int/2addr v0, v4

    .line 16
    invoke-static {}, Le/m/a/c/h1/h;->i()I

    move-result p1

    if-gt v0, p1, :cond_b

    move v1, v2

    :cond_b
    if-nez v1, :cond_c

    .line 17
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    :cond_c
    return v1

    :cond_d
    :goto_4
    return v2

    .line 18
    :cond_e
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-lt v0, v3, :cond_1b

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->w:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    .line 19
    iget-object v5, p0, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_f

    .line 20
    sget-object v3, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    :goto_5
    move v3, v1

    goto :goto_6

    .line 21
    :cond_f
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_10

    .line 22
    sget-object v3, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto :goto_5

    .line 23
    :cond_10
    invoke-virtual {v5, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 24
    sget-object v3, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto :goto_5

    :cond_11
    move v3, v2

    :goto_6
    if-eqz v3, :cond_1c

    .line 25
    :cond_12
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->v:I

    if-eq p1, v4, :cond_1b

    .line 26
    iget-object v3, p0, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v3, :cond_13

    .line 27
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    :goto_7
    move p1, v1

    goto/16 :goto_9

    .line 28
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_14

    .line 29
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto :goto_7

    .line 30
    :cond_14
    iget-object v4, p0, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-gt v3, v2, :cond_19

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_15

    if-lez v3, :cond_15

    goto/16 :goto_8

    :cond_15
    const-string v0, "audio/mpeg"

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/3gpp"

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/amr-wb"

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/mp4a-latm"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/vorbis"

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/opus"

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/raw"

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/flac"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/g711-alaw"

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/g711-mlaw"

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/gsm"

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    const-string v0, "audio/ac3"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v3, 0x6

    goto :goto_8

    :cond_17
    const-string v0, "audio/eac3"

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v3, 0x10

    goto :goto_8

    :cond_18
    const/16 v3, 0x1e

    :cond_19
    :goto_8
    if-ge v3, p1, :cond_1a

    .line 45
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1a
    move p1, v2

    :goto_9
    if-eqz p1, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1
.end method

.method public e(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/e;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p0, Le/m/a/c/h1/e;->e:Z

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/e;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->q:I

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->q:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Le/m/a/c/h1/e;->e:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->n:I

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->n:I

    if-ne v0, v3, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->o:I

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne v0, v3, :cond_2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->u:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz p3, :cond_3

    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->u:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->u:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 3
    invoke-static {p1, p2}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 4
    :cond_4
    iget-object p3, p0, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->v:I

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne p3, v0, :cond_8

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->w:I

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->w:I

    if-eq p3, v0, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    invoke-static {p1}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    .line 7
    invoke-static {p2}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1

    :cond_8
    :goto_2
    return v2
.end method

.method public g(IID)Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    return v1

    .line 5
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Le/m/a/c/h1/e;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    if-ge p1, p2, :cond_4

    .line 6
    iget-object v2, p0, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    const-string v4, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v4, "mcv5a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    invoke-static {v0, p2, p1, p3, p4}, Le/m/a/c/h1/e;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    sget-object p1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    return v1

    :cond_5
    :goto_2
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    return-object v0
.end method
