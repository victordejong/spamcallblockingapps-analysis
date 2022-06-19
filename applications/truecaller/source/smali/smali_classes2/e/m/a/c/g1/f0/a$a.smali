.class public final Le/m/a/c/g1/f0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/f0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/f0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Le/m/a/c/g1/i;

.field public final b:Le/m/a/c/g1/s;

.field public final c:Le/m/a/c/g1/f0/b;

.field public final d:I

.field public final e:[B

.field public final f:Le/m/a/c/q1/t;

.field public final g:I

.field public final h:Lcom/google/android/exoplayer2/Format;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/f0/a$a;->m:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Le/m/a/c/g1/f0/a$a;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Le/m/a/c/g1/f0/a$a;->a:Le/m/a/c/g1/i;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Le/m/a/c/g1/f0/a$a;->b:Le/m/a/c/g1/s;

    .line 4
    iput-object v1, v0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    .line 5
    iget v2, v1, Le/m/a/c/g1/f0/b;->c:I

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Le/m/a/c/g1/f0/a$a;->g:I

    .line 6
    iget-object v4, v1, Le/m/a/c/g1/f0/b;->f:[B

    .line 7
    array-length v5, v4

    const/4 v5, 0x0

    .line 8
    aget-byte v5, v4, v5

    aget-byte v5, v4, v3

    const/4 v5, 0x2

    .line 9
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    .line 10
    iput v4, v0, Le/m/a/c/g1/f0/a$a;->d:I

    .line 11
    iget v6, v1, Le/m/a/c/g1/f0/b;->b:I

    .line 12
    iget v7, v1, Le/m/a/c/g1/f0/b;->d:I

    mul-int/lit8 v8, v6, 0x4

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x8

    iget v8, v1, Le/m/a/c/g1/f0/b;->e:I

    mul-int/2addr v8, v6

    div-int/2addr v7, v8

    add-int/2addr v7, v3

    if-ne v4, v7, :cond_0

    .line 13
    invoke-static {v2, v4}, Le/m/a/c/q1/d0;->d(II)I

    move-result v3

    .line 14
    iget v7, v1, Le/m/a/c/g1/f0/b;->d:I

    mul-int/2addr v7, v3

    new-array v7, v7, [B

    iput-object v7, v0, Le/m/a/c/g1/f0/a$a;->e:[B

    .line 15
    new-instance v7, Le/m/a/c/q1/t;

    mul-int/lit8 v8, v4, 0x2

    mul-int/2addr v8, v6

    mul-int/2addr v8, v3

    .line 16
    invoke-direct {v7, v8}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v7, v0, Le/m/a/c/g1/f0/a$a;->f:Le/m/a/c/q1/t;

    .line 17
    iget v15, v1, Le/m/a/c/g1/f0/b;->c:I

    iget v3, v1, Le/m/a/c/g1/f0/b;->d:I

    mul-int/2addr v3, v15

    mul-int/lit8 v3, v3, 0x8

    div-int v12, v3, v4

    const/4 v9, 0x0

    const/4 v11, 0x0

    mul-int/2addr v2, v5

    mul-int v13, v2, v6

    .line 18
    iget v14, v1, Le/m/a/c/g1/f0/b;->b:I

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v10, "audio/raw"

    .line 19
    invoke-static/range {v9 .. v20}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/g1/f0/a$a;->h:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 20
    :cond_0
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Expected frames per block: "

    const-string v3, "; got: "

    invoke-static {v2, v7, v3, v4}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Le/m/a/c/g1/e;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/m/a/c/g1/f0/a$a;->g:I

    iget v2, v0, Le/m/a/c/g1/f0/a$a;->k:I

    .line 2
    invoke-virtual {v0, v2}, Le/m/a/c/g1/f0/a$a;->d(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    iget v2, v0, Le/m/a/c/g1/f0/a$a;->d:I

    invoke-static {v1, v2}, Le/m/a/c/q1/d0;->d(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v2, v2, Le/m/a/c/g1/f0/b;->d:I

    mul-int/2addr v1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    move-wide/from16 v5, p2

    move-object v8, v0

    if-nez v2, :cond_0

    move v2, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    move v2, v1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    :goto_0
    const/4 v9, -0x1

    if-nez v7, :cond_2

    .line 5
    iget v10, v8, Le/m/a/c/g1/f0/a$a;->i:I

    if-ge v10, v2, :cond_2

    sub-int v10, v2, v10

    int-to-long v10, v10

    .line 6
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 7
    iget-object v11, v8, Le/m/a/c/g1/f0/a$a;->e:[B

    iget v12, v8, Le/m/a/c/g1/f0/a$a;->i:I

    invoke-virtual {v1, v11, v12, v10}, Le/m/a/c/g1/e;->f([BII)I

    move-result v10

    if-ne v10, v9, :cond_1

    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget v9, v8, Le/m/a/c/g1/f0/a$a;->i:I

    add-int/2addr v9, v10

    iput v9, v8, Le/m/a/c/g1/f0/a$a;->i:I

    goto :goto_0

    .line 9
    :cond_2
    iget v1, v8, Le/m/a/c/g1/f0/a$a;->i:I

    iget-object v2, v8, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v2, v2, Le/m/a/c/g1/f0/b;->d:I

    div-int/2addr v1, v2

    if-lez v1, :cond_8

    .line 10
    iget-object v2, v8, Le/m/a/c/g1/f0/a$a;->e:[B

    iget-object v5, v8, Le/m/a/c/g1/f0/a$a;->f:Le/m/a/c/q1/t;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_7

    const/4 v10, 0x0

    .line 11
    :goto_3
    iget-object v11, v8, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v12, v11, Le/m/a/c/g1/f0/b;->b:I

    if-ge v10, v12, :cond_6

    .line 12
    iget-object v13, v5, Le/m/a/c/q1/t;->a:[B

    .line 13
    sget-object v14, Le/m/a/c/g1/f0/a$a;->n:[I

    iget v11, v11, Le/m/a/c/g1/f0/b;->d:I

    mul-int v15, v6, v11

    mul-int/lit8 v16, v10, 0x4

    add-int v16, v16, v15

    mul-int/lit8 v15, v12, 0x4

    add-int v15, v15, v16

    .line 14
    div-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x4

    add-int/lit8 v17, v16, 0x1

    .line 15
    aget-byte v3, v2, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v9, v2, v16

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    int-to-short v3, v3

    add-int/lit8 v16, v16, 0x2

    .line 16
    aget-byte v9, v2, v16

    and-int/lit16 v9, v9, 0xff

    const/16 v4, 0x58

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 17
    aget v9, v14, v4

    .line 18
    iget v0, v8, Le/m/a/c/g1/f0/a$a;->d:I

    mul-int/2addr v0, v6

    mul-int/2addr v0, v12

    add-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x2

    move/from16 p2, v4

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    .line 19
    aput-byte v4, v13, v0

    add-int/lit8 v4, v0, 0x1

    move/from16 p3, v0

    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    .line 20
    aput-byte v0, v13, v4

    move/from16 v4, p2

    move/from16 v0, p3

    move-object/from16 v17, v5

    move/from16 p2, v7

    const/4 v7, 0x0

    :goto_4
    mul-int/lit8 v5, v11, 0x2

    if-ge v7, v5, :cond_5

    .line 21
    div-int/lit8 v5, v7, 0x8

    .line 22
    div-int/lit8 v18, v7, 0x2

    rem-int/lit8 v18, v18, 0x4

    mul-int/2addr v5, v12

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v15

    add-int v5, v5, v18

    .line 23
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 24
    rem-int/lit8 v18, v7, 0x2

    if-nez v18, :cond_3

    and-int/lit8 v5, v5, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v5, v5, 0x4

    :goto_5
    and-int/lit8 v18, v5, 0x7

    mul-int/lit8 v18, v18, 0x2

    const/16 v16, 0x1

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v9

    shr-int/lit8 v9, v18, 0x3

    and-int/lit8 v18, v5, 0x8

    if-eqz v18, :cond_4

    neg-int v9, v9

    :cond_4
    add-int/2addr v3, v9

    const/16 v9, -0x8000

    move-object/from16 v18, v2

    const/16 v2, 0x7fff

    .line 25
    invoke-static {v3, v9, v2}, Le/m/a/c/q1/d0;->f(III)I

    move-result v3

    mul-int/lit8 v2, v12, 0x2

    add-int/2addr v0, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    .line 26
    aput-byte v2, v13, v0

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    .line 27
    aput-byte v9, v13, v2

    .line 28
    sget-object v2, Le/m/a/c/g1/f0/a$a;->m:[I

    aget v2, v2, v5

    add-int/2addr v4, v2

    .line 29
    array-length v2, v14

    const/4 v5, -0x1

    add-int/2addr v2, v5

    const/4 v9, 0x0

    invoke-static {v4, v9, v2}, Le/m/a/c/q1/d0;->f(III)I

    move-result v4

    .line 30
    aget v2, v14, v4

    add-int/lit8 v7, v7, 0x1

    move v9, v2

    move-object/from16 v2, v18

    goto :goto_4

    :cond_5
    move-object/from16 v18, v2

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p2

    move v9, v5

    move-object/from16 v5, v17

    goto/16 :goto_3

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v17, v5

    move/from16 p2, v7

    move v5, v9

    const/4 v9, 0x0

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move v9, v5

    move-object/from16 v5, v17

    goto/16 :goto_2

    :cond_7
    move-object/from16 v17, v5

    move/from16 p2, v7

    .line 31
    iget v0, v8, Le/m/a/c/g1/f0/a$a;->d:I

    mul-int/2addr v0, v1

    .line 32
    iget-object v2, v8, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v2, v2, Le/m/a/c/g1/f0/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    move-object/from16 v2, v17

    .line 33
    invoke-virtual {v2, v0}, Le/m/a/c/q1/t;->y(I)V

    .line 34
    iget v0, v8, Le/m/a/c/g1/f0/a$a;->i:I

    iget-object v2, v8, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v2, v2, Le/m/a/c/g1/f0/b;->d:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v8, Le/m/a/c/g1/f0/a$a;->i:I

    .line 35
    iget-object v0, v8, Le/m/a/c/g1/f0/a$a;->f:Le/m/a/c/q1/t;

    .line 36
    iget v1, v0, Le/m/a/c/q1/t;->c:I

    .line 37
    iget-object v2, v8, Le/m/a/c/g1/f0/a$a;->b:Le/m/a/c/g1/s;

    invoke-interface {v2, v0, v1}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 38
    iget v0, v8, Le/m/a/c/g1/f0/a$a;->k:I

    add-int/2addr v0, v1

    iput v0, v8, Le/m/a/c/g1/f0/a$a;->k:I

    .line 39
    invoke-virtual {v8, v0}, Le/m/a/c/g1/f0/a$a;->d(I)I

    move-result v0

    .line 40
    iget v1, v8, Le/m/a/c/g1/f0/a$a;->g:I

    if-lt v0, v1, :cond_9

    .line 41
    invoke-virtual {v8, v1}, Le/m/a/c/g1/f0/a$a;->e(I)V

    goto :goto_6

    :cond_8
    move/from16 p2, v7

    :cond_9
    :goto_6
    if-eqz p2, :cond_a

    .line 42
    iget v0, v8, Le/m/a/c/g1/f0/a$a;->k:I

    invoke-virtual {v8, v0}, Le/m/a/c/g1/f0/a$a;->d(I)I

    move-result v0

    if-lez v0, :cond_a

    .line 43
    invoke-virtual {v8, v0}, Le/m/a/c/g1/f0/a$a;->e(I)V

    :cond_a
    return p2
.end method

.method public b(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/f0/a$a;->a:Le/m/a/c/g1/i;

    new-instance v8, Le/m/a/c/g1/f0/d;

    iget-object v2, p0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v3, p0, Le/m/a/c/g1/f0/a$a;->d:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Le/m/a/c/g1/f0/d;-><init>(Le/m/a/c/g1/f0/b;IJJ)V

    invoke-interface {v0, v8}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/f0/a$a;->b:Le/m/a/c/g1/s;

    iget-object p2, p0, Le/m/a/c/g1/f0/a$a;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public c(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/f0/a$a;->i:I

    .line 2
    iput-wide p1, p0, Le/m/a/c/g1/f0/a$a;->j:J

    .line 3
    iput v0, p0, Le/m/a/c/g1/f0/a$a;->k:I

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Le/m/a/c/g1/f0/a$a;->l:J

    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v0, v0, Le/m/a/c/g1/f0/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method public final e(I)V
    .locals 11

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/f0/a$a;->j:J

    iget-wide v2, p0, Le/m/a/c/g1/f0/a$a;->l:J

    iget-object v4, p0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v4, v4, Le/m/a/c/g1/f0/b;->c:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 2
    invoke-static/range {v2 .. v7}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/f0/a$a;->c:Le/m/a/c/g1/f0/b;

    iget v0, v0, Le/m/a/c/g1/f0/b;->b:I

    mul-int/lit8 v1, p1, 0x2

    mul-int/2addr v1, v0

    .line 4
    iget v0, p0, Le/m/a/c/g1/f0/a$a;->k:I

    sub-int v9, v0, v1

    .line 5
    iget-object v4, p0, Le/m/a/c/g1/f0/a$a;->b:Le/m/a/c/g1/s;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v1

    invoke-interface/range {v4 .. v10}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 6
    iget-wide v2, p0, Le/m/a/c/g1/f0/a$a;->l:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Le/m/a/c/g1/f0/a$a;->l:J

    .line 7
    iget p1, p0, Le/m/a/c/g1/f0/a$a;->k:I

    sub-int/2addr p1, v1

    iput p1, p0, Le/m/a/c/g1/f0/a$a;->k:I

    return-void
.end method
