.class public final Le/m/a/c/g1/a0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/a0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/a0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/c/g1/a0/d;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/a0/d;Le/m/a/c/g1/a0/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILe/m/a/c/g1/e;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1
    iget-object v11, v2, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0xa3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v4, :cond_9

    if-eq v0, v7, :cond_9

    const/16 v4, 0xa5

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4255

    if-eq v0, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v0, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v0, v4, :cond_0

    .line 3
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Le/m/a/c/g1/a0/d$c;->u:[B

    .line 4
    invoke-virtual {v3, v4, v9, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    goto/16 :goto_e

    .line 5
    :cond_0
    new-instance v1, Le/m/a/c/m0;

    const-string v3, "Unexpected id: "

    invoke-static {v3, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Le/m/a/c/g1/a0/d$c;->j:[B

    .line 7
    invoke-virtual {v3, v4, v9, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    goto/16 :goto_e

    .line 8
    :cond_2
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->i:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 9
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->i:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    rsub-int/lit8 v4, v1, 0x4

    .line 10
    invoke-virtual {v3, v0, v4, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 11
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->i:Le/m/a/c/q1/t;

    invoke-virtual {v0, v9}, Le/m/a/c/q1/t;->C(I)V

    .line 12
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->i:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v11, Le/m/a/c/g1/a0/d;->w:I

    goto/16 :goto_e

    .line 13
    :cond_3
    new-array v0, v1, [B

    .line 14
    invoke-virtual {v3, v0, v9, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 15
    iget-object v1, v11, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    new-instance v3, Le/m/a/c/g1/s$a;

    invoke-direct {v3, v8, v0, v9, v9}, Le/m/a/c/g1/s$a;-><init>(I[BII)V

    iput-object v3, v1, Le/m/a/c/g1/a0/d$c;->i:Le/m/a/c/g1/s$a;

    goto/16 :goto_e

    .line 16
    :cond_4
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Le/m/a/c/g1/a0/d$c;->h:[B

    .line 17
    invoke-virtual {v3, v4, v9, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    goto/16 :goto_e

    .line 18
    :cond_5
    iget v0, v11, Le/m/a/c/g1/a0/d;->G:I

    if-eq v0, v6, :cond_6

    goto/16 :goto_e

    .line 19
    :cond_6
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    iget v4, v11, Le/m/a/c/g1/a0/d;->M:I

    .line 20
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/g1/a0/d$c;

    iget v4, v11, Le/m/a/c/g1/a0/d;->P:I

    if-ne v4, v5, :cond_8

    .line 21
    iget-object v0, v0, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v4, "V_VP9"

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->n:Le/m/a/c/q1/t;

    .line 24
    iget-object v4, v0, Le/m/a/c/q1/t;->a:[B

    array-length v5, v4

    if-ge v5, v1, :cond_7

    .line 25
    new-array v4, v1, [B

    :cond_7
    invoke-virtual {v0, v4, v1}, Le/m/a/c/q1/t;->A([BI)V

    .line 26
    iget-object v0, v11, Le/m/a/c/g1/a0/d;->n:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    .line 27
    invoke-virtual {v3, v0, v9, v1, v9}, Le/m/a/c/g1/e;->h([BIIZ)Z

    goto/16 :goto_e

    .line 28
    :cond_8
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e;->i(I)V

    goto/16 :goto_e

    .line 29
    :cond_9
    iget v4, v11, Le/m/a/c/g1/a0/d;->G:I

    const/16 v10, 0x8

    if-nez v4, :cond_a

    .line 30
    iget-object v4, v11, Le/m/a/c/g1/a0/d;->b:Le/m/a/c/g1/a0/f;

    invoke-virtual {v4, v3, v9, v8, v10}, Le/m/a/c/g1/a0/f;->c(Le/m/a/c/g1/e;ZZI)J

    move-result-wide v12

    long-to-int v4, v12

    iput v4, v11, Le/m/a/c/g1/a0/d;->M:I

    .line 31
    iget-object v4, v11, Le/m/a/c/g1/a0/d;->b:Le/m/a/c/g1/a0/f;

    .line 32
    iget v4, v4, Le/m/a/c/g1/a0/f;->c:I

    .line 33
    iput v4, v11, Le/m/a/c/g1/a0/d;->N:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    iput-wide v12, v11, Le/m/a/c/g1/a0/d;->I:J

    .line 35
    iput v8, v11, Le/m/a/c/g1/a0/d;->G:I

    .line 36
    iget-object v4, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v4}, Le/m/a/c/q1/t;->x()V

    .line 37
    :cond_a
    iget-object v4, v11, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    iget v12, v11, Le/m/a/c/g1/a0/d;->M:I

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Le/m/a/c/g1/a0/d$c;

    if-nez v12, :cond_b

    .line 38
    iget v0, v11, Le/m/a/c/g1/a0/d;->N:I

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Le/m/a/c/g1/e;->i(I)V

    .line 39
    iput v9, v11, Le/m/a/c/g1/a0/d;->G:I

    goto/16 :goto_e

    .line 40
    :cond_b
    iget v4, v11, Le/m/a/c/g1/a0/d;->G:I

    if-ne v4, v8, :cond_1e

    const/4 v4, 0x3

    .line 41
    invoke-virtual {v11, v3, v4}, Le/m/a/c/g1/a0/d;->f(Le/m/a/c/g1/e;I)V

    .line 42
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    aget-byte v7, v7, v6

    and-int/lit8 v7, v7, 0x6

    shr-int/2addr v7, v8

    const/16 v13, 0xff

    if-nez v7, :cond_c

    .line 43
    iput v8, v11, Le/m/a/c/g1/a0/d;->K:I

    .line 44
    iget-object v5, v11, Le/m/a/c/g1/a0/d;->L:[I

    invoke-static {v5, v8}, Le/m/a/c/g1/a0/d;->c([II)[I

    move-result-object v5

    iput-object v5, v11, Le/m/a/c/g1/a0/d;->L:[I

    .line 45
    iget v6, v11, Le/m/a/c/g1/a0/d;->N:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v4

    aput v1, v5, v9

    goto/16 :goto_6

    .line 46
    :cond_c
    invoke-virtual {v11, v3, v5}, Le/m/a/c/g1/a0/d;->f(Le/m/a/c/g1/e;I)V

    .line 47
    iget-object v14, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v14, v14, Le/m/a/c/q1/t;->a:[B

    aget-byte v14, v14, v4

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v11, Le/m/a/c/g1/a0/d;->K:I

    .line 48
    iget-object v15, v11, Le/m/a/c/g1/a0/d;->L:[I

    invoke-static {v15, v14}, Le/m/a/c/g1/a0/d;->c([II)[I

    move-result-object v14

    iput-object v14, v11, Le/m/a/c/g1/a0/d;->L:[I

    if-ne v7, v6, :cond_d

    .line 49
    iget v4, v11, Le/m/a/c/g1/a0/d;->N:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v5

    iget v4, v11, Le/m/a/c/g1/a0/d;->K:I

    div-int/2addr v1, v4

    .line 50
    invoke-static {v14, v9, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_d
    if-ne v7, v8, :cond_10

    move v4, v9

    move v6, v4

    .line 51
    :goto_0
    iget v7, v11, Le/m/a/c/g1/a0/d;->K:I

    add-int/lit8 v14, v7, -0x1

    if-ge v4, v14, :cond_f

    .line 52
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->L:[I

    aput v9, v7, v4

    :cond_e
    add-int/2addr v5, v8

    .line 53
    invoke-virtual {v11, v3, v5}, Le/m/a/c/g1/a0/d;->f(Le/m/a/c/g1/e;I)V

    .line 54
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v14, v5, -0x1

    aget-byte v7, v7, v14

    and-int/2addr v7, v13

    .line 55
    iget-object v14, v11, Le/m/a/c/g1/a0/d;->L:[I

    aget v15, v14, v4

    add-int/2addr v15, v7

    aput v15, v14, v4

    if-eq v7, v13, :cond_e

    .line 56
    aget v7, v14, v4

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_f
    iget-object v4, v11, Le/m/a/c/g1/a0/d;->L:[I

    sub-int/2addr v7, v8

    iget v9, v11, Le/m/a/c/g1/a0/d;->N:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v5

    sub-int/2addr v1, v6

    aput v1, v4, v7

    goto/16 :goto_6

    :cond_10
    if-ne v7, v4, :cond_1d

    move v4, v9

    move v6, v4

    .line 58
    :goto_1
    iget v7, v11, Le/m/a/c/g1/a0/d;->K:I

    add-int/lit8 v14, v7, -0x1

    if-ge v9, v14, :cond_18

    .line 59
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->L:[I

    aput v6, v7, v9

    add-int/lit8 v5, v5, 0x1

    .line 60
    invoke-virtual {v11, v3, v5}, Le/m/a/c/g1/a0/d;->f(Le/m/a/c/g1/e;I)V

    .line 61
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v14, v5, -0x1

    aget-byte v7, v7, v14

    if-eqz v7, :cond_17

    const-wide/16 v15, 0x0

    :goto_2
    if-ge v6, v10, :cond_13

    rsub-int/lit8 v7, v6, 0x7

    shl-int v7, v8, v7

    .line 62
    iget-object v8, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v8, v8, Le/m/a/c/q1/t;->a:[B

    aget-byte v8, v8, v14

    and-int/2addr v8, v7

    if-eqz v8, :cond_12

    add-int/2addr v5, v6

    .line 63
    invoke-virtual {v11, v3, v5}, Le/m/a/c/g1/a0/d;->f(Le/m/a/c/g1/e;I)V

    .line 64
    iget-object v8, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v8, v8, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v15, v14, 0x1

    aget-byte v8, v8, v14

    and-int/2addr v8, v13

    not-int v7, v7

    and-int/2addr v7, v8

    int-to-long v7, v7

    :goto_3
    if-ge v15, v5, :cond_11

    shl-long/2addr v7, v10

    .line 65
    iget-object v14, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v14, v14, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v14, v14, v15

    and-int/2addr v13, v14

    int-to-long v13, v13

    or-long/2addr v7, v13

    const/16 v13, 0xff

    move/from16 v15, v16

    goto :goto_3

    :cond_11
    if-lez v9, :cond_14

    mul-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x6

    const-wide/16 v13, 0x1

    shl-long v15, v13, v6

    sub-long/2addr v15, v13

    sub-long v15, v7, v15

    goto :goto_4

    :cond_12
    add-int/lit8 v6, v6, 0x1

    const/16 v13, 0xff

    const/4 v8, 0x1

    goto :goto_2

    :cond_13
    :goto_4
    move-wide v7, v15

    :cond_14
    const-wide/32 v13, -0x80000000

    cmp-long v6, v7, v13

    if-ltz v6, :cond_16

    const-wide/32 v13, 0x7fffffff

    cmp-long v6, v7, v13

    if-gtz v6, :cond_16

    long-to-int v6, v7

    .line 66
    iget-object v7, v11, Le/m/a/c/g1/a0/d;->L:[I

    if-nez v9, :cond_15

    goto :goto_5

    :cond_15
    add-int/lit8 v8, v9, -0x1

    aget v8, v7, v8

    add-int/2addr v6, v8

    :goto_5
    aput v6, v7, v9

    .line 67
    aget v6, v7, v9

    add-int/2addr v4, v6

    add-int/lit8 v9, v9, 0x1

    const/16 v13, 0xff

    const/4 v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 68
    :cond_16
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_17
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_18
    iget-object v6, v11, Le/m/a/c/g1/a0/d;->L:[I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget v9, v11, Le/m/a/c/g1/a0/d;->N:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v5

    sub-int/2addr v1, v4

    aput v1, v6, v7

    .line 71
    :goto_6
    iget-object v1, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    const/4 v4, 0x0

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    .line 72
    iget-wide v4, v11, Le/m/a/c/g1/a0/d;->B:J

    int-to-long v6, v1

    invoke-virtual {v11, v6, v7}, Le/m/a/c/g1/a0/d;->j(J)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v11, Le/m/a/c/g1/a0/d;->H:J

    .line 73
    iget-object v1, v11, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_19

    const/4 v5, 0x1

    goto :goto_7

    :cond_19
    const/4 v5, 0x0

    .line 74
    :goto_7
    iget v6, v12, Le/m/a/c/g1/a0/d$c;->d:I

    if-eq v6, v4, :cond_1b

    const/16 v6, 0xa3

    if-ne v0, v6, :cond_1a

    aget-byte v1, v1, v4

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v1, 0x0

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v1, 0x1

    :goto_9
    if-eqz v5, :cond_1c

    const/high16 v4, -0x80000000

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_a
    or-int/2addr v1, v4

    .line 75
    iput v1, v11, Le/m/a/c/g1/a0/d;->O:I

    const/4 v1, 0x2

    .line 76
    iput v1, v11, Le/m/a/c/g1/a0/d;->G:I

    const/4 v1, 0x0

    .line 77
    iput v1, v11, Le/m/a/c/g1/a0/d;->J:I

    const/16 v7, 0xa3

    goto :goto_b

    .line 78
    :cond_1d
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Unexpected lacing value: "

    invoke-static {v1, v7}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_b
    if-ne v0, v7, :cond_20

    .line 79
    :goto_c
    iget v0, v11, Le/m/a/c/g1/a0/d;->J:I

    iget v1, v11, Le/m/a/c/g1/a0/d;->K:I

    if-ge v0, v1, :cond_1f

    .line 80
    iget-object v1, v11, Le/m/a/c/g1/a0/d;->L:[I

    aget v0, v1, v0

    invoke-virtual {v11, v3, v12, v0}, Le/m/a/c/g1/a0/d;->k(Le/m/a/c/g1/e;Le/m/a/c/g1/a0/d$c;I)I

    move-result v9

    .line 81
    iget-wide v0, v11, Le/m/a/c/g1/a0/d;->H:J

    iget v4, v11, Le/m/a/c/g1/a0/d;->J:I

    iget v5, v12, Le/m/a/c/g1/a0/d$c;->e:I

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v6, v4, v0

    .line 82
    iget v8, v11, Le/m/a/c/g1/a0/d;->O:I

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v4 .. v10}, Le/m/a/c/g1/a0/d;->b(Le/m/a/c/g1/a0/d$c;JIII)V

    .line 83
    iget v0, v11, Le/m/a/c/g1/a0/d;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Le/m/a/c/g1/a0/d;->J:I

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    .line 84
    iput v0, v11, Le/m/a/c/g1/a0/d;->G:I

    goto :goto_e

    .line 85
    :cond_20
    :goto_d
    iget v0, v11, Le/m/a/c/g1/a0/d;->J:I

    iget v1, v11, Le/m/a/c/g1/a0/d;->K:I

    if-ge v0, v1, :cond_21

    .line 86
    iget-object v1, v11, Le/m/a/c/g1/a0/d;->L:[I

    aget v4, v1, v0

    .line 87
    invoke-virtual {v11, v3, v12, v4}, Le/m/a/c/g1/a0/d;->k(Le/m/a/c/g1/e;Le/m/a/c/g1/a0/d$c;I)I

    move-result v4

    aput v4, v1, v0

    .line 88
    iget v0, v11, Le/m/a/c/g1/a0/d;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Le/m/a/c/g1/a0/d;->J:I

    goto :goto_d

    :cond_21
    :goto_e
    return-void
.end method

.method public b(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->L:F

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->K:F

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->J:F

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->I:F

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->H:F

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->G:F

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->F:F

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->E:F

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->D:F

    goto :goto_0

    .line 12
    :pswitch_9
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->C:F

    goto :goto_0

    .line 13
    :pswitch_a
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->t:F

    goto :goto_0

    .line 14
    :pswitch_b
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->s:F

    goto :goto_0

    .line 15
    :pswitch_c
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-float p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->r:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 16
    iput-wide p1, v0, Le/m/a/c/g1/a0/d;->s:J

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    double-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->O:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x2

    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public d(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5031

    const-string v2, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iput-wide p2, v0, Le/m/a/c/g1/a0/d;->r:J

    goto/16 :goto_0

    .line 4
    :sswitch_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->e:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v5, p1, Le/m/a/c/g1/a0/d$c;->q:I

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v6, p1, Le/m/a/c/g1/a0/d$c;->q:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v7, p1, Le/m/a/c/g1/a0/d$c;->q:I

    goto/16 :goto_0

    .line 8
    :cond_3
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v1, p1, Le/m/a/c/g1/a0/d$c;->q:I

    goto/16 :goto_0

    .line 9
    :sswitch_3
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->N:I

    goto/16 :goto_0

    .line 10
    :sswitch_4
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-wide p2, p1, Le/m/a/c/g1/a0/d$c;->Q:J

    goto/16 :goto_0

    .line 11
    :sswitch_5
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-wide p2, p1, Le/m/a/c/g1/a0/d$c;->P:J

    goto/16 :goto_0

    .line 12
    :sswitch_6
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->f:I

    goto/16 :goto_0

    .line 13
    :sswitch_7
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    cmp-long p2, p2, v3

    if-nez p2, :cond_4

    move v1, v7

    :cond_4
    iput-boolean v1, p1, Le/m/a/c/g1/a0/d$c;->S:Z

    goto/16 :goto_0

    .line 14
    :sswitch_8
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->o:I

    goto/16 :goto_0

    .line 15
    :sswitch_9
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->p:I

    goto/16 :goto_0

    .line 16
    :sswitch_a
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->n:I

    goto/16 :goto_0

    :sswitch_b
    long-to-int p1, p2

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v5, :cond_6

    const/16 p2, 0xf

    if-eq p1, p2, :cond_5

    goto/16 :goto_0

    .line 17
    :cond_5
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v5, p1, Le/m/a/c/g1/a0/d$c;->v:I

    goto/16 :goto_0

    .line 18
    :cond_6
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v7, p1, Le/m/a/c/g1/a0/d$c;->v:I

    goto/16 :goto_0

    .line 19
    :cond_7
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v6, p1, Le/m/a/c/g1/a0/d$c;->v:I

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v1, p1, Le/m/a/c/g1/a0/d$c;->v:I

    goto/16 :goto_0

    .line 21
    :sswitch_c
    iget-wide v1, v0, Le/m/a/c/g1/a0/d;->q:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Le/m/a/c/g1/a0/d;->x:J

    goto/16 :goto_0

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 22
    :cond_9
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "AESSettingsCipherMode "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 23
    :cond_a
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "ContentEncAlgo "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 24
    :cond_b
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "EBMLReadVersion "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v3

    if-ltz p1, :cond_c

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_c

    goto/16 :goto_0

    .line 25
    :cond_c
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "DocTypeReadVersion "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 26
    :cond_d
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "ContentCompAlgo "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :sswitch_12
    iput-boolean v7, v0, Le/m/a/c/g1/a0/d;->Q:Z

    goto/16 :goto_0

    .line 28
    :sswitch_13
    iget-boolean p1, v0, Le/m/a/c/g1/a0/d;->E:Z

    if-nez p1, :cond_1a

    .line 29
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    invoke-virtual {p1, p2, p3}, Le/m/a/c/q1/o;->a(J)V

    .line 30
    iput-boolean v7, v0, Le/m/a/c/g1/a0/d;->E:Z

    goto/16 :goto_0

    :sswitch_14
    long-to-int p1, p2

    .line 31
    iput p1, v0, Le/m/a/c/g1/a0/d;->P:I

    goto/16 :goto_0

    .line 32
    :sswitch_15
    invoke-virtual {v0, p2, p3}, Le/m/a/c/g1/a0/d;->j(J)J

    move-result-wide p1

    iput-wide p1, v0, Le/m/a/c/g1/a0/d;->B:J

    goto/16 :goto_0

    .line 33
    :sswitch_16
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->c:I

    goto/16 :goto_0

    .line 34
    :sswitch_17
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->m:I

    goto/16 :goto_0

    .line 35
    :sswitch_18
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    invoke-virtual {v0, p2, p3}, Le/m/a/c/g1/a0/d;->j(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Le/m/a/c/q1/o;->a(J)V

    goto/16 :goto_0

    .line 36
    :sswitch_19
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->l:I

    goto/16 :goto_0

    .line 37
    :sswitch_1a
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->M:I

    goto/16 :goto_0

    .line 38
    :sswitch_1b
    invoke-virtual {v0, p2, p3}, Le/m/a/c/g1/a0/d;->j(J)J

    move-result-wide p1

    iput-wide p1, v0, Le/m/a/c/g1/a0/d;->I:J

    goto/16 :goto_0

    .line 39
    :sswitch_1c
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    cmp-long p2, p2, v3

    if-nez p2, :cond_e

    move v1, v7

    :cond_e
    iput-boolean v1, p1, Le/m/a/c/g1/a0/d$c;->T:Z

    goto/16 :goto_0

    .line 40
    :sswitch_1d
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->d:I

    goto/16 :goto_0

    .line 41
    :pswitch_0
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->B:I

    goto/16 :goto_0

    .line 42
    :pswitch_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    long-to-int p2, p2

    iput p2, p1, Le/m/a/c/g1/a0/d$c;->A:I

    goto/16 :goto_0

    .line 43
    :pswitch_2
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-boolean v7, p1, Le/m/a/c/g1/a0/d$c;->w:Z

    long-to-int p2, p2

    if-eq p2, v7, :cond_11

    const/16 p3, 0x9

    if-eq p2, p3, :cond_10

    const/4 p3, 0x4

    if-eq p2, p3, :cond_f

    const/4 p3, 0x5

    if-eq p2, p3, :cond_f

    if-eq p2, v2, :cond_f

    if-eq p2, v1, :cond_f

    goto :goto_0

    .line 44
    :cond_f
    iput v6, p1, Le/m/a/c/g1/a0/d$c;->x:I

    goto :goto_0

    .line 45
    :cond_10
    iput v2, p1, Le/m/a/c/g1/a0/d$c;->x:I

    goto :goto_0

    .line 46
    :cond_11
    iput v7, p1, Le/m/a/c/g1/a0/d$c;->x:I

    goto :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_14

    const/16 p2, 0x10

    if-eq p1, p2, :cond_13

    const/16 p2, 0x12

    if-eq p1, p2, :cond_12

    if-eq p1, v2, :cond_14

    if-eq p1, v1, :cond_14

    goto :goto_0

    .line 47
    :cond_12
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v1, p1, Le/m/a/c/g1/a0/d$c;->y:I

    goto :goto_0

    .line 48
    :cond_13
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v2, p1, Le/m/a/c/g1/a0/d$c;->y:I

    goto :goto_0

    .line 49
    :cond_14
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v5, p1, Le/m/a/c/g1/a0/d$c;->y:I

    goto :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_16

    if-eq p1, v6, :cond_15

    goto :goto_0

    .line 50
    :cond_15
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v7, p1, Le/m/a/c/g1/a0/d$c;->z:I

    goto :goto_0

    .line 51
    :cond_16
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput v6, p1, Le/m/a/c/g1/a0/d$c;->z:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 52
    :cond_18
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "ContentEncodingScope "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 53
    :cond_1b
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "ContentEncodingOrder "

    invoke-static {v0, p2, p3, v2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1d
        0x88 -> :sswitch_1c
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_1a
        0xb0 -> :sswitch_19
        0xb3 -> :sswitch_18
        0xba -> :sswitch_17
        0xd7 -> :sswitch_16
        0xe7 -> :sswitch_15
        0xee -> :sswitch_14
        0xf1 -> :sswitch_13
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    if-eq p1, v1, :cond_b

    const/16 v1, 0xae

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-boolean p1, v0, Le/m/a/c/g1/a0/d;->v:Z

    if-nez p1, :cond_c

    .line 4
    iget-boolean p1, v0, Le/m/a/c/g1/a0/d;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Le/m/a/c/g1/a0/d;->z:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v4, v0, Le/m/a/c/g1/a0/d;->y:Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->a0:Le/m/a/c/g1/i;

    new-instance p2, Le/m/a/c/g1/q$b;

    iget-wide p3, v0, Le/m/a/c/g1/a0/d;->t:J

    const-wide/16 v1, 0x0

    .line 7
    invoke-direct {p2, p3, p4, v1, v2}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 8
    invoke-interface {p1, p2}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 9
    iput-boolean v4, v0, Le/m/a/c/g1/a0/d;->v:Z

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Le/m/a/c/q1/o;

    invoke-direct {p1}, Le/m/a/c/q1/o;-><init>()V

    iput-object p1, v0, Le/m/a/c/g1/a0/d;->C:Le/m/a/c/q1/o;

    .line 11
    new-instance p1, Le/m/a/c/q1/o;

    invoke-direct {p1}, Le/m/a/c/q1/o;-><init>()V

    iput-object p1, v0, Le/m/a/c/g1/a0/d;->D:Le/m/a/c/q1/o;

    goto :goto_1

    .line 12
    :cond_3
    iget-wide v4, v0, Le/m/a/c/g1/a0/d;->q:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    cmp-long p1, v4, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    :goto_0
    iput-wide p2, v0, Le/m/a/c/g1/a0/d;->q:J

    .line 15
    iput-wide p4, v0, Le/m/a/c/g1/a0/d;->p:J

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-boolean v4, p1, Le/m/a/c/g1/a0/d$c;->w:Z

    goto :goto_1

    .line 17
    :cond_7
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-boolean v4, p1, Le/m/a/c/g1/a0/d$c;->g:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 18
    iput p1, v0, Le/m/a/c/g1/a0/d;->w:I

    .line 19
    iput-wide v2, v0, Le/m/a/c/g1/a0/d;->x:J

    goto :goto_1

    .line 20
    :cond_9
    iput-boolean v2, v0, Le/m/a/c/g1/a0/d;->E:Z

    goto :goto_1

    .line 21
    :cond_a
    new-instance p1, Le/m/a/c/g1/a0/d$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/m/a/c/g1/a0/d$c;-><init>(Le/m/a/c/g1/a0/d$a;)V

    iput-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    goto :goto_1

    .line 22
    :cond_b
    iput-boolean v2, v0, Le/m/a/c/g1/a0/d;->Q:Z

    :cond_c
    :goto_1
    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d$b;->a:Le/m/a/c/g1/a0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    if-eq p1, v1, :cond_4

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_2

    const/16 v1, 0x536e

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    .line 4
    iput-object p2, p1, Le/m/a/c/g1/a0/d$c;->U:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-object p2, p1, Le/m/a/c/g1/a0/d$c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Le/m/a/c/m0;

    const-string v0, "DocType "

    const-string v1, " not supported"

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    iget-object p1, v0, Le/m/a/c/g1/a0/d;->u:Le/m/a/c/g1/a0/d$c;

    iput-object p2, p1, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
