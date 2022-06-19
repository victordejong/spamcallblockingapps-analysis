.class public final Le/m/a/c/g1/e0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/e0/k$a;
    }
.end annotation


# static fields
.field public static final q:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le/m/a/c/g1/s;

.field public c:Z

.field public d:J

.field public final e:Le/m/a/c/g1/e0/d0;

.field public final f:Le/m/a/c/q1/t;

.field public final g:[Z

.field public final h:Le/m/a/c/g1/e0/k$a;

.field public final i:Le/m/a/c/g1/e0/q;

.field public j:J

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/e0/k;->q:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Le/m/a/c/g1/e0/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 3
    iput-object v0, p0, Le/m/a/c/g1/e0/k;->g:[Z

    .line 4
    new-instance v0, Le/m/a/c/g1/e0/k$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Le/m/a/c/g1/e0/k$a;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Le/m/a/c/g1/e0/q;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Le/m/a/c/g1/e0/q;-><init>(II)V

    iput-object p1, p0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    .line 6
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/k;->f:Le/m/a/c/q1/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    .line 8
    iput-object p1, p0, Le/m/a/c/g1/e0/k;->f:Le/m/a/c/q1/t;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/k;->g:[Z

    invoke-static {v0}, Le/m/a/c/q1/r;->a([Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/m/a/c/g1/e0/k$a;->a:Z

    .line 4
    iput v1, v0, Le/m/a/c/g1/e0/k$a;->b:I

    .line 5
    iput v1, v0, Le/m/a/c/g1/e0/k$a;->c:I

    .line 6
    iget-object v0, p0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    invoke-virtual {v0}, Le/m/a/c/g1/e0/q;->c()V

    :cond_0
    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Le/m/a/c/g1/e0/k;->j:J

    .line 9
    iput-boolean v1, p0, Le/m/a/c/g1/e0/k;->k:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/e0/k;->l:J

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 2
    iget v3, v1, Le/m/a/c/q1/t;->c:I

    .line 3
    iget-object v4, v1, Le/m/a/c/q1/t;->a:[B

    .line 4
    iget-wide v5, v0, Le/m/a/c/g1/e0/k;->j:J

    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Le/m/a/c/g1/e0/k;->j:J

    .line 5
    iget-object v5, v0, Le/m/a/c/g1/e0/k;->b:Le/m/a/c/g1/s;

    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 6
    :goto_0
    iget-object v5, v0, Le/m/a/c/g1/e0/k;->g:[Z

    invoke-static {v4, v2, v3, v5}, Le/m/a/c/q1/r;->b([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 7
    iget-boolean v1, v0, Le/m/a/c/g1/e0/k;->c:Z

    if-nez v1, :cond_0

    .line 8
    iget-object v1, v0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    invoke-virtual {v1, v4, v2, v3}, Le/m/a/c/g1/e0/k$a;->a([BII)V

    .line 9
    :cond_0
    iget-object v1, v0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    invoke-virtual {v1, v4, v2, v3}, Le/m/a/c/g1/e0/q;->a([BII)V

    :cond_1
    return-void

    .line 11
    :cond_2
    iget-object v6, v1, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 12
    iget-boolean v9, v0, Le/m/a/c/g1/e0/k;->c:Z

    const/16 v12, 0xb3

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-nez v9, :cond_d

    if-lez v8, :cond_3

    .line 13
    iget-object v9, v0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    invoke-virtual {v9, v4, v2, v5}, Le/m/a/c/g1/e0/k$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    move v9, v15

    .line 14
    :goto_1
    iget-object v11, v0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    .line 15
    iget-boolean v13, v11, Le/m/a/c/g1/e0/k$a;->a:Z

    if-eqz v13, :cond_6

    .line 16
    iget v13, v11, Le/m/a/c/g1/e0/k$a;->b:I

    sub-int/2addr v13, v9

    iput v13, v11, Le/m/a/c/g1/e0/k$a;->b:I

    .line 17
    iget v9, v11, Le/m/a/c/g1/e0/k$a;->c:I

    if-nez v9, :cond_5

    const/16 v9, 0xb5

    if-ne v6, v9, :cond_5

    .line 18
    iput v13, v11, Le/m/a/c/g1/e0/k$a;->c:I

    goto :goto_2

    .line 19
    :cond_5
    iput-boolean v15, v11, Le/m/a/c/g1/e0/k$a;->a:Z

    move v9, v10

    goto :goto_3

    :cond_6
    if-ne v6, v12, :cond_7

    .line 20
    iput-boolean v10, v11, Le/m/a/c/g1/e0/k$a;->a:Z

    .line 21
    :cond_7
    :goto_2
    sget-object v9, Le/m/a/c/g1/e0/k$a;->e:[B

    array-length v13, v9

    invoke-virtual {v11, v9, v15, v13}, Le/m/a/c/g1/e0/k$a;->a([BII)V

    move v9, v15

    :goto_3
    if-eqz v9, :cond_d

    .line 22
    iget-object v9, v0, Le/m/a/c/g1/e0/k;->h:Le/m/a/c/g1/e0/k$a;

    iget-object v11, v0, Le/m/a/c/g1/e0/k;->a:Ljava/lang/String;

    .line 23
    iget-object v13, v9, Le/m/a/c/g1/e0/k$a;->d:[B

    iget v15, v9, Le/m/a/c/g1/e0/k$a;->b:I

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v15, 0x4

    .line 24
    aget-byte v12, v13, v15

    and-int/lit16 v12, v12, 0xff

    const/16 v28, 0x5

    .line 25
    aget-byte v10, v13, v28

    and-int/lit16 v10, v10, 0xff

    const/16 v16, 0x6

    .line 26
    aget-byte v14, v13, v16

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v12, v15

    shr-int/lit8 v16, v10, 0x4

    or-int v21, v12, v16

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x8

    or-int v22, v10, v14

    const/4 v10, 0x7

    .line 27
    aget-byte v12, v13, v10

    and-int/lit16 v12, v12, 0xf0

    shr-int/2addr v12, v15

    const/4 v14, 0x2

    if-eq v12, v14, :cond_a

    const/4 v14, 0x3

    if-eq v12, v14, :cond_9

    if-eq v12, v15, :cond_8

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    mul-int/lit8 v12, v22, 0x79

    int-to-float v12, v12

    mul-int/lit8 v14, v21, 0x64

    goto :goto_4

    :cond_9
    mul-int/lit8 v12, v22, 0x10

    int-to-float v12, v12

    mul-int/lit8 v14, v21, 0x9

    goto :goto_4

    :cond_a
    mul-int/lit8 v12, v22, 0x4

    int-to-float v12, v12

    mul-int/lit8 v14, v21, 0x3

    :goto_4
    int-to-float v14, v14

    div-float/2addr v12, v14

    :goto_5
    move/from16 v26, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v23, -0x40800000    # -1.0f

    .line 28
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, -0x1

    const/16 v27, 0x0

    const-string v17, "video/mpeg2"

    move-object/from16 v16, v11

    .line 29
    invoke-static/range {v16 .. v27}, Lcom/google/android/exoplayer2/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 30
    aget-byte v10, v13, v10

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_c

    .line 31
    sget-object v12, Le/m/a/c/g1/e0/k;->q:[D

    array-length v14, v12

    if-ge v10, v14, :cond_c

    .line 32
    aget-wide v14, v12, v10

    .line 33
    iget v9, v9, Le/m/a/c/g1/e0/k$a;->c:I

    const/16 v10, 0x9

    add-int/2addr v9, v10

    .line 34
    aget-byte v10, v13, v9

    and-int/lit8 v10, v10, 0x60

    shr-int/lit8 v10, v10, 0x5

    .line 35
    aget-byte v9, v13, v9

    and-int/lit8 v9, v9, 0x1f

    if-eq v10, v9, :cond_b

    int-to-double v12, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, v16

    add-int/lit8 v9, v9, 0x1

    int-to-double v9, v9

    div-double/2addr v12, v9

    mul-double/2addr v14, v12

    :cond_b
    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v14

    double-to-long v9, v9

    goto :goto_6

    :cond_c
    const-wide/16 v9, 0x0

    .line 36
    :goto_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 37
    iget-object v10, v0, Le/m/a/c/g1/e0/k;->b:Le/m/a/c/g1/s;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v10, v11}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 38
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Le/m/a/c/g1/e0/k;->d:J

    const/4 v9, 0x1

    .line 39
    iput-boolean v9, v0, Le/m/a/c/g1/e0/k;->c:Z

    .line 40
    :cond_d
    iget-object v9, v0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    if-eqz v9, :cond_11

    if-lez v8, :cond_e

    .line 41
    iget-object v8, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    invoke-virtual {v8, v4, v2, v5}, Le/m/a/c/g1/e0/q;->a([BII)V

    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    neg-int v2, v8

    .line 42
    :goto_7
    iget-object v8, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    invoke-virtual {v8, v2}, Le/m/a/c/g1/e0/q;->b(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 43
    iget-object v2, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    iget-object v8, v2, Le/m/a/c/g1/e0/q;->d:[B

    iget v2, v2, Le/m/a/c/g1/e0/q;->e:I

    invoke-static {v8, v2}, Le/m/a/c/q1/r;->e([BI)I

    move-result v2

    .line 44
    iget-object v8, v0, Le/m/a/c/g1/e0/k;->f:Le/m/a/c/q1/t;

    iget-object v9, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    iget-object v9, v9, Le/m/a/c/g1/e0/q;->d:[B

    invoke-virtual {v8, v9, v2}, Le/m/a/c/q1/t;->A([BI)V

    .line 45
    iget-object v2, v0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    iget-wide v8, v0, Le/m/a/c/g1/e0/k;->n:J

    iget-object v10, v0, Le/m/a/c/g1/e0/k;->f:Le/m/a/c/q1/t;

    .line 46
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v10}, Le/m/a/c/q1/t;->a()I

    move-result v11

    const/16 v12, 0x9

    if-ge v11, v12, :cond_f

    goto :goto_8

    .line 48
    :cond_f
    invoke-virtual {v10}, Le/m/a/c/q1/t;->e()I

    move-result v11

    .line 49
    invoke-virtual {v10}, Le/m/a/c/q1/t;->e()I

    move-result v12

    .line 50
    invoke-virtual {v10}, Le/m/a/c/q1/t;->q()I

    move-result v13

    const/16 v14, 0x1b2

    if-ne v11, v14, :cond_10

    const v11, 0x47413934

    if-ne v12, v11, :cond_10

    const/4 v11, 0x3

    if-ne v13, v11, :cond_10

    .line 51
    iget-object v2, v2, Le/m/a/c/g1/e0/d0;->b:[Le/m/a/c/g1/s;

    invoke-static {v8, v9, v10, v2}, Ln3/g0/y;->E(JLe/m/a/c/q1/t;[Le/m/a/c/g1/s;)V

    :cond_10
    :goto_8
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_11

    .line 52
    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v2, v2, v8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    .line 53
    iget-object v2, v0, Le/m/a/c/g1/e0/k;->i:Le/m/a/c/g1/e0/q;

    invoke-virtual {v2, v6}, Le/m/a/c/g1/e0/q;->d(I)V

    :cond_11
    if-eqz v6, :cond_13

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_12

    goto :goto_9

    :cond_12
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_1a

    const/4 v2, 0x1

    .line 54
    iput-boolean v2, v0, Le/m/a/c/g1/e0/k;->o:Z

    goto :goto_e

    :cond_13
    :goto_9
    sub-int v2, v3, v5

    .line 55
    iget-boolean v5, v0, Le/m/a/c/g1/e0/k;->k:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Le/m/a/c/g1/e0/k;->p:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Le/m/a/c/g1/e0/k;->c:Z

    if-eqz v5, :cond_14

    .line 56
    iget-boolean v11, v0, Le/m/a/c/g1/e0/k;->o:Z

    .line 57
    iget-wide v8, v0, Le/m/a/c/g1/e0/k;->j:J

    iget-wide v12, v0, Le/m/a/c/g1/e0/k;->m:J

    sub-long/2addr v8, v12

    long-to-int v5, v8

    sub-int v12, v5, v2

    .line 58
    iget-object v8, v0, Le/m/a/c/g1/e0/k;->b:Le/m/a/c/g1/s;

    iget-wide v9, v0, Le/m/a/c/g1/e0/k;->n:J

    const/4 v14, 0x0

    move v13, v2

    invoke-interface/range {v8 .. v14}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 59
    :cond_14
    iget-boolean v5, v0, Le/m/a/c/g1/e0/k;->k:Z

    if-eqz v5, :cond_16

    iget-boolean v8, v0, Le/m/a/c/g1/e0/k;->p:Z

    if-eqz v8, :cond_15

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_c

    .line 60
    :cond_16
    :goto_a
    iget-wide v8, v0, Le/m/a/c/g1/e0/k;->j:J

    int-to-long v10, v2

    sub-long/2addr v8, v10

    iput-wide v8, v0, Le/m/a/c/g1/e0/k;->m:J

    .line 61
    iget-wide v8, v0, Le/m/a/c/g1/e0/k;->l:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v10

    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    if-eqz v5, :cond_18

    iget-wide v8, v0, Le/m/a/c/g1/e0/k;->n:J

    iget-wide v12, v0, Le/m/a/c/g1/e0/k;->d:J

    add-long/2addr v8, v12

    goto :goto_b

    :cond_18
    const-wide/16 v8, 0x0

    :goto_b
    iput-wide v8, v0, Le/m/a/c/g1/e0/k;->n:J

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, v0, Le/m/a/c/g1/e0/k;->o:Z

    .line 63
    iput-wide v10, v0, Le/m/a/c/g1/e0/k;->l:J

    const/4 v5, 0x1

    .line 64
    iput-boolean v5, v0, Le/m/a/c/g1/e0/k;->k:Z

    :goto_c
    if-nez v6, :cond_19

    move v15, v5

    goto :goto_d

    :cond_19
    move v15, v2

    .line 65
    :goto_d
    iput-boolean v15, v0, Le/m/a/c/g1/e0/k;->p:Z

    :cond_1a
    :goto_e
    move v2, v7

    goto/16 :goto_0
.end method

.method public e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Le/m/a/c/g1/e0/k;->a:Ljava/lang/String;

    .line 3
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v2

    iput-object v2, v0, Le/m/a/c/g1/e0/k;->b:Le/m/a/c/g1/s;

    .line 4
    iget-object v2, v0, Le/m/a/c/g1/e0/k;->e:Le/m/a/c/g1/e0/d0;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    iget-object v5, v2, Le/m/a/c/g1/e0/d0;->b:[Le/m/a/c/g1/s;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 7
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v1, v5, v6}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v5

    .line 8
    iget-object v6, v2, Le/m/a/c/g1/e0/d0;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Format;

    .line 9
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v7, "application/cea-608"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "application/cea-708"

    .line 11
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid closed caption mime type provided: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-static {v7, v9}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget v11, v6, Lcom/google/android/exoplayer2/Format;->c:I

    iget-object v12, v6, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    iget v13, v6, Lcom/google/android/exoplayer2/Format;->B:I

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    move-object/from16 v17, v6

    .line 14
    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 15
    invoke-interface {v5, v6}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 16
    iget-object v6, v2, Le/m/a/c/g1/e0/d0;->b:[Le/m/a/c/g1/s;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
