.class public final Ln3/y/b/a/q0/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/s/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/s/a$b;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/q0/s/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/q0/s/f;

.field public d:Ln3/y/b/a/q0/s/b;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ln3/y/b/a/q0/s/a;->a:[B

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ln3/y/b/a/q0/s/f;

    invoke-direct {v0}, Ln3/y/b/a/q0/s/f;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/s/a;->c:Ln3/y/b/a/q0/s/f;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/b/a/q0/d;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/q0/s/a;->a:[B

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p1, v1, v0, v2, v0}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 4
    iget-object v1, p0, Ln3/y/b/a/q0/s/a;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Ln3/y/b/a/q0/s/f;->b(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-gt v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Ln3/y/b/a/q0/s/a;->a:[B

    invoke-static {v2, v1, v0}, Ln3/y/b/a/q0/s/f;->a([BIZ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 6
    iget-object v3, p0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    check-cast v3, Ln3/y/b/a/q0/s/d$b;

    .line 7
    iget-object v3, v3, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x1549a966

    if-eq v2, v3, :cond_1

    const v3, 0x1f43b675

    if-eq v2, v3, :cond_1

    const v3, 0x1c53bb6b

    if-eq v2, v3, :cond_1

    const v3, 0x1654ae6b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v1}, Ln3/y/b/a/q0/d;->h(I)V

    int-to-long v0, v2

    return-wide v0

    .line 10
    :cond_2
    invoke-virtual {p1, v4}, Ln3/y/b/a/q0/d;->h(I)V

    goto :goto_0
.end method

.method public b(Ln3/y/b/a/q0/d;)Z
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_6b

    .line 4
    iget-wide v7, v1, Ln3/y/b/a/q0/d;->d:J

    .line 5
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/q0/s/a$b;

    .line 6
    iget-wide v9, v2, Ln3/y/b/a/q0/s/a$b;->b:J

    cmp-long v2, v7, v9

    if-ltz v2, :cond_6b

    .line 7
    iget-object v1, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/q0/s/a$b;

    .line 8
    iget v2, v2, Ln3/y/b/a/q0/s/a$b;->a:I

    .line 9
    check-cast v1, Ln3/y/b/a/q0/s/d$b;

    .line 10
    iget-object v1, v1, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_67

    const/16 v7, 0xae

    const/4 v8, -0x1

    if-eq v2, v7, :cond_f

    const/16 v7, 0x4dbb

    const v9, 0x1c53bb6b

    if-eq v2, v7, :cond_d

    const/16 v7, 0x6240

    if-eq v2, v7, :cond_b

    const/16 v7, 0x6d80

    if-eq v2, v7, :cond_9

    const v7, 0x1549a966

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v7, :cond_7

    const v7, 0x1654ae6b

    if-eq v2, v7, :cond_5

    if-eq v2, v9, :cond_0

    goto/16 :goto_30

    .line 12
    :cond_0
    iget-boolean v2, v1, Ln3/y/b/a/q0/s/d;->v:Z

    if-nez v2, :cond_6a

    .line 13
    iget-object v2, v1, Ln3/y/b/a/q0/s/d;->a0:Ln3/y/b/a/q0/h;

    .line 14
    iget-wide v7, v1, Ln3/y/b/a/q0/s/d;->q:J

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    iget-wide v3, v1, Ln3/y/b/a/q0/s/d;->t:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_4

    iget-object v3, v1, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    if-eqz v3, :cond_4

    .line 15
    iget v3, v3, Ln3/y/b/a/x0/h;->a:I

    if-eqz v3, :cond_4

    .line 16
    iget-object v4, v1, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    if-eqz v4, :cond_4

    .line 17
    iget v4, v4, Ln3/y/b/a/x0/h;->a:I

    if-eq v4, v3, :cond_1

    goto :goto_3

    .line 18
    :cond_1
    new-array v4, v3, [I

    .line 19
    new-array v7, v3, [J

    .line 20
    new-array v8, v3, [J

    .line 21
    new-array v9, v3, [J

    move v10, v5

    :goto_1
    if-ge v10, v3, :cond_2

    .line 22
    iget-object v11, v1, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    invoke-virtual {v11, v10}, Ln3/y/b/a/x0/h;->b(I)J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 23
    iget-wide v11, v1, Ln3/y/b/a/q0/s/d;->q:J

    iget-object v13, v1, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    invoke-virtual {v13, v10}, Ln3/y/b/a/x0/h;->b(I)J

    move-result-wide v13

    add-long/2addr v13, v11

    aput-wide v13, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v10, v3, -0x1

    if-ge v5, v10, :cond_3

    add-int/lit8 v10, v5, 0x1

    .line 24
    aget-wide v11, v7, v10

    aget-wide v13, v7, v5

    sub-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v4, v5

    .line 25
    aget-wide v11, v9, v10

    aget-wide v13, v9, v5

    sub-long/2addr v11, v13

    aput-wide v11, v8, v5

    move v5, v10

    goto :goto_2

    .line 26
    :cond_3
    iget-wide v11, v1, Ln3/y/b/a/q0/s/d;->q:J

    iget-wide v13, v1, Ln3/y/b/a/q0/s/d;->p:J

    add-long/2addr v11, v13

    aget-wide v13, v7, v10

    sub-long/2addr v11, v13

    long-to-int v3, v11

    aput v3, v4, v10

    .line 27
    iget-wide v11, v1, Ln3/y/b/a/q0/s/d;->t:J

    aget-wide v13, v9, v10

    sub-long/2addr v11, v13

    aput-wide v11, v8, v10

    const/4 v3, 0x0

    .line 28
    iput-object v3, v1, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    .line 29
    iput-object v3, v1, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    .line 30
    new-instance v3, Ln3/y/b/a/q0/b;

    invoke-direct {v3, v4, v7, v8, v9}, Ln3/y/b/a/q0/b;-><init>([I[J[J[J)V

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x0

    .line 31
    iput-object v3, v1, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    .line 32
    iput-object v3, v1, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    .line 33
    new-instance v3, Ln3/y/b/a/q0/n$b;

    iget-wide v4, v1, Ln3/y/b/a/q0/s/d;->t:J

    const-wide/16 v7, 0x0

    .line 34
    invoke-direct {v3, v4, v5, v7, v8}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 35
    :goto_4
    invoke-interface {v2, v3}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    .line 36
    iput-boolean v6, v1, Ln3/y/b/a/q0/s/d;->v:Z

    goto/16 :goto_30

    .line 37
    :cond_5
    iget-object v2, v1, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    iget-object v1, v1, Ln3/y/b/a/q0/s/d;->a0:Ln3/y/b/a/q0/h;

    invoke-interface {v1}, Ln3/y/b/a/q0/h;->g()V

    goto/16 :goto_30

    .line 39
    :cond_6
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_7
    iget-wide v2, v1, Ln3/y/b/a/q0/s/d;->r:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_8

    const-wide/32 v2, 0xf4240

    .line 41
    iput-wide v2, v1, Ln3/y/b/a/q0/s/d;->r:J

    .line 42
    :cond_8
    iget-wide v2, v1, Ln3/y/b/a/q0/s/d;->s:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_6a

    .line 43
    invoke-virtual {v1, v2, v3}, Ln3/y/b/a/q0/s/d;->k(J)J

    move-result-wide v2

    iput-wide v2, v1, Ln3/y/b/a/q0/s/d;->t:J

    goto/16 :goto_30

    .line 44
    :cond_9
    iget-object v1, v1, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iget-boolean v2, v1, Ln3/y/b/a/q0/s/d$c;->g:Z

    if-eqz v2, :cond_6a

    iget-object v1, v1, Ln3/y/b/a/q0/s/d$c;->h:[B

    if-nez v1, :cond_a

    goto/16 :goto_30

    .line 45
    :cond_a
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_b
    iget-object v1, v1, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iget-boolean v2, v1, Ln3/y/b/a/q0/s/d$c;->g:Z

    if-eqz v2, :cond_6a

    .line 47
    iget-object v2, v1, Ln3/y/b/a/q0/s/d$c;->i:Ln3/y/b/a/q0/p$a;

    if-eqz v2, :cond_c

    .line 48
    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v4, v6, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    new-instance v7, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v8, Ln3/y/b/a/c;->a:Ljava/util/UUID;

    iget-object v2, v2, Ln3/y/b/a/q0/p$a;->b:[B

    const-string v9, "video/webm"

    invoke-direct {v7, v8, v9, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v7, v4, v5

    const/4 v2, 0x0

    .line 49
    invoke-direct {v3, v2, v6, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 50
    iput-object v3, v1, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto/16 :goto_30

    .line 51
    :cond_c
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_d
    iget v2, v1, Ln3/y/b/a/q0/s/d;->w:I

    if-eq v2, v8, :cond_e

    iget-wide v5, v1, Ln3/y/b/a/q0/s/d;->x:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_e

    if-ne v2, v9, :cond_6a

    .line 53
    iput-wide v5, v1, Ln3/y/b/a/q0/s/d;->z:J

    goto/16 :goto_30

    .line 54
    :cond_e
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_f
    iget-object v2, v1, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iget-object v2, v2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "A_AAC"

    const-string v6, "A_VORBIS"

    const-string v7, "A_OPUS"

    const-string v8, "V_THEORA"

    const-string v9, "V_MS/VFW/FOURCC"

    const-string v10, "V_MPEGH/ISO/HEVC"

    const-string v11, "V_MPEG4/ISO/AVC"

    const-string v12, "V_MPEG4/ISO/AP"

    const-string v13, "V_MPEG4/ISO/ASP"

    const-string v14, "V_MPEG4/ISO/SP"

    const-string v15, "V_MPEG2"

    const-string v0, "V_AV1"

    move-object/from16 p1, v3

    const-string v3, "V_VP9"

    move-object/from16 v16, v1

    const-string v1, "S_TEXT/ASS"

    move-object/from16 v17, v1

    const-string v1, "A_PCM/INT/LIT"

    move-object/from16 v18, v1

    const-string v1, "A_DTS/EXPRESS"

    move-object/from16 v19, v1

    const-string v1, "S_HDMV/PGS"

    move-object/from16 v20, v1

    const-string v1, "A_DTS"

    move-object/from16 v21, v1

    const-string v1, "A_AC3"

    move-object/from16 v22, v1

    const-string v1, "A_DTS/LOSSLESS"

    move-object/from16 v23, v1

    const-string v1, "S_VOBSUB"

    move-object/from16 v24, v1

    const-string v1, "S_DVBSUB"

    move-object/from16 v25, v1

    const-string v1, "A_MPEG/L3"

    move-object/from16 v26, v1

    const-string v1, "A_MPEG/L2"

    move-object/from16 v27, v1

    const-string v1, "A_TRUEHD"

    move-object/from16 v28, v1

    const-string v1, "A_MS/ACM"

    move-object/from16 v29, v1

    const-string v1, "A_FLAC"

    move-object/from16 v30, v1

    const-string v1, "A_EAC3"

    move-object/from16 v31, v1

    const-string v1, "S_TEXT/UTF8"

    if-nez v4, :cond_1f

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 59
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 60
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 61
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 62
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 63
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 64
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 65
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 66
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 67
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 68
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v4, v27

    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1e

    move-object/from16 v27, v12

    move-object/from16 v12, v26

    .line 71
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1d

    move-object/from16 v26, v14

    move-object/from16 v14, v22

    .line 72
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    move-object/from16 v22, v6

    move-object/from16 v6, v31

    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1a

    move-object/from16 v31, v4

    move-object/from16 v4, v28

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_18

    move-object/from16 v28, v4

    move-object/from16 v4, v21

    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    .line 76
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    move-object/from16 v19, v9

    move-object/from16 v9, v23

    .line 77
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    move-object/from16 v23, v13

    move-object/from16 v13, v30

    .line 78
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_14

    move-object/from16 v30, v11

    move-object/from16 v11, v29

    .line 79
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_12

    move-object/from16 v29, v11

    move-object/from16 v11, v18

    .line 80
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    .line 82
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v17, v5

    move-object/from16 v5, v24

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v24, v5

    move-object/from16 v5, v20

    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_17

    move-object/from16 v20, v14

    move-object/from16 v14, v25

    .line 85
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_a

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_11
    move-object/from16 v24, v5

    goto :goto_6

    :cond_12
    move-object/from16 v29, v11

    goto :goto_5

    :cond_13
    move-object/from16 v23, v13

    move-object/from16 v13, v30

    :cond_14
    move-object/from16 v30, v11

    :goto_5
    move-object/from16 v11, v18

    :cond_15
    move-object/from16 v18, v9

    move-object/from16 v9, v17

    :cond_16
    move-object/from16 v17, v5

    :goto_6
    move-object/from16 v5, v20

    :cond_17
    move-object/from16 v20, v14

    move-object/from16 v14, v25

    goto/16 :goto_a

    :cond_18
    move-object/from16 v28, v4

    goto :goto_7

    :cond_19
    move-object/from16 v22, v6

    move-object/from16 v6, v31

    :cond_1a
    move-object/from16 v31, v4

    :goto_7
    move-object/from16 v4, v21

    :cond_1b
    move-object/from16 v21, v12

    move-object/from16 v12, v19

    :cond_1c
    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v14

    :goto_8
    move-object/from16 v14, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v23

    move-object/from16 v23, v13

    move-object/from16 v13, v40

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v26, v14

    move-object/from16 v14, v25

    move-object/from16 v40, v31

    move-object/from16 v31, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v40

    goto :goto_9

    :cond_1e
    move-object/from16 v27, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v31

    move-object/from16 v31, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v14

    goto :goto_8

    :cond_1f
    move-object/from16 v4, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v14

    move-object/from16 v14, v25

    move-object/from16 v40, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v31

    move-object/from16 v31, v27

    move-object/from16 v27, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v40

    :goto_9
    move-object/from16 v41, v30

    move-object/from16 v30, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v23

    move-object/from16 v23, v13

    move-object/from16 v13, v41

    :goto_a
    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_66

    move-object/from16 v25, v14

    move-object/from16 v2, v16

    .line 86
    iget-object v14, v2, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    move-object/from16 v16, v4

    iget-object v4, v2, Ln3/y/b/a/q0/s/d;->a0:Ln3/y/b/a/q0/h;

    move-object/from16 v32, v2

    iget v2, v14, Ln3/y/b/a/q0/s/d$c;->c:I

    move-object/from16 v33, v4

    .line 87
    iget-object v4, v14, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v34

    const/16 v35, 0x14

    const/16 v36, 0x13

    const/16 v37, 0x12

    const/16 v38, 0x11

    move/from16 v39, v2

    const/16 v2, 0x10

    sparse-switch v34, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_c

    :cond_20
    const/16 v35, 0x1d

    goto/16 :goto_d

    :sswitch_1
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_c

    :cond_21
    const/16 v35, 0x1c

    goto/16 :goto_d

    :sswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_c

    :cond_22
    const/16 v35, 0x1b

    goto/16 :goto_d

    :sswitch_3
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_c

    :cond_23
    const/16 v35, 0x1a

    goto/16 :goto_d

    :sswitch_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_c

    :cond_24
    const/16 v35, 0x19

    goto/16 :goto_d

    :sswitch_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_c

    :cond_25
    const/16 v35, 0x18

    goto/16 :goto_d

    :sswitch_6
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_c

    :cond_26
    const/16 v35, 0x17

    goto/16 :goto_d

    :sswitch_7
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_c

    :cond_27
    const/16 v35, 0x16

    goto/16 :goto_d

    :sswitch_8
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_c

    :cond_28
    const/16 v35, 0x15

    goto/16 :goto_d

    :sswitch_9
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_c

    :sswitch_a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_c

    :cond_29
    move/from16 v35, v36

    goto/16 :goto_d

    :sswitch_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_c

    :cond_2a
    move/from16 v35, v37

    goto/16 :goto_d

    :sswitch_c
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_c

    :cond_2b
    move/from16 v35, v38

    goto/16 :goto_d

    :sswitch_d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_c

    :cond_2c
    move/from16 v35, v2

    goto/16 :goto_d

    :sswitch_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_c

    :cond_2d
    const/16 v35, 0xf

    goto/16 :goto_d

    :sswitch_f
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_c

    :cond_2e
    const/16 v35, 0xe

    goto/16 :goto_d

    :sswitch_10
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_c

    :cond_2f
    const/16 v35, 0xd

    goto/16 :goto_d

    :sswitch_11
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_c

    :cond_30
    const/16 v35, 0xc

    goto/16 :goto_d

    :sswitch_12
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_c

    :cond_31
    const/16 v35, 0xb

    goto/16 :goto_d

    :sswitch_13
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_c

    :cond_32
    const/16 v35, 0xa

    goto/16 :goto_d

    :sswitch_14
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_c

    :cond_33
    const/16 v35, 0x9

    goto/16 :goto_d

    :sswitch_15
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_c

    :cond_34
    const/16 v35, 0x8

    goto/16 :goto_d

    :sswitch_16
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_c

    :cond_35
    const/16 v35, 0x7

    goto/16 :goto_d

    :sswitch_17
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_c

    :cond_36
    const/16 v35, 0x6

    goto :goto_d

    :sswitch_18
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_c

    :cond_37
    const/16 v35, 0x5

    goto :goto_d

    :sswitch_19
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_c

    :cond_38
    const/16 v35, 0x4

    goto :goto_d

    :sswitch_1a
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_c

    :cond_39
    const/16 v35, 0x3

    goto :goto_d

    :sswitch_1b
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_c

    :cond_3a
    const/16 v35, 0x2

    goto :goto_d

    :sswitch_1c
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_c

    :cond_3b
    const/16 v35, 0x1

    goto :goto_d

    :sswitch_1d
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_c

    :cond_3c
    const/16 v35, 0x0

    goto :goto_d

    :goto_c
    const/16 v35, -0x1

    :cond_3d
    :goto_d
    const-string v0, "text/x-ssa"

    const-string v1, "application/x-subrip"

    const/16 v3, 0x1000

    const-string v4, "video/x-unknown"

    const-string v5, "audio/x-unknown"

    const-string v6, "application/pgs"

    const-string v7, "application/vobsub"

    const-string v8, "application/dvbsubs"

    packed-switch v35, :pswitch_data_0

    .line 88
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v3, 0x1680

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    iget-object v4, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    .line 91
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v9, v14, Ln3/y/b/a/q0/s/d$c;->P:J

    invoke-virtual {v5, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v9, v14, Ln3/y/b/a/q0/s/d$c;->Q:J

    invoke-virtual {v4, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 94
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "audio/opus"

    goto/16 :goto_17

    .line 95
    :pswitch_1
    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "audio/flac"

    goto/16 :goto_1e

    :pswitch_2
    const-string v2, "audio/eac3"

    goto :goto_f

    :pswitch_3
    const-string v2, "video/mpeg2"

    goto :goto_f

    :pswitch_4
    move-object v4, v1

    goto :goto_e

    .line 96
    :pswitch_5
    new-instance v2, Ln3/y/b/a/x0/m;

    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-direct {v2, v3}, Ln3/y/b/a/x0/m;-><init>([B)V

    invoke-static {v2}, Ln3/y/b/a/y0/c;->a(Ln3/y/b/a/x0/m;)Ln3/y/b/a/y0/c;

    move-result-object v2

    .line 97
    iget-object v3, v2, Ln3/y/b/a/y0/c;->a:Ljava/util/List;

    .line 98
    iget v2, v2, Ln3/y/b/a/y0/c;->b:I

    iput v2, v14, Ln3/y/b/a/q0/s/d$c;->W:I

    const-string v2, "video/hevc"

    goto :goto_10

    :pswitch_6
    move-object v4, v0

    goto :goto_e

    .line 99
    :pswitch_7
    iget v2, v14, Ln3/y/b/a/q0/s/d$c;->N:I

    invoke-static {v2}, Ln3/y/b/a/x0/x;->m(I)I

    move-result v2

    if-nez v2, :cond_4c

    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-object v4, v5

    :goto_e
    :pswitch_8
    move-object v5, v4

    goto/16 :goto_1c

    :pswitch_9
    move-object v2, v6

    goto :goto_f

    :pswitch_a
    const-string v2, "video/x-vnd.on2.vp9"

    goto :goto_f

    :pswitch_b
    const-string v2, "video/x-vnd.on2.vp8"

    goto :goto_f

    :pswitch_c
    const-string v2, "video/av01"

    goto :goto_f

    :pswitch_d
    const-string v2, "audio/vnd.dts"

    goto :goto_f

    :pswitch_e
    const-string v2, "audio/ac3"

    goto :goto_f

    .line 101
    :pswitch_f
    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "audio/mp4a-latm"

    goto/16 :goto_1e

    :pswitch_10
    const-string v2, "audio/vnd.dts.hd"

    :goto_f
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 102
    :pswitch_11
    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v7

    goto/16 :goto_1e

    .line 103
    :pswitch_12
    new-instance v2, Ln3/y/b/a/x0/m;

    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-direct {v2, v3}, Ln3/y/b/a/x0/m;-><init>([B)V

    invoke-static {v2}, Ln3/y/b/a/y0/a;->b(Ln3/y/b/a/x0/m;)Ln3/y/b/a/y0/a;

    move-result-object v2

    .line 104
    iget-object v3, v2, Ln3/y/b/a/y0/a;->a:Ljava/util/List;

    .line 105
    iget v2, v2, Ln3/y/b/a/y0/a;->b:I

    iput v2, v14, Ln3/y/b/a/q0/s/d$c;->W:I

    const-string v2, "video/avc"

    :goto_10
    move-object/from16 v40, v3

    move-object v3, v2

    move-object/from16 v2, v40

    goto/16 :goto_1e

    :pswitch_13
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 106
    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    aput-byte v5, v2, v4

    const/4 v4, 0x1

    aget-byte v5, v3, v4

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    aget-byte v5, v3, v4

    aput-byte v5, v2, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v2, v4

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v8

    goto/16 :goto_1f

    .line 107
    :pswitch_14
    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    .line 108
    array-length v5, v3

    if-gt v2, v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_11

    :cond_3e
    const/4 v5, 0x0

    .line 109
    :goto_11
    :try_start_0
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 110
    aget-byte v5, v3, v2

    int-to-long v9, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    aget-byte v5, v3, v38

    move-object v13, v3

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v5, 0x8

    shl-long/2addr v2, v5

    or-long/2addr v2, v9

    aget-byte v5, v13, v37

    int-to-long v9, v5

    and-long/2addr v9, v11

    const/16 v5, 0x10

    shl-long/2addr v9, v5

    or-long/2addr v2, v9

    aget-byte v5, v13, v36

    int-to-long v9, v5

    and-long/2addr v9, v11

    const/16 v5, 0x18

    shl-long/2addr v9, v5

    or-long/2addr v2, v9

    const-wide/32 v9, 0x58564944

    cmp-long v5, v2, v9

    if-nez v5, :cond_3f

    .line 111
    new-instance v2, Landroid/util/Pair;

    const-string v3, "video/divx"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_3f
    const-wide/32 v9, 0x33363248

    cmp-long v5, v2, v9

    if-nez v5, :cond_40

    .line 112
    new-instance v2, Landroid/util/Pair;

    const-string v3, "video/3gpp"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_40
    const-wide/32 v9, 0x31435657

    cmp-long v2, v2, v9

    if-nez v2, :cond_43

    const/16 v2, 0x28

    .line 113
    :goto_12
    array-length v3, v13

    add-int/lit8 v3, v3, -0x4

    if-ge v2, v3, :cond_42

    .line 114
    aget-byte v3, v13, v2

    if-nez v3, :cond_41

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v13, v3

    if-nez v3, :cond_41

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v13, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_41

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v13, v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_41

    .line 115
    array-length v3, v13

    invoke-static {v13, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 116
    new-instance v3, Landroid/util/Pair;

    const-string v4, "video/wvc1"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_13

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 117
    :cond_42
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_43
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :goto_13
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 120
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    goto/16 :goto_20

    .line 121
    :catch_0
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Error parsing FourCC private data"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    const-string v2, "audio/mpeg"

    goto :goto_14

    :pswitch_16
    const-string v2, "audio/mpeg-L2"

    :goto_14
    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_17

    :pswitch_17
    const/16 v3, 0x2000

    .line 122
    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    const-string v4, "Error parsing vorbis codec private"

    const/4 v5, 0x0

    .line 123
    :try_start_1
    aget-byte v5, v2, v5

    const/4 v9, 0x2

    if-ne v5, v9, :cond_49

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 124
    :goto_15
    aget-byte v10, v2, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_44

    add-int/lit16 v9, v9, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_44
    add-int/lit8 v10, v5, 0x1

    .line 125
    aget-byte v5, v2, v5

    add-int/2addr v9, v5

    const/4 v5, 0x0

    .line 126
    :goto_16
    aget-byte v11, v2, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_45

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_45
    add-int/lit8 v11, v10, 0x1

    .line 127
    aget-byte v10, v2, v10

    add-int/2addr v5, v10

    .line 128
    aget-byte v10, v2, v11

    const/4 v12, 0x1

    if-ne v10, v12, :cond_48

    .line 129
    new-array v10, v9, [B

    const/4 v12, 0x0

    .line 130
    invoke-static {v2, v11, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v9

    .line 131
    aget-byte v9, v2, v11

    const/4 v12, 0x3

    if-ne v9, v12, :cond_47

    add-int/2addr v11, v5

    .line 132
    aget-byte v5, v2, v11

    const/4 v9, 0x5

    if-ne v5, v9, :cond_46

    .line 133
    array-length v5, v2

    sub-int/2addr v5, v11

    new-array v5, v5, [B

    .line 134
    array-length v9, v2

    sub-int/2addr v9, v11

    const/4 v12, 0x0

    invoke-static {v2, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "audio/vorbis"

    :goto_17
    const/4 v5, -0x1

    :goto_18
    move/from16 v19, v3

    move/from16 v22, v5

    goto/16 :goto_22

    .line 138
    :cond_46
    :try_start_2
    new-instance v0, Ln3/y/b/a/c0;

    invoke-direct {v0, v4}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_47
    new-instance v0, Ln3/y/b/a/c0;

    invoke-direct {v0, v4}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_48
    new-instance v0, Ln3/y/b/a/c0;

    invoke-direct {v0, v4}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_49
    new-instance v0, Ln3/y/b/a/c0;

    invoke-direct {v0, v4}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :catch_1
    new-instance v0, Ln3/y/b/a/c0;

    invoke-direct {v0, v4}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_18
    new-instance v2, Ln3/y/b/a/q0/s/d$d;

    invoke-direct {v2}, Ln3/y/b/a/q0/s/d$d;-><init>()V

    iput-object v2, v14, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    const-string v5, "audio/true-hd"

    goto :goto_1c

    .line 144
    :pswitch_19
    new-instance v2, Ln3/y/b/a/x0/m;

    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-direct {v2, v3}, Ln3/y/b/a/x0/m;-><init>([B)V

    .line 145
    :try_start_3
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->i()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a

    goto :goto_19

    :cond_4a
    const v4, 0xfffe

    if-ne v3, v4, :cond_4b

    const/16 v3, 0x18

    .line 146
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 147
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v3

    .line 148
    sget-object v9, Ln3/y/b/a/q0/s/d;->g0:Ljava/util/UUID;

    .line 149
    invoke-virtual {v9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    cmp-long v3, v3, v10

    if-nez v3, :cond_4b

    .line 150
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v9
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    cmp-long v2, v2, v9

    if-nez v2, :cond_4b

    :goto_19
    const/4 v2, 0x1

    goto :goto_1a

    :cond_4b
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_4d

    .line 151
    iget v2, v14, Ln3/y/b/a/q0/s/d$c;->N:I

    invoke-static {v2}, Ln3/y/b/a/x0/x;->m(I)I

    move-result v2

    if-nez v2, :cond_4c

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    goto :goto_1c

    :cond_4c
    const-string v3, "audio/raw"

    const/4 v4, 0x0

    move v5, v2

    move-object v2, v4

    :goto_1b
    move-object v4, v3

    goto :goto_21

    :cond_4d
    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_1c
    const/4 v2, 0x0

    move-object v3, v5

    goto :goto_20

    .line 154
    :catch_2
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_1a
    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    if-nez v2, :cond_4e

    const/4 v2, 0x0

    goto :goto_1d

    :cond_4e
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1d
    const-string v3, "video/mp4v-es"

    :goto_1e
    move-object/from16 v40, v3

    move-object v3, v2

    move-object/from16 v2, v40

    :goto_1f
    move-object/from16 v40, v3

    move-object v3, v2

    move-object/from16 v2, v40

    :goto_20
    const/4 v4, -0x1

    move v5, v4

    goto :goto_1b

    :goto_21
    const/4 v3, -0x1

    goto/16 :goto_18

    .line 156
    :goto_22
    iget-boolean v3, v14, Ln3/y/b/a/q0/s/d$c;->T:Z

    or-int/lit8 v3, v3, 0x0

    .line 157
    iget-boolean v5, v14, Ln3/y/b/a/q0/s/d$c;->S:Z

    if-eqz v5, :cond_4f

    const/4 v5, 0x2

    goto :goto_23

    :cond_4f
    const/4 v5, 0x0

    :goto_23
    or-int/2addr v3, v5

    .line 158
    invoke-static {v4}, Ln3/y/b/a/x0/j;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 159
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->M:I

    iget v1, v14, Ln3/y/b/a/q0/s/d$c;->O:I

    iget-object v5, v14, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v6, v14, Ln3/y/b/a/q0/s/d$c;->U:Ljava/lang/String;

    move-object/from16 v16, v4

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v3

    move-object/from16 v26, v6

    invoke-static/range {v15 .. v26}, Landroidx/media2/exoplayer/external/Format;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 160
    :cond_50
    invoke-static {v4}, Ln3/y/b/a/x0/j;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 161
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->p:I

    if-nez v0, :cond_53

    .line 162
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_51

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->l:I

    :cond_51
    iput v0, v14, Ln3/y/b/a/q0/s/d$c;->n:I

    .line 163
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->o:I

    if-ne v0, v1, :cond_52

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->m:I

    :cond_52
    iput v0, v14, Ln3/y/b/a/q0/s/d$c;->o:I

    goto :goto_24

    :cond_53
    const/4 v1, -0x1

    :goto_24
    const/high16 v0, -0x40800000    # -1.0f

    .line 164
    iget v3, v14, Ln3/y/b/a/q0/s/d$c;->n:I

    if-eq v3, v1, :cond_54

    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->o:I

    if-eq v5, v1, :cond_54

    .line 165
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->m:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v14, Ln3/y/b/a/q0/s/d$c;->l:I

    mul-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_54
    move/from16 v25, v0

    .line 166
    iget-boolean v0, v14, Ln3/y/b/a/q0/s/d$c;->w:Z

    if-eqz v0, :cond_57

    .line 167
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->C:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->D:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->E:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->F:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->G:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->H:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->I:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->J:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->K:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->L:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_55

    goto :goto_25

    :cond_55
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 168
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    .line 169
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->C:F

    const v6, 0x47435000    # 50000.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->D:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->E:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->F:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->G:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->H:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->I:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->J:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->K:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->L:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->A:I

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->B:I

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_26

    :cond_56
    :goto_25
    const/4 v0, 0x0

    .line 182
    :goto_26
    new-instance v3, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->x:I

    iget v6, v14, Ln3/y/b/a/q0/s/d$c;->z:I

    iget v7, v14, Ln3/y/b/a/q0/s/d$c;->y:I

    invoke-direct {v3, v5, v6, v7, v0}, Landroidx/media2/exoplayer/external/video/ColorInfo;-><init>(III[B)V

    move-object/from16 v28, v3

    goto :goto_27

    :cond_57
    const/4 v0, 0x0

    move-object/from16 v28, v0

    .line 183
    :goto_27
    iget-object v0, v14, Ln3/y/b/a/q0/s/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v1, 0x0

    goto :goto_28

    .line 184
    :cond_58
    iget-object v0, v14, Ln3/y/b/a/q0/s/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-090"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/16 v1, 0x5a

    goto :goto_28

    .line 185
    :cond_59
    iget-object v0, v14, Ln3/y/b/a/q0/s/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-180"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0xb4

    goto :goto_28

    .line 186
    :cond_5a
    iget-object v0, v14, Ln3/y/b/a/q0/s/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-270"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v1, 0x10e

    .line 187
    :cond_5b
    :goto_28
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->q:I

    if-nez v0, :cond_60

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->r:F

    const/4 v3, 0x0

    .line 188
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_60

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->s:F

    .line 189
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_60

    .line 190
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->t:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    :goto_29
    move/from16 v24, v0

    goto :goto_2b

    .line 191
    :cond_5c
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->s:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5d

    const/16 v0, 0x5a

    goto :goto_29

    .line 192
    :cond_5d
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->s:F

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->s:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 193
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_2a

    .line 194
    :cond_5e
    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->s:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_60

    const/16 v0, 0x10e

    goto :goto_29

    :cond_5f
    :goto_2a
    const/16 v0, 0xb4

    goto :goto_29

    :cond_60
    move/from16 v24, v1

    .line 195
    :goto_2b
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v0, v14, Ln3/y/b/a/q0/s/d$c;->l:I

    iget v1, v14, Ln3/y/b/a/q0/s/d$c;->m:I

    const/high16 v22, -0x40800000    # -1.0f

    iget-object v3, v14, Ln3/y/b/a/q0/s/d$c;->u:[B

    iget v5, v14, Ln3/y/b/a/q0/s/d$c;->v:I

    iget-object v6, v14, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v16, v4

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move/from16 v27, v5

    move-object/from16 v29, v6

    .line 196
    invoke-static/range {v15 .. v29}, Landroidx/media2/exoplayer/external/Format;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const/4 v1, 0x2

    goto/16 :goto_2e

    .line 197
    :cond_61
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 198
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Ln3/y/b/a/q0/s/d$c;->U:Ljava/lang/String;

    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, v4, v3, v1, v2}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    goto/16 :goto_2d

    .line 199
    :cond_62
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    sget-object v1, Ln3/y/b/a/q0/s/d;->d0:[B

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, v14, Ln3/y/b/a/q0/s/d$c;->j:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v1, v14, Ln3/y/b/a/q0/s/d$c;->U:Ljava/lang/String;

    const/16 v21, -0x1

    iget-object v2, v14, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const-wide v23, 0x7fffffffffffffffL

    move-object/from16 v16, v4

    move/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v0

    invoke-static/range {v15 .. v25}, Landroidx/media2/exoplayer/external/Format;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    goto :goto_2d

    .line 205
    :cond_63
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 206
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 207
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_2c

    .line 208
    :cond_64
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_65
    :goto_2c
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v0, v14, Ln3/y/b/a/q0/s/d$c;->U:Ljava/lang/String;

    iget-object v1, v14, Ln3/y/b/a/q0/s/d$c;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v16, v4

    move/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .line 210
    invoke-static/range {v15 .. v22}, Landroidx/media2/exoplayer/external/Format;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    :goto_2d
    const/4 v1, 0x3

    .line 211
    :goto_2e
    iget v2, v14, Ln3/y/b/a/q0/s/d$c;->c:I

    move-object/from16 v3, v33

    invoke-interface {v3, v2, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v1

    iput-object v1, v14, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    .line 212
    invoke-interface {v1, v0}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    move-object/from16 v0, v32

    .line 213
    iget-object v1, v0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    iget-object v2, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iget v3, v2, Ln3/y/b/a/q0/s/d$c;->c:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2f

    :cond_66
    move-object/from16 v0, v16

    :goto_2f
    const/4 v1, 0x0

    .line 214
    iput-object v1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    goto :goto_30

    :cond_67
    move-object v0, v1

    .line 215
    iget v1, v0, Ln3/y/b/a/q0/s/d;->F:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_68

    goto :goto_30

    .line 216
    :cond_68
    iget-boolean v1, v0, Ln3/y/b/a/q0/s/d;->Z:Z

    if-nez v1, :cond_69

    .line 217
    iget v1, v0, Ln3/y/b/a/q0/s/d;->N:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Ln3/y/b/a/q0/s/d;->N:I

    .line 218
    :cond_69
    iget-object v1, v0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    iget v2, v0, Ln3/y/b/a/q0/s/d;->L:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/s/d$c;

    iget-wide v2, v0, Ln3/y/b/a/q0/s/d;->G:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/b/a/q0/s/d;->b(Ln3/y/b/a/q0/s/d$c;J)V

    const/4 v1, 0x0

    .line 219
    iput v1, v0, Ln3/y/b/a/q0/s/d;->F:I

    :cond_6a
    :goto_30
    const/4 v0, 0x1

    return v0

    :cond_6b
    move-object/from16 v0, p0

    .line 220
    iget v2, v0, Ln3/y/b/a/q0/s/a;->e:I

    if-nez v2, :cond_6e

    .line 221
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->c:Ln3/y/b/a/q0/s/f;

    const/4 v7, 0x4

    invoke-virtual {v2, v1, v6, v5, v7}, Ln3/y/b/a/q0/s/f;->c(Ln3/y/b/a/q0/d;ZZI)J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v2, v6, v8

    if-nez v2, :cond_6c

    .line 222
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/s/a;->a(Ln3/y/b/a/q0/d;)J

    move-result-wide v6

    :cond_6c
    cmp-long v2, v6, v3

    if-nez v2, :cond_6d

    return v5

    :cond_6d
    long-to-int v2, v6

    .line 223
    iput v2, v0, Ln3/y/b/a/q0/s/a;->f:I

    const/4 v6, 0x1

    .line 224
    iput v6, v0, Ln3/y/b/a/q0/s/a;->e:I

    .line 225
    :cond_6e
    iget v2, v0, Ln3/y/b/a/q0/s/a;->e:I

    if-ne v2, v6, :cond_6f

    .line 226
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->c:Ln3/y/b/a/q0/s/f;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v5, v6, v3}, Ln3/y/b/a/q0/s/f;->c(Ln3/y/b/a/q0/d;ZZI)J

    move-result-wide v2

    iput-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const/4 v2, 0x2

    .line 227
    iput v2, v0, Ln3/y/b/a/q0/s/a;->e:I

    .line 228
    :cond_6f
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v3, v0, Ln3/y/b/a/q0/s/a;->f:I

    check-cast v2, Ln3/y/b/a/q0/s/d$b;

    .line 229
    iget-object v2, v2, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    .line 230
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sparse-switch v3, :sswitch_data_1

    const/4 v2, 0x0

    goto :goto_31

    :sswitch_1e
    const/4 v2, 0x5

    goto :goto_31

    :sswitch_1f
    const/4 v2, 0x4

    goto :goto_31

    :sswitch_20
    const/4 v2, 0x1

    goto :goto_31

    :sswitch_21
    const/4 v2, 0x3

    goto :goto_31

    :sswitch_22
    const/4 v2, 0x2

    :goto_31
    if-eqz v2, :cond_7c

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_79

    const/4 v3, 0x3

    if-eq v2, v3, :cond_75

    const/4 v3, 0x4

    if-eq v2, v3, :cond_74

    const/4 v3, 0x5

    if-ne v2, v3, :cond_73

    .line 231
    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_71

    const-wide/16 v4, 0x8

    cmp-long v4, v2, v4

    if-nez v4, :cond_70

    goto :goto_32

    .line 232
    :cond_70
    new-instance v1, Ln3/y/b/a/c0;

    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const/16 v4, 0x28

    const-string v5, "Invalid float size: "

    invoke-static {v4, v5, v2, v3}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_71
    :goto_32
    iget-object v4, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v5, v0, Ln3/y/b/a/q0/s/a;->f:I

    long-to-int v2, v2

    .line 234
    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/q0/s/a;->c(Ln3/y/b/a/q0/d;I)J

    move-result-wide v6

    const/4 v1, 0x4

    if-ne v2, v1, :cond_72

    long-to-int v1, v6

    .line 235
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v1, v1

    goto :goto_33

    .line 236
    :cond_72
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 237
    :goto_33
    check-cast v4, Ln3/y/b/a/q0/s/d$b;

    invoke-virtual {v4, v5, v1, v2}, Ln3/y/b/a/q0/s/d$b;->b(ID)V

    const/4 v1, 0x0

    .line 238
    iput v1, v0, Ln3/y/b/a/q0/s/a;->e:I

    goto/16 :goto_36

    .line 239
    :cond_73
    new-instance v1, Ln3/y/b/a/c0;

    const/16 v3, 0x20

    const-string v4, "Invalid element type "

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_74
    iget-object v2, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v3, v0, Ln3/y/b/a/q0/s/a;->f:I

    iget-wide v4, v0, Ln3/y/b/a/q0/s/a;->g:J

    long-to-int v4, v4

    check-cast v2, Ln3/y/b/a/q0/s/d$b;

    invoke-virtual {v2, v3, v4, v1}, Ln3/y/b/a/q0/s/d$b;->a(IILn3/y/b/a/q0/d;)V

    const/4 v1, 0x0

    .line 241
    iput v1, v0, Ln3/y/b/a/q0/s/a;->e:I

    goto/16 :goto_36

    .line 242
    :cond_75
    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_78

    .line 243
    iget-object v4, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v5, v0, Ln3/y/b/a/q0/s/a;->f:I

    long-to-int v2, v2

    if-nez v2, :cond_76

    const-string v1, ""

    const/4 v2, 0x0

    goto :goto_35

    .line 244
    :cond_76
    new-array v3, v2, [B

    const/4 v6, 0x0

    .line 245
    invoke-virtual {v1, v3, v6, v2, v6}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    :goto_34
    if-lez v2, :cond_77

    add-int/lit8 v1, v2, -0x1

    .line 246
    aget-byte v7, v3, v1

    if-nez v7, :cond_77

    move v2, v1

    goto :goto_34

    .line 247
    :cond_77
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v6, v2}, Ljava/lang/String;-><init>([BII)V

    move v2, v6

    .line 248
    :goto_35
    check-cast v4, Ln3/y/b/a/q0/s/d$b;

    invoke-virtual {v4, v5, v1}, Ln3/y/b/a/q0/s/d$b;->e(ILjava/lang/String;)V

    .line 249
    iput v2, v0, Ln3/y/b/a/q0/s/a;->e:I

    goto :goto_36

    .line 250
    :cond_78
    new-instance v1, Ln3/y/b/a/c0;

    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const/16 v4, 0x29

    const-string v5, "String element size: "

    invoke-static {v4, v5, v2, v3}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_79
    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const-wide/16 v4, 0x8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7a

    .line 252
    iget-object v4, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v5, v0, Ln3/y/b/a/q0/s/a;->f:I

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/q0/s/a;->c(Ln3/y/b/a/q0/d;I)J

    move-result-wide v1

    check-cast v4, Ln3/y/b/a/q0/s/d$b;

    invoke-virtual {v4, v5, v1, v2}, Ln3/y/b/a/q0/s/d$b;->c(IJ)V

    const/4 v1, 0x0

    .line 253
    iput v1, v0, Ln3/y/b/a/q0/s/a;->e:I

    goto :goto_36

    .line 254
    :cond_7a
    new-instance v1, Ln3/y/b/a/c0;

    iget-wide v2, v0, Ln3/y/b/a/q0/s/a;->g:J

    const/16 v4, 0x2a

    const-string v5, "Invalid integer size: "

    invoke-static {v4, v5, v2, v3}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_7b
    iget-wide v5, v1, Ln3/y/b/a/q0/d;->d:J

    .line 256
    iget-wide v1, v0, Ln3/y/b/a/q0/s/a;->g:J

    add-long/2addr v1, v5

    .line 257
    iget-object v3, v0, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    new-instance v4, Ln3/y/b/a/q0/s/a$b;

    iget v7, v0, Ln3/y/b/a/q0/s/a;->f:I

    const/4 v8, 0x0

    invoke-direct {v4, v7, v1, v2, v8}, Ln3/y/b/a/q0/s/a$b;-><init>(IJLn3/y/b/a/q0/s/a$a;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 258
    iget-object v1, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    iget v4, v0, Ln3/y/b/a/q0/s/a;->f:I

    iget-wide v7, v0, Ln3/y/b/a/q0/s/a;->g:J

    move-object v3, v1

    check-cast v3, Ln3/y/b/a/q0/s/d$b;

    invoke-virtual/range {v3 .. v8}, Ln3/y/b/a/q0/s/d$b;->d(IJJ)V

    const/4 v1, 0x0

    .line 259
    iput v1, v0, Ln3/y/b/a/q0/s/a;->e:I

    :goto_36
    const/4 v1, 0x1

    return v1

    :cond_7c
    const/4 v2, 0x0

    .line 260
    iget-wide v3, v0, Ln3/y/b/a/q0/s/a;->g:J

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    .line 261
    iput v2, v0, Ln3/y/b/a/q0/s/a;->e:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d
        -0x7ce7f3b0 -> :sswitch_1c
        -0x76567dc0 -> :sswitch_1b
        -0x6a615338 -> :sswitch_1a
        -0x672350af -> :sswitch_19
        -0x585f4fce -> :sswitch_18
        -0x585f4fcd -> :sswitch_17
        -0x51dc40b2 -> :sswitch_16
        -0x37a9c464 -> :sswitch_15
        -0x2016c535 -> :sswitch_14
        -0x2016c4e5 -> :sswitch_13
        -0x19552dbd -> :sswitch_12
        -0x1538b2ba -> :sswitch_11
        0x3c02325 -> :sswitch_10
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_e
        0x4e81333 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_22
        0x86 -> :sswitch_21
        0x88 -> :sswitch_22
        0x9b -> :sswitch_22
        0x9f -> :sswitch_22
        0xa0 -> :sswitch_20
        0xa1 -> :sswitch_1f
        0xa3 -> :sswitch_1f
        0xa5 -> :sswitch_1f
        0xa6 -> :sswitch_20
        0xae -> :sswitch_20
        0xb0 -> :sswitch_22
        0xb3 -> :sswitch_22
        0xb5 -> :sswitch_1e
        0xb7 -> :sswitch_20
        0xba -> :sswitch_22
        0xbb -> :sswitch_20
        0xd7 -> :sswitch_22
        0xe0 -> :sswitch_20
        0xe1 -> :sswitch_20
        0xe7 -> :sswitch_22
        0xee -> :sswitch_22
        0xf1 -> :sswitch_22
        0xfb -> :sswitch_22
        0x4254 -> :sswitch_22
        0x4255 -> :sswitch_1f
        0x4282 -> :sswitch_21
        0x4285 -> :sswitch_22
        0x42f7 -> :sswitch_22
        0x4489 -> :sswitch_1e
        0x47e1 -> :sswitch_22
        0x47e2 -> :sswitch_1f
        0x47e7 -> :sswitch_20
        0x47e8 -> :sswitch_22
        0x4dbb -> :sswitch_20
        0x5031 -> :sswitch_22
        0x5032 -> :sswitch_22
        0x5034 -> :sswitch_20
        0x5035 -> :sswitch_20
        0x536e -> :sswitch_21
        0x53ab -> :sswitch_1f
        0x53ac -> :sswitch_22
        0x53b8 -> :sswitch_22
        0x54b0 -> :sswitch_22
        0x54b2 -> :sswitch_22
        0x54ba -> :sswitch_22
        0x55aa -> :sswitch_22
        0x55b0 -> :sswitch_20
        0x55b9 -> :sswitch_22
        0x55ba -> :sswitch_22
        0x55bb -> :sswitch_22
        0x55bc -> :sswitch_22
        0x55bd -> :sswitch_22
        0x55d0 -> :sswitch_20
        0x55d1 -> :sswitch_1e
        0x55d2 -> :sswitch_1e
        0x55d3 -> :sswitch_1e
        0x55d4 -> :sswitch_1e
        0x55d5 -> :sswitch_1e
        0x55d6 -> :sswitch_1e
        0x55d7 -> :sswitch_1e
        0x55d8 -> :sswitch_1e
        0x55d9 -> :sswitch_1e
        0x55da -> :sswitch_1e
        0x55ee -> :sswitch_22
        0x56aa -> :sswitch_22
        0x56bb -> :sswitch_22
        0x6240 -> :sswitch_20
        0x6264 -> :sswitch_22
        0x63a2 -> :sswitch_1f
        0x6d80 -> :sswitch_20
        0x75a1 -> :sswitch_20
        0x7670 -> :sswitch_20
        0x7671 -> :sswitch_22
        0x7672 -> :sswitch_1f
        0x7673 -> :sswitch_1e
        0x7674 -> :sswitch_1e
        0x7675 -> :sswitch_1e
        0x22b59c -> :sswitch_21
        0x23e383 -> :sswitch_22
        0x2ad7b1 -> :sswitch_22
        0x114d9b74 -> :sswitch_20
        0x1549a966 -> :sswitch_20
        0x1654ae6b -> :sswitch_20
        0x18538067 -> :sswitch_20
        0x1a45dfa3 -> :sswitch_20
        0x1c53bb6b -> :sswitch_20
        0x1f43b675 -> :sswitch_20
    .end sparse-switch
.end method

.method public final c(Ln3/y/b/a/q0/d;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/a;->a:[B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2, v1}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 3
    iget-object p1, p0, Ln3/y/b/a/q0/s/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
