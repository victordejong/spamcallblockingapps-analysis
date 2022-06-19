.class public final Le/m/a/c/g1/y/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public final a:[B

.field public final b:Le/m/a/c/q1/t;

.field public final c:Le/m/a/c/g1/k$a;

.field public d:Le/m/a/c/g1/i;

.field public e:Le/m/a/c/g1/s;

.field public f:I

.field public g:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public h:Le/m/a/c/q1/m;

.field public i:I

.field public j:I

.field public k:Le/m/a/c/g1/y/b;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Le/m/a/c/g1/y/c;->a:[B

    .line 3
    new-instance v0, Le/m/a/c/q1/t;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/c/q1/t;-><init>([BI)V

    iput-object v0, p0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    .line 4
    new-instance v0, Le/m/a/c/g1/k$a;

    invoke-direct {v0}, Le/m/a/c/g1/k$a;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/y/c;->c:Le/m/a/c/g1/k$a;

    .line 5
    iput v2, p0, Le/m/a/c/g1/y/c;->f:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1
    iput p2, p0, Le/m/a/c/g1/y/c;->f:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/a/c/g1/y/c;->k:Le/m/a/c/g1/y/b;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Le/m/a/c/g1/a;->e(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    .line 4
    :goto_1
    iput-wide v0, p0, Le/m/a/c/g1/y/c;->m:J

    .line 5
    iput p2, p0, Le/m/a/c/g1/y/c;->l:I

    .line 6
    iget-object p1, p0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {p1}, Le/m/a/c/q1/t;->x()V

    return-void
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/y/c;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 2
    sget v3, Le/m/a/c/q1/d0;->a:I

    .line 3
    iget v2, v2, Le/m/a/c/q1/m;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 4
    iget-object v4, p0, Le/m/a/c/g1/y/c;->e:Le/m/a/c/g1/s;

    const/4 v7, 0x1

    iget v8, p0, Le/m/a/c/g1/y/c;->l:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    invoke-interface/range {v4 .. v10}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    return-void
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Le/m/a/c/g1/y/c;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    const/4 v5, 0x2

    if-eq v2, v3, :cond_21

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v2, v5, :cond_1f

    const/4 v11, 0x7

    const/4 v12, 0x6

    if-eq v2, v10, :cond_18

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    const/4 v8, 0x5

    if-eq v2, v9, :cond_14

    if-ne v2, v8, :cond_13

    .line 2
    iget-object v2, v0, Le/m/a/c/g1/y/c;->e:Le/m/a/c/g1/s;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Le/m/a/c/g1/y/c;->k:Le/m/a/c/g1/y/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le/m/a/c/g1/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Le/m/a/c/g1/y/c;->k:Le/m/a/c/g1/y/b;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Le/m/a/c/g1/a;->a(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I

    move-result v4

    goto/16 :goto_b

    .line 8
    :cond_0
    iget-wide v8, v0, Le/m/a/c/g1/y/c;->m:J

    cmp-long v2, v8, v15

    if-nez v2, :cond_5

    .line 9
    iget-object v2, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 10
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    .line 11
    invoke-virtual {v1, v3, v4}, Le/m/a/c/g1/e;->a(IZ)Z

    new-array v6, v3, [B

    .line 12
    invoke-virtual {v1, v6, v4, v3, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 13
    aget-byte v6, v6, v4

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    .line 14
    :goto_0
    invoke-virtual {v1, v5, v4}, Le/m/a/c/g1/e;->a(IZ)Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v11, v12

    .line 15
    :goto_1
    new-instance v5, Le/m/a/c/q1/t;

    invoke-direct {v5, v11}, Le/m/a/c/q1/t;-><init>(I)V

    .line 16
    iget-object v7, v5, Le/m/a/c/q1/t;->a:[B

    .line 17
    invoke-static {v1, v7, v4, v11}, Ln3/g0/y;->B1(Le/m/a/c/g1/e;[BII)I

    move-result v7

    .line 18
    invoke-virtual {v5, v7}, Le/m/a/c/q1/t;->B(I)V

    .line 19
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    .line 20
    :try_start_0
    invoke-virtual {v5}, Le/m/a/c/q1/t;->w()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget v1, v2, Le/m/a/c/q1/m;->b:I

    int-to-long v1, v1

    mul-long/2addr v7, v1

    :goto_2
    move-wide v13, v7

    goto :goto_3

    :catch_0
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    .line 22
    iput-wide v13, v0, Le/m/a/c/g1/y/c;->m:J

    goto/16 :goto_b

    .line 23
    :cond_4
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 24
    :cond_5
    iget-object v2, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    .line 25
    iget v5, v2, Le/m/a/c/q1/t;->c:I

    const v6, 0x8000

    if-ge v5, v6, :cond_8

    .line 26
    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    sub-int/2addr v6, v5

    .line 27
    invoke-virtual {v1, v2, v5, v6}, Le/m/a/c/g1/e;->f([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    if-nez v3, :cond_7

    .line 28
    iget-object v2, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Le/m/a/c/q1/t;->B(I)V

    goto :goto_5

    .line 29
    :cond_7
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    if-nez v1, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/y/c;->b()V

    move v4, v2

    goto/16 :goto_b

    :cond_8
    move v3, v4

    .line 31
    :cond_9
    :goto_5
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    .line 32
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 33
    iget v5, v0, Le/m/a/c/g1/y/c;->l:I

    iget v6, v0, Le/m/a/c/g1/y/c;->i:I

    if-ge v5, v6, :cond_a

    sub-int/2addr v6, v5

    .line 34
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->D(I)V

    .line 35
    :cond_a
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    .line 36
    iget-object v5, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 37
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget v5, v1, Le/m/a/c/q1/t;->b:I

    .line 39
    :goto_6
    iget v6, v1, Le/m/a/c/q1/t;->c:I

    add-int/lit8 v6, v6, -0x10

    if-gt v5, v6, :cond_c

    .line 40
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 41
    iget-object v6, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    iget v8, v0, Le/m/a/c/g1/y/c;->j:I

    iget-object v9, v0, Le/m/a/c/g1/y/c;->c:Le/m/a/c/g1/k$a;

    invoke-static {v1, v6, v8, v9}, Le/m/a/c/g1/k;->b(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ILe/m/a/c/g1/k$a;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 42
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 43
    iget-object v1, v0, Le/m/a/c/g1/y/c;->c:Le/m/a/c/g1/k$a;

    iget-wide v5, v1, Le/m/a/c/g1/k$a;->a:J

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_10

    .line 44
    :goto_7
    iget v3, v1, Le/m/a/c/q1/t;->c:I

    .line 45
    iget v6, v0, Le/m/a/c/g1/y/c;->i:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_f

    .line 46
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 47
    :try_start_1
    iget-object v3, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    iget v6, v0, Le/m/a/c/g1/y/c;->j:I

    iget-object v8, v0, Le/m/a/c/g1/y/c;->c:Le/m/a/c/g1/k$a;

    .line 48
    invoke-static {v1, v3, v6, v8}, Le/m/a/c/g1/k;->b(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ILe/m/a/c/g1/k$a;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move v3, v4

    .line 49
    :goto_8
    iget v6, v1, Le/m/a/c/q1/t;->b:I

    .line 50
    iget v8, v1, Le/m/a/c/q1/t;->c:I

    if-le v6, v8, :cond_d

    move v3, v4

    :cond_d
    if-eqz v3, :cond_e

    .line 51
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 52
    iget-object v1, v0, Le/m/a/c/g1/y/c;->c:Le/m/a/c/g1/k$a;

    iget-wide v5, v1, Le/m/a/c/g1/k$a;->a:J

    goto :goto_a

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 53
    :cond_f
    invoke-virtual {v1, v3}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_9

    .line 54
    :cond_10
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    :goto_9
    move-wide v5, v15

    .line 55
    :goto_a
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    .line 56
    iget v3, v1, Le/m/a/c/q1/t;->b:I

    sub-int/2addr v3, v2

    .line 57
    invoke-virtual {v1, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 58
    iget-object v1, v0, Le/m/a/c/g1/y/c;->e:Le/m/a/c/g1/s;

    iget-object v2, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    invoke-interface {v1, v2, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 59
    iget v1, v0, Le/m/a/c/g1/y/c;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Le/m/a/c/g1/y/c;->l:I

    cmp-long v1, v5, v15

    if-eqz v1, :cond_11

    .line 60
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/y/c;->b()V

    .line 61
    iput v4, v0, Le/m/a/c/g1/y/c;->l:I

    .line 62
    iput-wide v5, v0, Le/m/a/c/g1/y/c;->m:J

    .line 63
    :cond_11
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    if-ge v1, v7, :cond_12

    .line 64
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    .line 65
    iget v3, v1, Le/m/a/c/q1/t;->b:I

    .line 66
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    .line 67
    invoke-static {v2, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v1, v0, Le/m/a/c/g1/y/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Le/m/a/c/q1/t;->y(I)V

    :cond_12
    :goto_b
    return v4

    .line 69
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 70
    :cond_14
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    new-array v2, v5, [B

    .line 71
    invoke-virtual {v1, v2, v4, v5, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 72
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v5

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_17

    .line 73
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    .line 74
    iput v2, v0, Le/m/a/c/g1/y/c;->j:I

    .line 75
    iget-object v2, v0, Le/m/a/c/g1/y/c;->d:Le/m/a/c/g1/i;

    .line 76
    sget v3, Le/m/a/c/q1/d0;->a:I

    .line 77
    iget-wide v5, v1, Le/m/a/c/g1/e;->d:J

    .line 78
    iget-wide v9, v1, Le/m/a/c/g1/e;->c:J

    .line 79
    iget-object v1, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 80
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    iget-object v3, v1, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    if-eqz v3, :cond_15

    .line 82
    new-instance v3, Le/m/a/c/g1/l;

    invoke-direct {v3, v1, v5, v6}, Le/m/a/c/g1/l;-><init>(Le/m/a/c/q1/m;J)V

    goto :goto_c

    :cond_15
    cmp-long v3, v9, v15

    if-eqz v3, :cond_16

    .line 83
    iget-wide v11, v1, Le/m/a/c/q1/m;->j:J

    cmp-long v3, v11, v13

    if-lez v3, :cond_16

    .line 84
    new-instance v3, Le/m/a/c/g1/y/b;

    iget v7, v0, Le/m/a/c/g1/y/c;->j:I

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move/from16 v19, v7

    move-wide/from16 v20, v5

    move-wide/from16 v22, v9

    invoke-direct/range {v17 .. v23}, Le/m/a/c/g1/y/b;-><init>(Le/m/a/c/q1/m;IJJ)V

    iput-object v3, v0, Le/m/a/c/g1/y/c;->k:Le/m/a/c/g1/y/b;

    .line 85
    iget-object v3, v3, Le/m/a/c/g1/a;->a:Le/m/a/c/g1/a$a;

    goto :goto_c

    .line 86
    :cond_16
    new-instance v3, Le/m/a/c/g1/q$b;

    invoke-virtual {v1}, Le/m/a/c/q1/m;->d()J

    move-result-wide v5

    .line 87
    invoke-direct {v3, v5, v6, v13, v14}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 88
    :goto_c
    invoke-interface {v2, v3}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 89
    iput v8, v0, Le/m/a/c/g1/y/c;->f:I

    return v4

    .line 90
    :cond_17
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    .line 91
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "First frame does not start with sync code."

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_18
    iget-object v2, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    move v3, v4

    :goto_d
    if-nez v3, :cond_1e

    .line 93
    iput v4, v1, Le/m/a/c/g1/e;->f:I

    .line 94
    new-instance v3, Le/m/a/c/q1/s;

    new-array v5, v9, [B

    invoke-direct {v3, v5}, Le/m/a/c/q1/s;-><init>([B)V

    .line 95
    iget-object v5, v3, Le/m/a/c/q1/s;->a:[B

    .line 96
    invoke-virtual {v1, v5, v4, v9, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 97
    invoke-virtual {v3}, Le/m/a/c/q1/s;->e()Z

    move-result v5

    .line 98
    invoke-virtual {v3, v11}, Le/m/a/c/q1/s;->f(I)I

    move-result v6

    .line 99
    invoke-virtual {v3, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v3

    add-int/2addr v3, v9

    if-nez v6, :cond_19

    const/16 v2, 0x26

    new-array v3, v2, [B

    .line 100
    invoke-virtual {v1, v3, v4, v2, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 101
    new-instance v2, Le/m/a/c/q1/m;

    invoke-direct {v2, v3, v9}, Le/m/a/c/q1/m;-><init>([BI)V

    :goto_e
    move/from16 p2, v5

    goto/16 :goto_10

    :cond_19
    if-eqz v2, :cond_1d

    if-ne v6, v10, :cond_1a

    .line 102
    new-instance v6, Le/m/a/c/q1/t;

    invoke-direct {v6, v3}, Le/m/a/c/q1/t;-><init>(I)V

    .line 103
    iget-object v7, v6, Le/m/a/c/q1/t;->a:[B

    .line 104
    invoke-virtual {v1, v7, v4, v3, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 105
    invoke-static {v6}, Ln3/g0/y;->J1(Le/m/a/c/q1/t;)Le/m/a/c/q1/m$a;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Le/m/a/c/q1/m;->b(Le/m/a/c/q1/m$a;)Le/m/a/c/q1/m;

    move-result-object v2

    goto :goto_e

    :cond_1a
    if-ne v6, v9, :cond_1b

    .line 107
    new-instance v6, Le/m/a/c/q1/t;

    invoke-direct {v6, v3}, Le/m/a/c/q1/t;-><init>(I)V

    .line 108
    iget-object v7, v6, Le/m/a/c/q1/t;->a:[B

    .line 109
    invoke-virtual {v1, v7, v4, v3, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 110
    invoke-virtual {v6, v9}, Le/m/a/c/q1/t;->D(I)V

    .line 111
    invoke-static {v6, v4, v4}, Ln3/g0/y;->K1(Le/m/a/c/q1/t;ZZ)Le/m/a/c/g1/u;

    move-result-object v3

    .line 112
    iget-object v3, v3, Le/m/a/c/g1/u;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v6}, Le/m/a/c/q1/m;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Le/m/a/c/q1/m;->f(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v24

    .line 115
    new-instance v3, Le/m/a/c/q1/m;

    iget v14, v2, Le/m/a/c/q1/m;->a:I

    iget v15, v2, Le/m/a/c/q1/m;->b:I

    iget v6, v2, Le/m/a/c/q1/m;->c:I

    iget v7, v2, Le/m/a/c/q1/m;->d:I

    iget v13, v2, Le/m/a/c/q1/m;->e:I

    iget v11, v2, Le/m/a/c/q1/m;->g:I

    iget v10, v2, Le/m/a/c/q1/m;->h:I

    iget-wide v8, v2, Le/m/a/c/q1/m;->j:J

    iget-object v2, v2, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    move/from16 v18, v13

    move-object v13, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v19, v11

    move/from16 v20, v10

    move-wide/from16 v21, v8

    move-object/from16 v23, v2

    invoke-direct/range {v13 .. v24}, Le/m/a/c/q1/m;-><init>(IIIIIIIJLe/m/a/c/q1/m$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    move/from16 p2, v5

    goto/16 :goto_f

    :cond_1b
    if-ne v6, v12, :cond_1c

    .line 116
    new-instance v6, Le/m/a/c/q1/t;

    invoke-direct {v6, v3}, Le/m/a/c/q1/t;-><init>(I)V

    .line 117
    iget-object v7, v6, Le/m/a/c/q1/t;->a:[B

    .line 118
    invoke-virtual {v1, v7, v4, v3, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    const/4 v3, 0x4

    .line 119
    invoke-virtual {v6, v3}, Le/m/a/c/q1/t;->D(I)V

    .line 120
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v14

    .line 121
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v3

    const-string v7, "US-ASCII"

    .line 122
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Le/m/a/c/q1/t;->o(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    .line 123
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v3

    .line 124
    invoke-virtual {v6, v3}, Le/m/a/c/q1/t;->n(I)Ljava/lang/String;

    move-result-object v16

    .line 125
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v17

    .line 126
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v18

    .line 127
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v19

    .line 128
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v20

    .line 129
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v3

    .line 130
    new-array v7, v3, [B

    .line 131
    iget-object v8, v6, Le/m/a/c/q1/t;->a:[B

    iget v9, v6, Le/m/a/c/q1/t;->b:I

    invoke-static {v8, v9, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v8, v6, Le/m/a/c/q1/t;->b:I

    add-int/2addr v8, v3

    iput v8, v6, Le/m/a/c/q1/t;->b:I

    .line 133
    new-instance v3, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-object v13, v3

    move-object/from16 v21, v7

    invoke-direct/range {v13 .. v21}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 134
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Le/m/a/c/q1/m;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Le/m/a/c/q1/m;->f(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v24

    .line 137
    new-instance v3, Le/m/a/c/q1/m;

    iget v14, v2, Le/m/a/c/q1/m;->a:I

    iget v15, v2, Le/m/a/c/q1/m;->b:I

    iget v6, v2, Le/m/a/c/q1/m;->c:I

    iget v7, v2, Le/m/a/c/q1/m;->d:I

    iget v8, v2, Le/m/a/c/q1/m;->e:I

    iget v9, v2, Le/m/a/c/q1/m;->g:I

    iget v10, v2, Le/m/a/c/q1/m;->h:I

    move/from16 p2, v5

    iget-wide v4, v2, Le/m/a/c/q1/m;->j:J

    iget-object v2, v2, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    move-object v13, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move-wide/from16 v21, v4

    move-object/from16 v23, v2

    invoke-direct/range {v13 .. v24}, Le/m/a/c/q1/m;-><init>(IIIIIIIJLe/m/a/c/q1/m$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_f
    move-object v2, v3

    goto :goto_10

    :cond_1c
    move/from16 p2, v5

    .line 138
    invoke-virtual {v1, v3}, Le/m/a/c/g1/e;->i(I)V

    .line 139
    :goto_10
    sget v3, Le/m/a/c/q1/d0;->a:I

    .line 140
    iput-object v2, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    move/from16 v3, p2

    const/4 v4, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x7

    goto/16 :goto_d

    .line 141
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 142
    :cond_1e
    iget-object v1, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    .line 143
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    iget v1, v1, Le/m/a/c/q1/m;->c:I

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Le/m/a/c/g1/y/c;->i:I

    .line 145
    iget-object v1, v0, Le/m/a/c/g1/y/c;->e:Le/m/a/c/g1/s;

    .line 146
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 147
    iget-object v2, v0, Le/m/a/c/g1/y/c;->h:Le/m/a/c/q1/m;

    iget-object v3, v0, Le/m/a/c/g1/y/c;->a:[B

    iget-object v4, v0, Le/m/a/c/g1/y/c;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 148
    invoke-virtual {v2, v3, v4}, Le/m/a/c/q1/m;->e([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    const/4 v2, 0x4

    .line 149
    iput v2, v0, Le/m/a/c/g1/y/c;->f:I

    const/4 v4, 0x0

    return v4

    :cond_1f
    move v2, v9

    new-array v8, v2, [B

    .line 150
    invoke-virtual {v1, v8, v4, v2, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 151
    aget-byte v1, v8, v4

    int-to-long v1, v1

    const-wide/16 v9, 0xff

    and-long/2addr v1, v9

    const/16 v4, 0x18

    shl-long/2addr v1, v4

    aget-byte v3, v8, v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    aget-byte v3, v8, v5

    int-to-long v3, v3

    and-long/2addr v3, v9

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v4, v8, v3

    int-to-long v4, v4

    and-long/2addr v4, v9

    or-long/2addr v1, v4

    const-wide/32 v4, 0x664c6143

    cmp-long v1, v1, v4

    if-nez v1, :cond_20

    .line 152
    iput v3, v0, Le/m/a/c/g1/y/c;->f:I

    const/4 v2, 0x0

    return v2

    .line 153
    :cond_20
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Failed to read FLAC stream marker."

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move v2, v4

    .line 154
    iget-object v3, v0, Le/m/a/c/g1/y/c;->a:[B

    array-length v4, v3

    .line 155
    invoke-virtual {v1, v3, v2, v4, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 156
    iput v2, v1, Le/m/a/c/g1/e;->f:I

    .line 157
    iput v5, v0, Le/m/a/c/g1/y/c;->f:I

    return v2

    :cond_22
    move v2, v4

    .line 158
    iput v2, v1, Le/m/a/c/g1/e;->f:I

    .line 159
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v4

    .line 160
    invoke-static {v1, v3}, Ln3/g0/y;->A1(Le/m/a/c/g1/e;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v6

    .line 161
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v7

    sub-long/2addr v7, v4

    long-to-int v4, v7

    .line 162
    invoke-virtual {v1, v4}, Le/m/a/c/g1/e;->i(I)V

    .line 163
    iput-object v6, v0, Le/m/a/c/g1/y/c;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 164
    iput v3, v0, Le/m/a/c/g1/y/c;->f:I

    return v2
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/y/c;->d:Le/m/a/c/g1/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/y/c;->e:Le/m/a/c/g1/s;

    .line 3
    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->A1(Le/m/a/c/g1/e;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2
    invoke-virtual {p1, v2, v0, v1, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 3
    aget-byte p1, v2, v0

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    const/4 p1, 0x2

    const/4 v1, 0x1

    aget-byte v7, v2, v1

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x3

    aget-byte p1, v2, p1

    int-to-long v8, p1

    and-long/2addr v8, v5

    const/16 p1, 0x8

    shl-long/2addr v8, p1

    or-long/2addr v3, v8

    aget-byte p1, v2, v7

    int-to-long v7, p1

    and-long/2addr v5, v7

    or-long v2, v3, v5

    const-wide/32 v4, 0x664c6143

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
