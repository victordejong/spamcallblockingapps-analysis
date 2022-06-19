.class public final Ln3/y/b/a/r0/a;
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
    iput-object p1, p0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ln3/y/b/a/r0/a;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Ln3/y/b/a/r0/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 7
    iput-boolean p5, p0, Ln3/y/b/a/r0/a;->g:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p9, :cond_1

    if-eqz p4, :cond_1

    .line 8
    sget p5, Ln3/y/b/a/x0/x;->a:I

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
    iput-boolean p5, p0, Ln3/y/b/a/r0/a;->e:Z

    const/16 p5, 0x15

    if-eqz p4, :cond_3

    .line 11
    sget p6, Ln3/y/b/a/x0/x;->a:I

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
    sget p6, Ln3/y/b/a/x0/x;->a:I

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
    iput-boolean p1, p0, Ln3/y/b/a/r0/a;->f:Z

    .line 16
    invoke-static {p2}, Ln3/y/b/a/x0/j;->g(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln3/y/b/a/r0/a;->h:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Ln3/y/b/a/r0/a;
    .locals 12

    .line 1
    new-instance v11, Ln3/y/b/a/r0/a;

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

    invoke-direct/range {v0 .. v10}, Ln3/y/b/a/r0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public b()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method

.method public c(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v3, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {v0}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v3, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ", "

    if-nez v3, :cond_2

    .line 4
    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/16 v5, 0xd

    invoke-static {v3, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "codec.mime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1}, Ln3/y/b/a/r0/h;->c(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8
    iget-boolean v6, p0, Ln3/y/b/a/r0/a;->h:Z

    if-nez v6, :cond_4

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0}, Ln3/y/b/a/r0/a;->b()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 10
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_5

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v9, v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 11
    :cond_6
    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/16 v5, 0x16

    invoke-static {v3, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "codec.profileLevel, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    return v1

    .line 12
    :cond_8
    iget-boolean v0, p0, Ln3/y/b/a/r0/a;->h:Z

    const/16 v3, 0x15

    if-eqz v0, :cond_e

    .line 13
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->n:I

    if-lez v0, :cond_d

    iget v4, p1, Landroidx/media2/exoplayer/external/Format;->o:I

    if-gtz v4, :cond_9

    goto :goto_4

    .line 14
    :cond_9
    sget v5, Ln3/y/b/a/x0/x;->a:I

    if-lt v5, v3, :cond_a

    .line 15
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->p:F

    float-to-double v1, p1

    invoke-virtual {p0, v0, v4, v1, v2}, Ln3/y/b/a/r0/a;->f(IID)Z

    move-result p1

    return p1

    :cond_a
    mul-int/2addr v0, v4

    .line 16
    invoke-static {}, Ln3/y/b/a/r0/h;->h()I

    move-result v3

    if-gt v0, v3, :cond_b

    move v1, v2

    :cond_b
    if-nez v1, :cond_c

    .line 17
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->n:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->o:I

    const/16 v2, 0x28

    const-string v3, "legacyFrameSize, "

    const-string v4, "x"

    invoke-static {v2, v3, v0, v4, p1}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    :cond_c
    return v1

    :cond_d
    :goto_4
    return v2

    .line 18
    :cond_e
    sget v0, Ln3/y/b/a/x0/x;->a:I

    if-lt v0, v3, :cond_1b

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->w:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    .line 19
    iget-object v5, p0, Ln3/y/b/a/r0/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_f

    const-string v3, "sampleRate.caps"

    .line 20
    invoke-virtual {p0, v3}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    goto :goto_5

    .line 21
    :cond_f
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_10

    const-string v3, "sampleRate.aCaps"

    .line 22
    invoke-virtual {p0, v3}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_10
    invoke-virtual {v5, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v5

    if-nez v5, :cond_11

    const/16 v5, 0x1f

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "sampleRate.support, "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    :goto_5
    move v3, v1

    goto :goto_6

    :cond_11
    move v3, v2

    :goto_6
    if-eqz v3, :cond_1c

    .line 25
    :cond_12
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->v:I

    if-eq p1, v4, :cond_1b

    .line 26
    iget-object v3, p0, Ln3/y/b/a/r0/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v3, :cond_13

    const-string p1, "channelCount.caps"

    .line 27
    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 28
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_14

    const-string p1, "channelCount.aCaps"

    .line 29
    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 30
    :cond_14
    iget-object v4, p0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    iget-object v5, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-gt v3, v2, :cond_19

    const/16 v6, 0x1a

    if-lt v0, v6, :cond_15

    if-lez v3, :cond_15

    goto/16 :goto_9

    :cond_15
    const-string v0, "audio/mpeg"

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/3gpp"

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/amr-wb"

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/mp4a-latm"

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/vorbis"

    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/opus"

    .line 37
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/raw"

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/flac"

    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/g711-alaw"

    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/g711-mlaw"

    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/gsm"

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    const-string v0, "audio/ac3"

    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x6

    :goto_7
    move v3, v0

    goto :goto_8

    :cond_17
    const-string v0, "audio/eac3"

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x10

    goto :goto_7

    :cond_18
    const/16 v0, 0x1e

    goto :goto_7

    .line 45
    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_19
    :goto_9
    if-ge v3, p1, :cond_1a

    const/16 v0, 0x21

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    :goto_a
    move p1, v1

    goto :goto_b

    :cond_1a
    move p1, v2

    :goto_b
    if-eqz p1, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1
.end method

.method public d(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/r0/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p0, Ln3/y/b/a/r0/a;->e:Z

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Ln3/y/b/a/r0/h;->c(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

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

.method public e(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/r0/a;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->q:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Ln3/y/b/a/r0/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->n:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->n:I

    if-ne v0, v3, :cond_2

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->o:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->o:I

    if-ne v0, v3, :cond_2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p2, Landroidx/media2/exoplayer/external/Format;->u:Landroidx/media2/exoplayer/external/video/ColorInfo;

    if-eqz p3, :cond_3

    :cond_1
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->u:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->u:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 3
    invoke-static {p1, p2}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object p3, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->v:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->v:I

    if-ne p3, v0, :cond_8

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->w:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->w:I

    if-eq p3, v0, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    invoke-static {p1}, Ln3/y/b/a/r0/h;->c(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object p1

    .line 7
    invoke-static {p2}, Ln3/y/b/a/r0/h;->c(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

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

.method public f(IID)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 4
    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Ln3/y/b/a/r0/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x45

    const-string v3, "x"

    if-ge p1, p2, :cond_3

    .line 6
    invoke-static {v0, p2, p1, p3, p4}, Ln3/y/b/a/r0/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "sizeAndRate.rotated, "

    .line 7
    invoke-static {v2, v0, p1, v3, p2}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    iget-object p3, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    sget-object p4, Ln3/y/b/a/x0/x;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "sizeAndRate.support, "

    .line 9
    invoke-static {v2, v0, p1, v3, p2}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/a;->g(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    iget-object v1, p0, Ln3/y/b/a/r0/a;->b:Ljava/lang/String;

    sget-object v2, Ln3/y/b/a/x0/x;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    return-object v0
.end method
