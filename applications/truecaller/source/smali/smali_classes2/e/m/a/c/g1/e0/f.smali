.class public final Le/m/a/c/g1/e0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/j;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Le/m/a/c/q1/s;

.field public final c:Le/m/a/c/q1/t;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Le/m/a/c/g1/s;

.field public g:Le/m/a/c/g1/s;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Le/m/a/c/g1/s;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/e0/f;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/s;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    .line 3
    new-instance v0, Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/g1/e0/f;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    .line 4
    invoke-virtual {p0}, Le/m/a/c/g1/e0/f;->h()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Le/m/a/c/g1/e0/f;->m:I

    .line 6
    iput v0, p0, Le/m/a/c/g1/e0/f;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Le/m/a/c/g1/e0/f;->q:J

    .line 8
    iput-boolean p1, p0, Le/m/a/c/g1/e0/f;->a:Z

    .line 9
    iput-object p2, p0, Le/m/a/c/g1/e0/f;->d:Ljava/lang/String;

    return-void
.end method

.method public static g(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/g1/e0/f;->l:Z

    .line 2
    invoke-virtual {p0}, Le/m/a/c/g1/e0/f;->h()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/e0/f;->s:J

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-lez v2, :cond_26

    .line 2
    iget v2, v0, Le/m/a/c/g1/e0/f;->h:I

    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_c

    if-eq v2, v10, :cond_8

    const/16 v4, 0xa

    if-eq v2, v9, :cond_7

    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    iget v3, v0, Le/m/a/c/g1/e0/f;->r:I

    iget v4, v0, Le/m/a/c/g1/e0/f;->i:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Le/m/a/c/g1/e0/f;->t:Le/m/a/c/g1/s;

    invoke-interface {v3, v1, v2}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 5
    iget v3, v0, Le/m/a/c/g1/e0/f;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/e0/f;->i:I

    .line 6
    iget v8, v0, Le/m/a/c/g1/e0/f;->r:I

    if-ne v3, v8, :cond_0

    .line 7
    iget-object v4, v0, Le/m/a/c/g1/e0/f;->t:Le/m/a/c/g1/s;

    iget-wide v5, v0, Le/m/a/c/g1/e0/f;->s:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 8
    iget-wide v2, v0, Le/m/a/c/g1/e0/f;->s:J

    iget-wide v4, v0, Le/m/a/c/g1/e0/f;->u:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Le/m/a/c/g1/e0/f;->s:J

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/e0/f;->h()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_2
    iget-boolean v2, v0, Le/m/a/c/g1/e0/f;->k:Z

    const/4 v11, 0x5

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v11

    .line 12
    :goto_1
    iget-object v12, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    iget-object v12, v12, Le/m/a/c/q1/s;->a:[B

    invoke-virtual {v0, v1, v12, v2}, Le/m/a/c/g1/e0/f;->f(Le/m/a/c/q1/t;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->j(I)V

    .line 14
    iget-boolean v2, v0, Le/m/a/c/g1/e0/f;->p:Z

    if-nez v2, :cond_5

    .line 15
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v9}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    add-int/2addr v2, v10

    if-eq v2, v9, :cond_4

    move v2, v9

    .line 16
    :cond_4
    iget-object v4, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v4, v11}, Le/m/a/c/q1/s;->l(I)V

    .line 17
    iget-object v4, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    .line 18
    iget v12, v0, Le/m/a/c/g1/e0/f;->n:I

    new-array v13, v9, [B

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v14, v12, 0x1

    and-int/2addr v14, v6

    or-int/2addr v2, v14

    int-to-byte v2, v2

    aput-byte v2, v13, v5

    shl-int/lit8 v2, v12, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x78

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v13, v10

    .line 19
    new-instance v2, Le/m/a/c/q1/s;

    invoke-direct {v2, v13}, Le/m/a/c/q1/s;-><init>([B)V

    invoke-static {v2, v5}, Le/m/a/c/q1/g;->b(Le/m/a/c/q1/s;Z)Landroid/util/Pair;

    move-result-object v2

    .line 20
    iget-object v14, v0, Le/m/a/c/g1/e0/f;->e:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 22
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Le/m/a/c/g1/e0/f;->d:Ljava/lang/String;

    const-string v15, "audio/mp4a-latm"

    move-object/from16 v24, v2

    .line 23
    invoke-static/range {v14 .. v24}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    const-wide/32 v6, 0x3d090000

    .line 24
    iget v4, v2, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v12, v4

    div-long/2addr v6, v12

    iput-wide v6, v0, Le/m/a/c/g1/e0/f;->q:J

    .line 25
    iget-object v4, v0, Le/m/a/c/g1/e0/f;->f:Le/m/a/c/g1/s;

    invoke-interface {v4, v2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 26
    iput-boolean v10, v0, Le/m/a/c/g1/e0/f;->p:Z

    goto :goto_2

    .line 27
    :cond_5
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->l(I)V

    .line 28
    :goto_2
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v8}, Le/m/a/c/q1/s;->l(I)V

    .line 29
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    sub-int/2addr v2, v9

    sub-int/2addr v2, v11

    .line 30
    iget-boolean v3, v0, Le/m/a/c/g1/e0/f;->k:Z

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, -0x2

    .line 31
    :cond_6
    iget-object v3, v0, Le/m/a/c/g1/e0/f;->f:Le/m/a/c/g1/s;

    iget-wide v6, v0, Le/m/a/c/g1/e0/f;->q:J

    .line 32
    iput v8, v0, Le/m/a/c/g1/e0/f;->h:I

    .line 33
    iput v5, v0, Le/m/a/c/g1/e0/f;->i:I

    .line 34
    iput-object v3, v0, Le/m/a/c/g1/e0/f;->t:Le/m/a/c/g1/s;

    .line 35
    iput-wide v6, v0, Le/m/a/c/g1/e0/f;->u:J

    .line 36
    iput v2, v0, Le/m/a/c/g1/e0/f;->r:I

    goto/16 :goto_0

    .line 37
    :cond_7
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v0, v1, v2, v4}, Le/m/a/c/g1/e0/f;->f(Le/m/a/c/q1/t;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->g:Le/m/a/c/g1/s;

    iget-object v3, v0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    invoke-interface {v2, v3, v4}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 39
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 40
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->g:Le/m/a/c/g1/s;

    iget-object v3, v0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    .line 41
    invoke-virtual {v3}, Le/m/a/c/q1/t;->p()I

    move-result v3

    add-int/2addr v3, v4

    .line 42
    iput v8, v0, Le/m/a/c/g1/e0/f;->h:I

    .line 43
    iput v4, v0, Le/m/a/c/g1/e0/f;->i:I

    .line 44
    iput-object v2, v0, Le/m/a/c/g1/e0/f;->t:Le/m/a/c/g1/s;

    const-wide/16 v4, 0x0

    .line 45
    iput-wide v4, v0, Le/m/a/c/g1/e0/f;->u:J

    .line 46
    iput v3, v0, Le/m/a/c/g1/e0/f;->r:I

    goto/16 :goto_0

    .line 47
    :cond_8
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 48
    :cond_9
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    iget-object v3, v2, Le/m/a/c/q1/s;->a:[B

    iget-object v6, v1, Le/m/a/c/q1/t;->a:[B

    .line 49
    iget v11, v1, Le/m/a/c/q1/t;->b:I

    .line 50
    aget-byte v6, v6, v11

    aput-byte v6, v3, v5

    .line 51
    invoke-virtual {v2, v9}, Le/m/a/c/q1/s;->j(I)V

    .line 52
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v2, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 53
    iget v3, v0, Le/m/a/c/g1/e0/f;->n:I

    if-eq v3, v4, :cond_a

    if-eq v2, v3, :cond_a

    .line 54
    iput-boolean v5, v0, Le/m/a/c/g1/e0/f;->l:Z

    .line 55
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/e0/f;->h()V

    goto/16 :goto_0

    .line 56
    :cond_a
    iget-boolean v3, v0, Le/m/a/c/g1/e0/f;->l:Z

    if-nez v3, :cond_b

    .line 57
    iput-boolean v10, v0, Le/m/a/c/g1/e0/f;->l:Z

    .line 58
    iget v3, v0, Le/m/a/c/g1/e0/f;->o:I

    iput v3, v0, Le/m/a/c/g1/e0/f;->m:I

    .line 59
    iput v2, v0, Le/m/a/c/g1/e0/f;->n:I

    .line 60
    :cond_b
    iput v7, v0, Le/m/a/c/g1/e0/f;->h:I

    .line 61
    iput v5, v0, Le/m/a/c/g1/e0/f;->i:I

    goto/16 :goto_0

    .line 62
    :cond_c
    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    .line 63
    iget v11, v1, Le/m/a/c/q1/t;->b:I

    .line 64
    iget v12, v1, Le/m/a/c/q1/t;->c:I

    :goto_3
    if-ge v11, v12, :cond_25

    add-int/lit8 v13, v11, 0x1

    .line 65
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    .line 66
    iget v14, v0, Le/m/a/c/g1/e0/f;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_1f

    int-to-byte v14, v11

    and-int/lit16 v14, v14, 0xff

    const v16, 0xff00

    or-int v14, v14, v16

    .line 67
    invoke-static {v14}, Le/m/a/c/g1/e0/f;->g(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 68
    iget-boolean v14, v0, Le/m/a/c/g1/e0/f;->l:Z

    if-nez v14, :cond_1c

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 69
    invoke-virtual {v1, v15}, Le/m/a/c/q1/t;->C(I)V

    .line 70
    iget-object v15, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    iget-object v15, v15, Le/m/a/c/q1/s;->a:[B

    invoke-virtual {v0, v1, v15, v10}, Le/m/a/c/g1/e0/f;->i(Le/m/a/c/q1/t;[BI)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_5

    .line 71
    :cond_d
    iget-object v15, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v15, v8}, Le/m/a/c/q1/s;->j(I)V

    .line 72
    iget-object v15, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v15, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v15

    .line 73
    iget v5, v0, Le/m/a/c/g1/e0/f;->m:I

    if-eq v5, v4, :cond_e

    if-eq v15, v5, :cond_e

    goto/16 :goto_5

    .line 74
    :cond_e
    iget v5, v0, Le/m/a/c/g1/e0/f;->n:I

    if-eq v5, v4, :cond_11

    .line 75
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    iget-object v5, v5, Le/m/a/c/q1/s;->a:[B

    invoke-virtual {v0, v1, v5, v10}, Le/m/a/c/g1/e0/f;->i(Le/m/a/c/q1/t;[BI)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_4

    .line 76
    :cond_f
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v5, v9}, Le/m/a/c/q1/s;->j(I)V

    .line 77
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v5, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    .line 78
    iget v9, v0, Le/m/a/c/g1/e0/f;->n:I

    if-eq v5, v9, :cond_10

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v5, v14, 0x2

    .line 79
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 80
    :cond_11
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    iget-object v5, v5, Le/m/a/c/q1/s;->a:[B

    invoke-virtual {v0, v1, v5, v8}, Le/m/a/c/g1/e0/f;->i(Le/m/a/c/q1/t;[BI)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_4

    .line 81
    :cond_12
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    const/16 v9, 0xe

    invoke-virtual {v5, v9}, Le/m/a/c/q1/s;->j(I)V

    .line 82
    iget-object v5, v0, Le/m/a/c/g1/e0/f;->b:Le/m/a/c/q1/s;

    invoke-virtual {v5, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    if-ge v5, v6, :cond_13

    goto :goto_5

    .line 83
    :cond_13
    iget-object v9, v1, Le/m/a/c/q1/t;->a:[B

    .line 84
    iget v3, v1, Le/m/a/c/q1/t;->c:I

    add-int/2addr v14, v5

    if-lt v14, v3, :cond_14

    goto :goto_4

    .line 85
    :cond_14
    aget-byte v5, v9, v14

    if-ne v5, v4, :cond_16

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_15

    goto :goto_4

    .line 86
    :cond_15
    aget-byte v3, v9, v14

    and-int/lit16 v3, v3, 0xff

    or-int v3, v3, v16

    .line 87
    invoke-static {v3}, Le/m/a/c/g1/e0/f;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 88
    aget-byte v3, v9, v14

    and-int/lit8 v3, v3, 0x8

    shr-int/2addr v3, v7

    if-ne v3, v15, :cond_1b

    goto :goto_4

    .line 89
    :cond_16
    aget-byte v5, v9, v14

    const/16 v15, 0x49

    if-eq v5, v15, :cond_17

    goto :goto_5

    :cond_17
    add-int/lit8 v5, v14, 0x1

    if-ne v5, v3, :cond_18

    goto :goto_4

    .line 90
    :cond_18
    aget-byte v5, v9, v5

    const/16 v15, 0x44

    if-eq v5, v15, :cond_19

    goto :goto_5

    :cond_19
    add-int/lit8 v14, v14, 0x2

    if-ne v14, v3, :cond_1a

    goto :goto_4

    .line 91
    :cond_1a
    aget-byte v3, v9, v14

    const/16 v5, 0x33

    if-ne v3, v5, :cond_1b

    :goto_4
    move v3, v10

    goto :goto_6

    :cond_1b
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_1f

    :cond_1c
    and-int/lit8 v2, v11, 0x8

    shr-int/2addr v2, v7

    .line 92
    iput v2, v0, Le/m/a/c/g1/e0/f;->o:I

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_1d

    move v2, v10

    goto :goto_7

    :cond_1d
    const/4 v2, 0x0

    .line 93
    :goto_7
    iput-boolean v2, v0, Le/m/a/c/g1/e0/f;->k:Z

    .line 94
    iget-boolean v2, v0, Le/m/a/c/g1/e0/f;->l:Z

    if-nez v2, :cond_1e

    .line 95
    iput v10, v0, Le/m/a/c/g1/e0/f;->h:I

    const/4 v2, 0x0

    .line 96
    iput v2, v0, Le/m/a/c/g1/e0/f;->i:I

    goto :goto_8

    :cond_1e
    const/4 v2, 0x0

    .line 97
    iput v7, v0, Le/m/a/c/g1/e0/f;->h:I

    .line 98
    iput v2, v0, Le/m/a/c/g1/e0/f;->i:I

    .line 99
    :goto_8
    invoke-virtual {v1, v13}, Le/m/a/c/q1/t;->C(I)V

    goto/16 :goto_0

    .line 100
    :cond_1f
    iget v3, v0, Le/m/a/c/g1/e0/f;->j:I

    or-int v5, v11, v3

    const/16 v9, 0x149

    if-eq v5, v9, :cond_24

    const/16 v9, 0x1ff

    if-eq v5, v9, :cond_23

    const/16 v9, 0x344

    if-eq v5, v9, :cond_22

    const/16 v9, 0x433

    if-eq v5, v9, :cond_21

    const/16 v5, 0x100

    if-eq v3, v5, :cond_20

    .line 101
    iput v5, v0, Le/m/a/c/g1/e0/f;->j:I

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    const/4 v3, 0x2

    const/4 v5, 0x0

    goto :goto_a

    :cond_20
    const/4 v3, 0x2

    const/4 v5, 0x0

    goto :goto_9

    :cond_21
    const/4 v3, 0x2

    .line 102
    iput v3, v0, Le/m/a/c/g1/e0/f;->h:I

    .line 103
    sget-object v2, Le/m/a/c/g1/e0/f;->v:[B

    array-length v2, v2

    iput v2, v0, Le/m/a/c/g1/e0/f;->i:I

    const/4 v5, 0x0

    .line 104
    iput v5, v0, Le/m/a/c/g1/e0/f;->r:I

    .line 105
    iget-object v2, v0, Le/m/a/c/g1/e0/f;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 106
    invoke-virtual {v1, v13}, Le/m/a/c/q1/t;->C(I)V

    goto/16 :goto_0

    :cond_22
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x400

    .line 107
    iput v9, v0, Le/m/a/c/g1/e0/f;->j:I

    goto :goto_9

    :cond_23
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x200

    .line 108
    iput v9, v0, Le/m/a/c/g1/e0/f;->j:I

    goto :goto_9

    :cond_24
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x300

    .line 109
    iput v9, v0, Le/m/a/c/g1/e0/f;->j:I

    :goto_9
    move v11, v13

    :goto_a
    move v9, v3

    const/16 v3, 0xd

    goto/16 :goto_3

    .line 110
    :cond_25
    invoke-virtual {v1, v11}, Le/m/a/c/q1/t;->C(I)V

    goto/16 :goto_0

    :cond_26
    return-void
.end method

.method public e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/e0/f;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/e0/f;->f:Le/m/a/c/g1/s;

    .line 4
    iget-boolean v0, p0, Le/m/a/c/g1/e0/f;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 6
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/f;->g:Le/m/a/c/g1/s;

    .line 7
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "application/id3"

    invoke-static {p2, v2, v1, v0, v1}, Lcom/google/android/exoplayer2/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Le/m/a/c/g1/g;

    invoke-direct {p1}, Le/m/a/c/g1/g;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/f;->g:Le/m/a/c/g1/s;

    :goto_0
    return-void
.end method

.method public final f(Le/m/a/c/q1/t;[BI)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v0

    iget v1, p0, Le/m/a/c/g1/e0/f;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Le/m/a/c/g1/e0/f;->i:I

    .line 3
    iget-object v2, p1, Le/m/a/c/q1/t;->a:[B

    iget v3, p1, Le/m/a/c/q1/t;->b:I

    invoke-static {v2, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Le/m/a/c/q1/t;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Le/m/a/c/q1/t;->b:I

    .line 5
    iget p1, p0, Le/m/a/c/g1/e0/f;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Le/m/a/c/g1/e0/f;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/e0/f;->h:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/e0/f;->i:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Le/m/a/c/g1/e0/f;->j:I

    return-void
.end method

.method public final i(Le/m/a/c/q1/t;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Le/m/a/c/q1/t;->a:[B

    iget v2, p1, Le/m/a/c/q1/t;->b:I

    invoke-static {v0, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p2, p1, Le/m/a/c/q1/t;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Le/m/a/c/q1/t;->b:I

    const/4 p1, 0x1

    return p1
.end method
