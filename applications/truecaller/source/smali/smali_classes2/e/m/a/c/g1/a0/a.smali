.class public final Le/m/a/c/g1/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/a0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/a0/a$b;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/g1/a0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/g1/a0/f;

.field public d:Le/m/a/c/g1/a0/b;

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
    iput-object v0, p0, Le/m/a/c/g1/a0/a;->a:[B

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Le/m/a/c/g1/a0/f;

    invoke-direct {v0}, Le/m/a/c/g1/a0/f;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/a0/a;->c:Le/m/a/c/g1/a0/f;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/g1/e;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Le/m/a/c/g1/e;->f:I

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/a/c/g1/a0/a;->a:[B

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p1, v1, v0, v2, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 4
    iget-object v1, p0, Le/m/a/c/g1/a0/a;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Le/m/a/c/g1/a0/f;->b(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-gt v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Le/m/a/c/g1/a0/a;->a:[B

    invoke-static {v2, v1, v0}, Le/m/a/c/g1/a0/f;->a([BIZ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 6
    iget-object v3, p0, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    check-cast v3, Le/m/a/c/g1/a0/d$b;

    .line 7
    iget-object v3, v3, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

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
    invoke-virtual {p1, v1}, Le/m/a/c/g1/e;->i(I)V

    int-to-long v0, v2

    return-wide v0

    .line 10
    :cond_2
    invoke-virtual {p1, v4}, Le/m/a/c/g1/e;->i(I)V

    goto :goto_0
.end method

.method public b(Le/m/a/c/g1/e;)Z
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
    iget-object v2, v0, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v2, v0, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_6e

    .line 4
    iget-wide v5, v1, Le/m/a/c/g1/e;->d:J

    .line 5
    iget-object v2, v0, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/a0/a$b;

    .line 6
    iget-wide v7, v2, Le/m/a/c/g1/a0/a$b;->b:J

    cmp-long v2, v5, v7

    if-ltz v2, :cond_6e

    .line 7
    iget-object v1, v0, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget-object v2, v0, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/a0/a$b;

    .line 8
    iget v2, v2, Le/m/a/c/g1/a0/a$b;->a:I

    .line 9
    check-cast v1, Le/m/a/c/g1/a0/d$b;

    .line 10
    iget-object v1, v1, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa0

    if-eq v2, v5, :cond_68

    const/16 v5, 0xae

    const/4 v6, -0x1

    if-eq v2, v5, :cond_10

    const/16 v5, 0x4dbb

    const v7, 0x1c53bb6b

    if-eq v2, v5, :cond_e

    const/16 v5, 0x6240

    if-eq v2, v5, :cond_c

    const/16 v5, 0x6d80

    if-eq v2, v5, :cond_a

    const v5, 0x1549a966

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v5, :cond_8

    const v5, 0x1654ae6b

    if-eq v2, v5, :cond_6

    if-eq v2, v7, :cond_0

    goto/16 :goto_2f

    .line 12
    :cond_0
    iget-boolean v2, v1, Le/m/a/c/g1/a0/d;->v:Z

    if-nez v2, :cond_6d

    .line 13
    iget-object v2, v1, Le/m/a/c/g1/a0/d;->a0:Le/m/a/c/g1/i;

    .line 14
    iget-wide v5, v1, Le/m/a/c/g1/a0/d;->q:J

    cmp-long v3, v5, v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_5

    iget-wide v6, v1, Le/m/a/c/g1/a0/d;->t:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    iget-object v3, v1, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    if-eqz v3, :cond_5

    .line 15
    iget v3, v3, Le/m/a/c/q1/o;->a:I

    if-eqz v3, :cond_5

    .line 16
    iget-object v6, v1, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    if-eqz v6, :cond_5

    .line 17
    iget v6, v6, Le/m/a/c/q1/o;->a:I

    if-eq v6, v3, :cond_1

    goto :goto_3

    .line 18
    :cond_1
    new-array v6, v3, [I

    .line 19
    new-array v7, v3, [J

    .line 20
    new-array v8, v3, [J

    .line 21
    new-array v9, v3, [J

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_2

    .line 22
    iget-object v11, v1, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    invoke-virtual {v11, v10}, Le/m/a/c/q1/o;->b(I)J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 23
    iget-wide v11, v1, Le/m/a/c/g1/a0/d;->q:J

    iget-object v13, v1, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    invoke-virtual {v13, v10}, Le/m/a/c/q1/o;->b(I)J

    move-result-wide v13

    add-long/2addr v13, v11

    aput-wide v13, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_2
    add-int/lit8 v11, v3, -0x1

    if-ge v10, v11, :cond_3

    add-int/lit8 v11, v10, 0x1

    .line 24
    aget-wide v12, v7, v11

    aget-wide v14, v7, v10

    sub-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v6, v10

    .line 25
    aget-wide v12, v9, v11

    aget-wide v14, v9, v10

    sub-long/2addr v12, v14

    aput-wide v12, v8, v10

    move v10, v11

    goto :goto_2

    .line 26
    :cond_3
    iget-wide v12, v1, Le/m/a/c/g1/a0/d;->q:J

    iget-wide v14, v1, Le/m/a/c/g1/a0/d;->p:J

    add-long/2addr v12, v14

    aget-wide v14, v7, v11

    sub-long/2addr v12, v14

    long-to-int v3, v12

    aput v3, v6, v11

    .line 27
    iget-wide v12, v1, Le/m/a/c/g1/a0/d;->t:J

    aget-wide v14, v9, v11

    sub-long/2addr v12, v14

    aput-wide v12, v8, v11

    .line 28
    aget-wide v12, v8, v11

    cmp-long v3, v12, v4

    if-gtz v3, :cond_4

    .line 29
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 30
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 31
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 32
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    :cond_4
    const/4 v3, 0x0

    .line 33
    iput-object v3, v1, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    .line 34
    iput-object v3, v1, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    .line 35
    new-instance v3, Le/m/a/c/g1/c;

    invoke-direct {v3, v6, v7, v8, v9}, Le/m/a/c/g1/c;-><init>([I[J[J[J)V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x0

    .line 36
    iput-object v3, v1, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    .line 37
    iput-object v3, v1, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    .line 38
    new-instance v3, Le/m/a/c/g1/q$b;

    iget-wide v6, v1, Le/m/a/c/g1/a0/d;->t:J

    .line 39
    invoke-direct {v3, v6, v7, v4, v5}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 40
    :goto_4
    invoke-interface {v2, v3}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, v1, Le/m/a/c/g1/a0/d;->v:Z

    goto/16 :goto_2f

    .line 42
    :cond_6
    iget-object v2, v1, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    iget-object v1, v1, Le/m/a/c/g1/a0/d;->a0:Le/m/a/c/g1/i;

    invoke-interface {v1}, Le/m/a/c/g1/i;->g()V

    goto/16 :goto_2f

    .line 44
    :cond_7
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_8
    iget-wide v2, v1, Le/m/a/c/g1/a0/d;->r:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    const-wide/32 v2, 0xf4240

    .line 46
    iput-wide v2, v1, Le/m/a/c/g1/a0/d;->r:J

    .line 47
    :cond_9
    iget-wide v2, v1, Le/m/a/c/g1/a0/d;->s:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_6d

    .line 48
    invoke-virtual {v1, v2, v3}, Le/m/a/c/g1/a0/d;->j(J)J

    move-result-wide v2

    iput-wide v2, v1, Le/m/a/c/g1/a0/d;->t:J

    goto/16 :goto_2f

    .line 49
    :cond_a
    iget-object v1, v1, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iget-boolean v2, v1, Le/m/a/c/g1/a0/d$c;->g:Z

    if-eqz v2, :cond_6d

    iget-object v1, v1, Le/m/a/c/g1/a0/d$c;->h:[B

    if-nez v1, :cond_b

    goto/16 :goto_2f

    .line 50
    :cond_b
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_c
    iget-object v1, v1, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iget-boolean v2, v1, Le/m/a/c/g1/a0/d$c;->g:Z

    if-eqz v2, :cond_6d

    .line 52
    iget-object v2, v1, Le/m/a/c/g1/a0/d$c;->i:Le/m/a/c/g1/s$a;

    if-eqz v2, :cond_d

    .line 53
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v7, Le/m/a/c/v;->a:Ljava/util/UUID;

    iget-object v2, v2, Le/m/a/c/g1/s$a;->b:[B

    const-string v8, "video/webm"

    invoke-direct {v6, v7, v8, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v2, 0x0

    aput-object v6, v5, v2

    const/4 v2, 0x0

    .line 54
    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 55
    iput-object v3, v1, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_2f

    .line 56
    :cond_d
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_e
    iget v2, v1, Le/m/a/c/g1/a0/d;->w:I

    if-eq v2, v6, :cond_f

    iget-wide v5, v1, Le/m/a/c/g1/a0/d;->x:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_f

    if-ne v2, v7, :cond_6d

    .line 58
    iput-wide v5, v1, Le/m/a/c/g1/a0/d;->z:J

    goto/16 :goto_2f

    .line 59
    :cond_f
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_10
    iget-object v2, v1, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iget-object v2, v2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 61
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

    if-nez v4, :cond_20

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 64
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 65
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 66
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 67
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 68
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 69
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 70
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 71
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 72
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v4, v27

    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1f

    move-object/from16 v27, v12

    move-object/from16 v12, v26

    .line 76
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1e

    move-object/from16 v26, v14

    move-object/from16 v14, v22

    .line 77
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    move-object/from16 v22, v6

    move-object/from16 v6, v31

    .line 78
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1b

    move-object/from16 v31, v4

    move-object/from16 v4, v28

    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v28, v4

    move-object/from16 v4, v21

    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1c

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    .line 81
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v19, v9

    move-object/from16 v9, v23

    .line 82
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_14

    move-object/from16 v23, v13

    move-object/from16 v13, v30

    .line 83
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_15

    move-object/from16 v30, v11

    move-object/from16 v11, v29

    .line 84
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v29, v11

    move-object/from16 v11, v18

    .line 85
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    .line 87
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    move-object/from16 v17, v5

    move-object/from16 v5, v24

    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    move-object/from16 v24, v5

    move-object/from16 v5, v20

    .line 89
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v20, v14

    move-object/from16 v14, v25

    .line 90
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_a

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_12
    move-object/from16 v24, v5

    goto :goto_6

    :cond_13
    move-object/from16 v29, v11

    goto :goto_5

    :cond_14
    move-object/from16 v23, v13

    move-object/from16 v13, v30

    :cond_15
    move-object/from16 v30, v11

    :goto_5
    move-object/from16 v11, v18

    :cond_16
    move-object/from16 v18, v9

    move-object/from16 v9, v17

    :cond_17
    move-object/from16 v17, v5

    :goto_6
    move-object/from16 v5, v20

    :cond_18
    move-object/from16 v20, v14

    move-object/from16 v14, v25

    goto/16 :goto_a

    :cond_19
    move-object/from16 v28, v4

    goto :goto_7

    :cond_1a
    move-object/from16 v22, v6

    move-object/from16 v6, v31

    :cond_1b
    move-object/from16 v31, v4

    :goto_7
    move-object/from16 v4, v21

    :cond_1c
    move-object/from16 v21, v12

    move-object/from16 v12, v19

    :cond_1d
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

    :cond_1e
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

    :cond_1f
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

    :cond_20
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
    if-eqz v2, :cond_67

    move-object/from16 v25, v14

    move-object/from16 v2, v16

    .line 91
    iget-object v14, v2, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    move-object/from16 v16, v4

    iget-object v4, v2, Le/m/a/c/g1/a0/d;->a0:Le/m/a/c/g1/i;

    move-object/from16 v32, v2

    iget v2, v14, Le/m/a/c/g1/a0/d$c;->c:I

    move-object/from16 v33, v4

    .line 92
    iget-object v4, v14, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

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

    if-nez v0, :cond_21

    goto/16 :goto_c

    :cond_21
    const/16 v35, 0x1d

    goto/16 :goto_d

    :sswitch_1
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_c

    :cond_22
    const/16 v35, 0x1c

    goto/16 :goto_d

    :sswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_c

    :cond_23
    const/16 v35, 0x1b

    goto/16 :goto_d

    :sswitch_3
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_c

    :cond_24
    const/16 v35, 0x1a

    goto/16 :goto_d

    :sswitch_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_c

    :cond_25
    const/16 v35, 0x19

    goto/16 :goto_d

    :sswitch_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_c

    :cond_26
    const/16 v35, 0x18

    goto/16 :goto_d

    :sswitch_6
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_c

    :cond_27
    const/16 v35, 0x17

    goto/16 :goto_d

    :sswitch_7
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_c

    :cond_28
    const/16 v35, 0x16

    goto/16 :goto_d

    :sswitch_8
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_c

    :cond_29
    const/16 v35, 0x15

    goto/16 :goto_d

    :sswitch_9
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_c

    :sswitch_a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_c

    :cond_2a
    move/from16 v35, v36

    goto/16 :goto_d

    :sswitch_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_c

    :cond_2b
    move/from16 v35, v37

    goto/16 :goto_d

    :sswitch_c
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_c

    :cond_2c
    move/from16 v35, v38

    goto/16 :goto_d

    :sswitch_d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_c

    :cond_2d
    move/from16 v35, v2

    goto/16 :goto_d

    :sswitch_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_c

    :cond_2e
    const/16 v35, 0xf

    goto/16 :goto_d

    :sswitch_f
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_c

    :cond_2f
    const/16 v35, 0xe

    goto/16 :goto_d

    :sswitch_10
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_c

    :cond_30
    const/16 v35, 0xd

    goto/16 :goto_d

    :sswitch_11
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_c

    :cond_31
    const/16 v35, 0xc

    goto/16 :goto_d

    :sswitch_12
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_c

    :cond_32
    const/16 v35, 0xb

    goto/16 :goto_d

    :sswitch_13
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_c

    :cond_33
    const/16 v35, 0xa

    goto/16 :goto_d

    :sswitch_14
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_c

    :cond_34
    const/16 v35, 0x9

    goto/16 :goto_d

    :sswitch_15
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_c

    :cond_35
    const/16 v35, 0x8

    goto/16 :goto_d

    :sswitch_16
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_c

    :cond_36
    const/16 v35, 0x7

    goto/16 :goto_d

    :sswitch_17
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_c

    :cond_37
    const/16 v35, 0x6

    goto :goto_d

    :sswitch_18
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_c

    :cond_38
    const/16 v35, 0x5

    goto :goto_d

    :sswitch_19
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_c

    :cond_39
    const/16 v35, 0x4

    goto :goto_d

    :sswitch_1a
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_c

    :cond_3a
    const/16 v35, 0x3

    goto :goto_d

    :sswitch_1b
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_c

    :cond_3b
    const/16 v35, 0x2

    goto :goto_d

    :sswitch_1c
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_c

    :cond_3c
    const/16 v35, 0x1

    goto :goto_d

    :sswitch_1d
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_c

    :cond_3d
    const/16 v35, 0x0

    goto :goto_d

    :goto_c
    const/16 v35, -0x1

    :cond_3e
    :goto_d
    const-string v0, "text/x-ssa"

    const-string v1, "application/x-subrip"

    const/16 v3, 0x1000

    const-string v4, "video/x-unknown"

    const-string v5, "application/vobsub"

    const-string v6, "application/dvbsubs"

    packed-switch v35, :pswitch_data_0

    .line 93
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v3, 0x1680

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    iget-object v4, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    .line 96
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-wide v9, v14, Le/m/a/c/g1/a0/d$c;->P:J

    invoke-virtual {v7, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 97
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v7, v14, Le/m/a/c/g1/a0/d$c;->Q:J

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 99
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "audio/opus"

    goto/16 :goto_14

    .line 100
    :pswitch_1
    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "audio/flac"

    goto/16 :goto_1c

    :pswitch_2
    const-string v4, "audio/eac3"

    goto/16 :goto_16

    :pswitch_3
    const-string v4, "video/mpeg2"

    goto/16 :goto_16

    :pswitch_4
    move-object v4, v1

    goto/16 :goto_16

    .line 101
    :pswitch_5
    new-instance v2, Le/m/a/c/q1/t;

    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-direct {v2, v3}, Le/m/a/c/q1/t;-><init>([B)V

    invoke-static {v2}, Le/m/a/c/r1/j;->a(Le/m/a/c/q1/t;)Le/m/a/c/r1/j;

    move-result-object v2

    .line 102
    iget-object v3, v2, Le/m/a/c/r1/j;->a:Ljava/util/List;

    .line 103
    iget v2, v2, Le/m/a/c/r1/j;->b:I

    iput v2, v14, Le/m/a/c/g1/a0/d$c;->W:I

    const-string v2, "video/hevc"

    goto/16 :goto_1d

    :pswitch_6
    move-object v4, v0

    goto/16 :goto_16

    .line 104
    :pswitch_7
    iget v2, v14, Le/m/a/c/g1/a0/d$c;->N:I

    invoke-static {v2}, Le/m/a/c/q1/d0;->l(I)I

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_19

    :pswitch_8
    const-string v4, "application/pgs"

    goto/16 :goto_16

    :pswitch_9
    const-string v4, "video/x-vnd.on2.vp9"

    goto/16 :goto_16

    :pswitch_a
    const-string v4, "video/x-vnd.on2.vp8"

    goto/16 :goto_16

    :pswitch_b
    const-string v4, "video/av01"

    goto/16 :goto_16

    :pswitch_c
    const-string v4, "audio/vnd.dts"

    goto/16 :goto_16

    :pswitch_d
    const-string v4, "audio/ac3"

    goto/16 :goto_16

    .line 105
    :pswitch_e
    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "audio/mp4a-latm"

    goto/16 :goto_1c

    :pswitch_f
    const-string v4, "audio/vnd.dts.hd"

    goto/16 :goto_16

    .line 106
    :pswitch_10
    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v5

    goto/16 :goto_1c

    .line 107
    :pswitch_11
    new-instance v2, Le/m/a/c/q1/t;

    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-direct {v2, v3}, Le/m/a/c/q1/t;-><init>([B)V

    invoke-static {v2}, Le/m/a/c/r1/h;->b(Le/m/a/c/q1/t;)Le/m/a/c/r1/h;

    move-result-object v2

    .line 108
    iget-object v3, v2, Le/m/a/c/r1/h;->a:Ljava/util/List;

    .line 109
    iget v2, v2, Le/m/a/c/r1/h;->b:I

    iput v2, v14, Le/m/a/c/g1/a0/d$c;->W:I

    const-string v2, "video/avc"

    goto/16 :goto_1d

    :pswitch_12
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 110
    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    const/4 v4, 0x0

    aget-byte v7, v3, v4

    aput-byte v7, v2, v4

    const/4 v4, 0x1

    aget-byte v7, v3, v4

    aput-byte v7, v2, v4

    const/4 v4, 0x2

    aget-byte v7, v3, v4

    aput-byte v7, v2, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v2, v4

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v6

    goto/16 :goto_1c

    .line 111
    :pswitch_13
    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    .line 112
    array-length v7, v3

    if-gt v2, v7, :cond_3f

    const/4 v7, 0x1

    goto :goto_e

    :cond_3f
    const/4 v7, 0x0

    .line 113
    :goto_e
    :try_start_0
    invoke-static {v7}, Ln3/g0/y;->r(Z)V

    .line 114
    aget-byte v7, v3, v2

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    aget-byte v11, v3, v38

    int-to-long v11, v11

    and-long/2addr v11, v9

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    or-long/2addr v7, v11

    aget-byte v11, v3, v37

    int-to-long v11, v11

    and-long/2addr v11, v9

    shl-long/2addr v11, v2

    or-long/2addr v7, v11

    aget-byte v2, v3, v36

    int-to-long v11, v2

    and-long/2addr v9, v11

    const/16 v2, 0x18

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    const-wide/32 v9, 0x58564944

    cmp-long v2, v7, v9

    if-nez v2, :cond_40

    .line 115
    new-instance v2, Landroid/util/Pair;

    const-string v3, "video/divx"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_40
    const-wide/32 v9, 0x33363248

    cmp-long v2, v7, v9

    if-nez v2, :cond_41

    .line 116
    new-instance v2, Landroid/util/Pair;

    const-string v3, "video/3gpp"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_41
    const-wide/32 v9, 0x31435657

    cmp-long v2, v7, v9

    if-nez v2, :cond_44

    const/16 v2, 0x28

    .line 117
    :goto_f
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    if-ge v2, v4, :cond_43

    .line 118
    aget-byte v4, v3, v2

    if-nez v4, :cond_42

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_42

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v3, v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_42

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v3, v4

    const/16 v7, 0xf

    if-ne v4, v7, :cond_42

    .line 119
    array-length v4, v3

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 120
    new-instance v3, Landroid/util/Pair;

    const-string v4, "video/wvc1"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_10

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 121
    :cond_43
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_44
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :goto_10
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 124
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    goto/16 :goto_1c

    .line 125
    :catch_0
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Error parsing FourCC private data"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    const-string v2, "audio/mpeg"

    goto :goto_11

    :pswitch_15
    const-string v2, "audio/mpeg-L2"

    :goto_11
    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_14

    :pswitch_16
    const/16 v3, 0x2000

    .line 126
    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    const-string v4, "Error parsing vorbis codec private"

    const/4 v7, 0x0

    .line 127
    :try_start_1
    aget-byte v7, v2, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4a

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 128
    :goto_12
    aget-byte v9, v2, v8

    const/4 v10, -0x1

    if-ne v9, v10, :cond_45

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_45
    add-int/lit8 v9, v8, 0x1

    .line 129
    aget-byte v8, v2, v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 130
    :goto_13
    aget-byte v10, v2, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_46

    add-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_46
    add-int/lit8 v10, v9, 0x1

    .line 131
    aget-byte v9, v2, v9

    add-int/2addr v8, v9

    .line 132
    aget-byte v9, v2, v10

    const/4 v11, 0x1

    if-ne v9, v11, :cond_49

    .line 133
    new-array v9, v7, [B

    const/4 v11, 0x0

    .line 134
    invoke-static {v2, v10, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v7

    .line 135
    aget-byte v7, v2, v10

    const/4 v11, 0x3

    if-ne v7, v11, :cond_48

    add-int/2addr v10, v8

    .line 136
    aget-byte v7, v2, v10

    const/4 v8, 0x5

    if-ne v7, v8, :cond_47

    .line 137
    array-length v7, v2

    sub-int/2addr v7, v10

    new-array v7, v7, [B

    .line 138
    array-length v8, v2

    sub-int/2addr v8, v10

    const/4 v11, 0x0

    invoke-static {v2, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "audio/vorbis"

    :goto_14
    const/4 v7, -0x1

    :goto_15
    move/from16 v19, v3

    move/from16 v22, v7

    goto/16 :goto_1f

    .line 142
    :cond_47
    :try_start_2
    new-instance v0, Le/m/a/c/m0;

    invoke-direct {v0, v4}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_48
    new-instance v0, Le/m/a/c/m0;

    invoke-direct {v0, v4}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_49
    new-instance v0, Le/m/a/c/m0;

    invoke-direct {v0, v4}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_4a
    new-instance v0, Le/m/a/c/m0;

    invoke-direct {v0, v4}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :catch_1
    new-instance v0, Le/m/a/c/m0;

    invoke-direct {v0, v4}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_17
    new-instance v2, Le/m/a/c/g1/a0/d$d;

    invoke-direct {v2}, Le/m/a/c/g1/a0/d$d;-><init>()V

    iput-object v2, v14, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    const-string v4, "audio/true-hd"

    :goto_16
    :pswitch_18
    move-object v2, v4

    goto :goto_1a

    .line 148
    :pswitch_19
    new-instance v2, Le/m/a/c/q1/t;

    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-direct {v2, v3}, Le/m/a/c/q1/t;-><init>([B)V

    .line 149
    :try_start_3
    invoke-virtual {v2}, Le/m/a/c/q1/t;->j()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    goto :goto_17

    :cond_4b
    const v4, 0xfffe

    if-ne v3, v4, :cond_4c

    const/16 v3, 0x18

    .line 150
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 151
    invoke-virtual {v2}, Le/m/a/c/q1/t;->k()J

    move-result-wide v3

    .line 152
    sget-object v7, Le/m/a/c/g1/a0/d;->e0:Ljava/util/UUID;

    .line 153
    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-nez v3, :cond_4c

    .line 154
    invoke-virtual {v2}, Le/m/a/c/q1/t;->k()J

    move-result-wide v2

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    cmp-long v2, v2, v7

    if-nez v2, :cond_4c

    :goto_17
    const/4 v2, 0x1

    goto :goto_18

    :cond_4c
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_4e

    .line 155
    iget v2, v14, Le/m/a/c/g1/a0/d$c;->N:I

    invoke-static {v2}, Le/m/a/c/q1/d0;->l(I)I

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_19

    :cond_4d
    const-string v3, "audio/raw"

    const/4 v4, 0x0

    move v7, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_1e

    :cond_4e
    :goto_19
    const-string v2, "audio/x-unknown"

    :goto_1a
    const/4 v3, 0x0

    goto :goto_1d

    .line 156
    :catch_2
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_1a
    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    if-nez v2, :cond_4f

    const/4 v2, 0x0

    goto :goto_1b

    .line 158
    :cond_4f
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1b
    const-string v3, "video/mp4v-es"

    :goto_1c
    move-object/from16 v40, v3

    move-object v3, v2

    move-object/from16 v2, v40

    :goto_1d
    const/4 v4, -0x1

    move v7, v4

    move-object v4, v2

    move-object v2, v3

    :goto_1e
    const/4 v3, -0x1

    goto/16 :goto_15

    .line 159
    :goto_1f
    iget-boolean v3, v14, Le/m/a/c/g1/a0/d$c;->T:Z

    or-int/lit8 v3, v3, 0x0

    .line 160
    iget-boolean v7, v14, Le/m/a/c/g1/a0/d$c;->S:Z

    if-eqz v7, :cond_50

    const/4 v7, 0x2

    goto :goto_20

    :cond_50
    const/4 v7, 0x0

    :goto_20
    or-int/2addr v3, v7

    .line 161
    invoke-static {v4}, Le/m/a/c/q1/q;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 162
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->M:I

    iget v1, v14, Le/m/a/c/g1/a0/d$c;->O:I

    iget-object v5, v14, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v6, v14, Le/m/a/c/g1/a0/d$c;->U:Ljava/lang/String;

    move-object/from16 v16, v4

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v3

    move-object/from16 v26, v6

    invoke-static/range {v15 .. v26}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const/4 v1, 0x1

    goto/16 :goto_2b

    .line 163
    :cond_51
    invoke-static {v4}, Le/m/a/c/q1/q;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 164
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->p:I

    if-nez v0, :cond_54

    .line 165
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_52

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->l:I

    :cond_52
    iput v0, v14, Le/m/a/c/g1/a0/d$c;->n:I

    .line 166
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->o:I

    if-ne v0, v1, :cond_53

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->m:I

    :cond_53
    iput v0, v14, Le/m/a/c/g1/a0/d$c;->o:I

    goto :goto_21

    :cond_54
    const/4 v1, -0x1

    :goto_21
    const/high16 v0, -0x40800000    # -1.0f

    .line 167
    iget v3, v14, Le/m/a/c/g1/a0/d$c;->n:I

    if-eq v3, v1, :cond_55

    iget v5, v14, Le/m/a/c/g1/a0/d$c;->o:I

    if-eq v5, v1, :cond_55

    .line 168
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->m:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v14, Le/m/a/c/g1/a0/d$c;->l:I

    mul-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_55
    move/from16 v25, v0

    .line 169
    iget-boolean v0, v14, Le/m/a/c/g1/a0/d$c;->w:Z

    if-eqz v0, :cond_58

    .line 170
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->C:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->D:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->E:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->F:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->G:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->H:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->I:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->J:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->K:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_57

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->L:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_56

    goto/16 :goto_22

    :cond_56
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 171
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    .line 172
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->C:F

    const v6, 0x47435000    # 50000.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->D:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->E:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->F:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->G:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->H:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->I:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->J:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->K:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 182
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->L:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 183
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->A:I

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 184
    iget v5, v14, Le/m/a/c/g1/a0/d$c;->B:I

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_23

    :cond_57
    :goto_22
    const/4 v0, 0x0

    .line 185
    :goto_23
    new-instance v3, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v5, v14, Le/m/a/c/g1/a0/d$c;->x:I

    iget v6, v14, Le/m/a/c/g1/a0/d$c;->z:I

    iget v7, v14, Le/m/a/c/g1/a0/d$c;->y:I

    invoke-direct {v3, v5, v6, v7, v0}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    move-object/from16 v28, v3

    goto :goto_24

    :cond_58
    const/4 v0, 0x0

    move-object/from16 v28, v0

    .line 186
    :goto_24
    iget-object v0, v14, Le/m/a/c/g1/a0/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v1, 0x0

    goto :goto_25

    .line 187
    :cond_59
    iget-object v0, v14, Le/m/a/c/g1/a0/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-090"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0x5a

    goto :goto_25

    .line 188
    :cond_5a
    iget-object v0, v14, Le/m/a/c/g1/a0/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-180"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v1, 0xb4

    goto :goto_25

    .line 189
    :cond_5b
    iget-object v0, v14, Le/m/a/c/g1/a0/d$c;->a:Ljava/lang/String;

    const-string v3, "htc_video_rotA-270"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/16 v1, 0x10e

    .line 190
    :cond_5c
    :goto_25
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->q:I

    if-nez v0, :cond_61

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->r:F

    const/4 v3, 0x0

    .line 191
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_61

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->s:F

    .line 192
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_61

    .line 193
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->t:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    goto :goto_27

    .line 194
    :cond_5d
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->s:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5e

    const/16 v0, 0x5a

    goto :goto_27

    .line 195
    :cond_5e
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->s:F

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_60

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->s:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 196
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_26

    .line 197
    :cond_5f
    iget v0, v14, Le/m/a/c/g1/a0/d$c;->s:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_61

    const/16 v0, 0x10e

    goto :goto_27

    :cond_60
    :goto_26
    const/16 v0, 0xb4

    :goto_27
    move/from16 v24, v0

    goto :goto_28

    :cond_61
    move/from16 v24, v1

    .line 198
    :goto_28
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v0, v14, Le/m/a/c/g1/a0/d$c;->l:I

    iget v1, v14, Le/m/a/c/g1/a0/d$c;->m:I

    const/high16 v22, -0x40800000    # -1.0f

    iget-object v3, v14, Le/m/a/c/g1/a0/d$c;->u:[B

    iget v5, v14, Le/m/a/c/g1/a0/d$c;->v:I

    iget-object v6, v14, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v16, v4

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move/from16 v27, v5

    move-object/from16 v29, v6

    .line 199
    invoke-static/range {v15 .. v29}, Lcom/google/android/exoplayer2/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const/4 v1, 0x2

    goto/16 :goto_2b

    .line 200
    :cond_62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 201
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Le/m/a/c/g1/a0/d$c;->U:Ljava/lang/String;

    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, v4, v3, v1, v2}, Lcom/google/android/exoplayer2/Format;->l(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto/16 :goto_2a

    .line 202
    :cond_63
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    sget-object v1, Le/m/a/c/g1/a0/d;->c0:[B

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, v14, Le/m/a/c/g1/a0/d$c;->j:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v1, v14, Le/m/a/c/g1/a0/d$c;->U:Ljava/lang/String;

    const/16 v21, -0x1

    iget-object v2, v14, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const-wide v23, 0x7fffffffffffffffL

    move-object/from16 v16, v4

    move/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v0

    invoke-static/range {v15 .. v25}, Lcom/google/android/exoplayer2/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_2a

    .line 208
    :cond_64
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "application/pgs"

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 210
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_29

    .line 211
    :cond_65
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_66
    :goto_29
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v0, v14, Le/m/a/c/g1/a0/d$c;->U:Ljava/lang/String;

    iget-object v1, v14, Le/m/a/c/g1/a0/d$c;->k:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v16, v4

    move/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .line 213
    invoke-static/range {v15 .. v22}, Lcom/google/android/exoplayer2/Format;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_2a
    const/4 v1, 0x3

    .line 214
    :goto_2b
    iget v2, v14, Le/m/a/c/g1/a0/d$c;->c:I

    move-object/from16 v3, v33

    invoke-interface {v3, v2, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v1

    iput-object v1, v14, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    .line 215
    invoke-interface {v1, v0}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    move-object/from16 v0, v32

    .line 216
    iget-object v1, v0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    iget-object v2, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iget v3, v2, Le/m/a/c/g1/a0/d$c;->c:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2c

    :cond_67
    move-object/from16 v0, v16

    :goto_2c
    const/4 v1, 0x0

    .line 217
    iput-object v1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    goto :goto_2f

    :cond_68
    move-object v0, v1

    .line 218
    iget v1, v0, Le/m/a/c/g1/a0/d;->G:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_69

    goto :goto_2f

    :cond_69
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 219
    :goto_2d
    iget v3, v0, Le/m/a/c/g1/a0/d;->K:I

    if-ge v1, v3, :cond_6a

    .line 220
    iget-object v3, v0, Le/m/a/c/g1/a0/d;->L:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 221
    :cond_6a
    iget-object v1, v0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    iget v3, v0, Le/m/a/c/g1/a0/d;->M:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/g1/a0/d$c;

    const/4 v3, 0x0

    .line 222
    :goto_2e
    iget v4, v0, Le/m/a/c/g1/a0/d;->K:I

    if-ge v3, v4, :cond_6c

    .line 223
    iget-wide v4, v0, Le/m/a/c/g1/a0/d;->H:J

    iget v6, v1, Le/m/a/c/g1/a0/d$c;->e:I

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v7, v4, v6

    .line 224
    iget v4, v0, Le/m/a/c/g1/a0/d;->O:I

    if-nez v3, :cond_6b

    .line 225
    iget-boolean v5, v0, Le/m/a/c/g1/a0/d;->Q:Z

    if-nez v5, :cond_6b

    or-int/lit8 v4, v4, 0x1

    :cond_6b
    move v9, v4

    .line 226
    iget-object v4, v0, Le/m/a/c/g1/a0/d;->L:[I

    aget v10, v4, v3

    sub-int/2addr v2, v10

    move-object v5, v0

    move-object v6, v1

    move v11, v2

    .line 227
    invoke-virtual/range {v5 .. v11}, Le/m/a/c/g1/a0/d;->b(Le/m/a/c/g1/a0/d$c;JIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_6c
    const/4 v1, 0x0

    .line 228
    iput v1, v0, Le/m/a/c/g1/a0/d;->G:I

    :cond_6d
    :goto_2f
    const/4 v0, 0x1

    return v0

    :cond_6e
    const/4 v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v5, p0

    .line 229
    iget v6, v5, Le/m/a/c/g1/a0/a;->e:I

    if-nez v6, :cond_71

    .line 230
    iget-object v6, v5, Le/m/a/c/g1/a0/a;->c:Le/m/a/c/g1/a0/f;

    const/4 v7, 0x4

    invoke-virtual {v6, v1, v0, v2, v7}, Le/m/a/c/g1/a0/f;->c(Le/m/a/c/g1/e;ZZI)J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v0, v6, v8

    if-nez v0, :cond_6f

    .line 231
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/a0/a;->a(Le/m/a/c/g1/e;)J

    move-result-wide v6

    :cond_6f
    cmp-long v0, v6, v3

    if-nez v0, :cond_70

    return v2

    :cond_70
    long-to-int v0, v6

    .line 232
    iput v0, v5, Le/m/a/c/g1/a0/a;->f:I

    const/4 v0, 0x1

    .line 233
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    .line 234
    :cond_71
    iget v3, v5, Le/m/a/c/g1/a0/a;->e:I

    if-ne v3, v0, :cond_72

    .line 235
    iget-object v3, v5, Le/m/a/c/g1/a0/a;->c:Le/m/a/c/g1/a0/f;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v2, v0, v4}, Le/m/a/c/g1/a0/f;->c(Le/m/a/c/g1/e;ZZI)J

    move-result-wide v2

    iput-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    const/4 v2, 0x2

    .line 236
    iput v2, v5, Le/m/a/c/g1/a0/a;->e:I

    goto :goto_30

    :cond_72
    const/4 v2, 0x2

    .line 237
    :goto_30
    iget-object v3, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v4, v5, Le/m/a/c/g1/a0/a;->f:I

    check-cast v3, Le/m/a/c/g1/a0/d$b;

    invoke-virtual {v3, v4}, Le/m/a/c/g1/a0/d$b;->c(I)I

    move-result v3

    if-eqz v3, :cond_7c

    if-eq v3, v0, :cond_7b

    if-eq v3, v2, :cond_79

    const/4 v0, 0x3

    if-eq v3, v0, :cond_77

    const/4 v0, 0x4

    if-eq v3, v0, :cond_76

    const/4 v0, 0x5

    if-ne v3, v0, :cond_75

    .line 238
    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    const-wide/16 v6, 0x4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_74

    const-wide/16 v6, 0x8

    cmp-long v0, v2, v6

    if-nez v0, :cond_73

    goto :goto_31

    .line 239
    :cond_73
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Invalid float size: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_74
    :goto_31
    iget-object v0, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v4, v5, Le/m/a/c/g1/a0/a;->f:I

    long-to-int v2, v2

    invoke-virtual {v5, v1, v2}, Le/m/a/c/g1/a0/a;->c(Le/m/a/c/g1/e;I)D

    move-result-wide v1

    check-cast v0, Le/m/a/c/g1/a0/d$b;

    invoke-virtual {v0, v4, v1, v2}, Le/m/a/c/g1/a0/d$b;->b(ID)V

    const/4 v0, 0x0

    .line 241
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    goto/16 :goto_32

    .line 242
    :cond_75
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Invalid element type "

    invoke-static {v1, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_76
    iget-object v0, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v2, v5, Le/m/a/c/g1/a0/a;->f:I

    iget-wide v3, v5, Le/m/a/c/g1/a0/a;->g:J

    long-to-int v3, v3

    check-cast v0, Le/m/a/c/g1/a0/d$b;

    invoke-virtual {v0, v2, v3, v1}, Le/m/a/c/g1/a0/d$b;->a(IILe/m/a/c/g1/e;)V

    const/4 v0, 0x0

    .line 244
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    goto/16 :goto_32

    .line 245
    :cond_77
    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-gtz v0, :cond_78

    .line 246
    iget-object v0, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v4, v5, Le/m/a/c/g1/a0/a;->f:I

    long-to-int v2, v2

    invoke-virtual {v5, v1, v2}, Le/m/a/c/g1/a0/a;->e(Le/m/a/c/g1/e;I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Le/m/a/c/g1/a0/d$b;

    invoke-virtual {v0, v4, v1}, Le/m/a/c/g1/a0/d$b;->f(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 247
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    goto :goto_32

    .line 248
    :cond_78
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "String element size: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_79
    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    const-wide/16 v6, 0x8

    cmp-long v0, v2, v6

    if-gtz v0, :cond_7a

    .line 250
    iget-object v0, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v4, v5, Le/m/a/c/g1/a0/a;->f:I

    long-to-int v2, v2

    invoke-virtual {v5, v1, v2}, Le/m/a/c/g1/a0/a;->d(Le/m/a/c/g1/e;I)J

    move-result-wide v1

    check-cast v0, Le/m/a/c/g1/a0/d$b;

    invoke-virtual {v0, v4, v1, v2}, Le/m/a/c/g1/a0/d$b;->d(IJ)V

    const/4 v0, 0x0

    .line 251
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    goto :goto_32

    .line 252
    :cond_7a
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Invalid integer size: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_7b
    iget-wide v8, v1, Le/m/a/c/g1/e;->d:J

    .line 254
    iget-wide v0, v5, Le/m/a/c/g1/a0/a;->g:J

    add-long/2addr v0, v8

    .line 255
    iget-object v2, v5, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    new-instance v3, Le/m/a/c/g1/a0/a$b;

    iget v4, v5, Le/m/a/c/g1/a0/a;->f:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v1, v6}, Le/m/a/c/g1/a0/a$b;-><init>(IJLe/m/a/c/g1/a0/a$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 256
    iget-object v0, v5, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    iget v7, v5, Le/m/a/c/g1/a0/a;->f:I

    iget-wide v10, v5, Le/m/a/c/g1/a0/a;->g:J

    move-object v6, v0

    check-cast v6, Le/m/a/c/g1/a0/d$b;

    invoke-virtual/range {v6 .. v11}, Le/m/a/c/g1/a0/d$b;->e(IJJ)V

    const/4 v0, 0x0

    .line 257
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    :goto_32
    const/4 v0, 0x1

    return v0

    :cond_7c
    const/4 v0, 0x0

    .line 258
    iget-wide v2, v5, Le/m/a/c/g1/a0/a;->g:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 259
    iput v0, v5, Le/m/a/c/g1/a0/a;->e:I

    move-object v0, v5

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
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1a
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
        :pswitch_18
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Le/m/a/c/g1/e;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/c/g1/a0/a;->d(Le/m/a/c/g1/e;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public final d(Le/m/a/c/g1/e;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/a;->a:[B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2, v1}, Le/m/a/c/g1/e;->h([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 3
    iget-object p1, p0, Le/m/a/c/g1/a0/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final e(Le/m/a/c/g1/e;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2, v1}, Le/m/a/c/g1/e;->h([BIIZ)Z

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    .line 3
    aget-byte p1, v0, p1

    if-nez p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method
