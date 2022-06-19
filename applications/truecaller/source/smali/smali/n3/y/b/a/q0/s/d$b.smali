.class public final Ln3/y/b/a/q0/s/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/s/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/b/a/q0/s/d;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/s/d;Ln3/y/b/a/q0/s/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILn3/y/b/a/q0/d;)V
    .locals 18
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
    iget-object v4, v2, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa1

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0xa3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v5, :cond_9

    if-eq v0, v8, :cond_9

    const/16 v5, 0xa5

    if-eq v0, v5, :cond_5

    const/16 v5, 0x4255

    if-eq v0, v5, :cond_4

    const/16 v5, 0x47e2

    if-eq v0, v5, :cond_3

    const/16 v5, 0x53ab

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63a2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7672

    if-ne v0, v5, :cond_0

    .line 3
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Ln3/y/b/a/q0/s/d$c;->u:[B

    .line 4
    invoke-virtual {v3, v4, v9, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 5
    :cond_0
    new-instance v1, Ln3/y/b/a/c0;

    const/16 v3, 0x1a

    const-string v4, "Unexpected id: "

    invoke-static {v3, v4, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Ln3/y/b/a/q0/s/d$c;->j:[B

    .line 7
    invoke-virtual {v3, v4, v9, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 8
    :cond_2
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->i:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 9
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->i:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    rsub-int/lit8 v5, v1, 0x4

    .line 10
    invoke-virtual {v3, v0, v5, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 11
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->i:Ln3/y/b/a/x0/m;

    invoke-virtual {v0, v9}, Ln3/y/b/a/x0/m;->z(I)V

    .line 12
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->i:Ln3/y/b/a/x0/m;

    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v4, Ln3/y/b/a/q0/s/d;->w:I

    goto/16 :goto_d

    .line 13
    :cond_3
    new-array v0, v1, [B

    .line 14
    invoke-virtual {v3, v0, v9, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 15
    iget-object v1, v4, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    new-instance v3, Ln3/y/b/a/q0/p$a;

    invoke-direct {v3, v10, v0, v9, v9}, Ln3/y/b/a/q0/p$a;-><init>(I[BII)V

    iput-object v3, v1, Ln3/y/b/a/q0/s/d$c;->i:Ln3/y/b/a/q0/p$a;

    goto/16 :goto_d

    .line 16
    :cond_4
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Ln3/y/b/a/q0/s/d$c;->h:[B

    .line 17
    invoke-virtual {v3, v4, v9, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 18
    :cond_5
    iget v0, v4, Ln3/y/b/a/q0/s/d;->F:I

    if-eq v0, v7, :cond_6

    goto/16 :goto_d

    .line 19
    :cond_6
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    iget v5, v4, Ln3/y/b/a/q0/s/d;->L:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/q0/s/d$c;

    iget v5, v4, Ln3/y/b/a/q0/s/d;->O:I

    if-ne v5, v6, :cond_8

    .line 20
    iget-object v0, v0, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v5, "V_VP9"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->n:Ln3/y/b/a/x0/m;

    .line 22
    iget-object v5, v0, Ln3/y/b/a/x0/m;->a:[B

    array-length v6, v5

    if-ge v6, v1, :cond_7

    .line 23
    new-array v5, v1, [B

    :cond_7
    invoke-virtual {v0, v5, v1}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 24
    iget-object v0, v4, Ln3/y/b/a/q0/s/d;->n:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    .line 25
    invoke-virtual {v3, v0, v9, v1, v9}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 26
    :cond_8
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/d;->h(I)V

    goto/16 :goto_d

    .line 27
    :cond_9
    iget v5, v4, Ln3/y/b/a/q0/s/d;->F:I

    const/16 v11, 0x8

    if-nez v5, :cond_a

    .line 28
    iget-object v5, v4, Ln3/y/b/a/q0/s/d;->b:Ln3/y/b/a/q0/s/f;

    invoke-virtual {v5, v3, v9, v10, v11}, Ln3/y/b/a/q0/s/f;->c(Ln3/y/b/a/q0/d;ZZI)J

    move-result-wide v12

    long-to-int v5, v12

    iput v5, v4, Ln3/y/b/a/q0/s/d;->L:I

    .line 29
    iget-object v5, v4, Ln3/y/b/a/q0/s/d;->b:Ln3/y/b/a/q0/s/f;

    .line 30
    iget v5, v5, Ln3/y/b/a/q0/s/f;->c:I

    .line 31
    iput v5, v4, Ln3/y/b/a/q0/s/d;->M:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    iput-wide v12, v4, Ln3/y/b/a/q0/s/d;->H:J

    .line 33
    iput v10, v4, Ln3/y/b/a/q0/s/d;->F:I

    .line 34
    iget-object v5, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->u()V

    .line 35
    :cond_a
    iget-object v5, v4, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    iget v12, v4, Ln3/y/b/a/q0/s/d;->L:I

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/q0/s/d$c;

    if-nez v5, :cond_b

    .line 36
    iget v0, v4, Ln3/y/b/a/q0/s/d;->M:I

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Ln3/y/b/a/q0/d;->h(I)V

    .line 37
    iput v9, v4, Ln3/y/b/a/q0/s/d;->F:I

    goto/16 :goto_d

    .line 38
    :cond_b
    iget v12, v4, Ln3/y/b/a/q0/s/d;->F:I

    if-ne v12, v10, :cond_1f

    const/4 v12, 0x3

    .line 39
    invoke-virtual {v4, v3, v12}, Ln3/y/b/a/q0/s/d;->f(Ln3/y/b/a/q0/d;I)V

    .line 40
    iget-object v13, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v13, v13, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v13, v13, v7

    and-int/lit8 v13, v13, 0x6

    shr-int/2addr v13, v10

    const/16 v14, 0xff

    if-nez v13, :cond_c

    .line 41
    iput v10, v4, Ln3/y/b/a/q0/s/d;->J:I

    .line 42
    iget-object v6, v4, Ln3/y/b/a/q0/s/d;->K:[I

    invoke-static {v6, v10}, Ln3/y/b/a/q0/s/d;->e([II)[I

    move-result-object v6

    iput-object v6, v4, Ln3/y/b/a/q0/s/d;->K:[I

    .line 43
    iget v7, v4, Ln3/y/b/a/q0/s/d;->M:I

    sub-int/2addr v1, v7

    sub-int/2addr v1, v12

    aput v1, v6, v9

    goto/16 :goto_6

    :cond_c
    if-ne v0, v8, :cond_1e

    .line 44
    invoke-virtual {v4, v3, v6}, Ln3/y/b/a/q0/s/d;->f(Ln3/y/b/a/q0/d;I)V

    .line 45
    iget-object v8, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v8, v8, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v8, v8, v12

    and-int/2addr v8, v14

    add-int/2addr v8, v10

    iput v8, v4, Ln3/y/b/a/q0/s/d;->J:I

    .line 46
    iget-object v15, v4, Ln3/y/b/a/q0/s/d;->K:[I

    .line 47
    invoke-static {v15, v8}, Ln3/y/b/a/q0/s/d;->e([II)[I

    move-result-object v8

    iput-object v8, v4, Ln3/y/b/a/q0/s/d;->K:[I

    if-ne v13, v7, :cond_d

    .line 48
    iget v7, v4, Ln3/y/b/a/q0/s/d;->M:I

    sub-int/2addr v1, v7

    sub-int/2addr v1, v6

    iget v6, v4, Ln3/y/b/a/q0/s/d;->J:I

    div-int/2addr v1, v6

    .line 49
    invoke-static {v8, v9, v6, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_d
    if-ne v13, v10, :cond_10

    move v7, v9

    move v8, v7

    .line 50
    :goto_0
    iget v12, v4, Ln3/y/b/a/q0/s/d;->J:I

    add-int/lit8 v13, v12, -0x1

    if-ge v7, v13, :cond_f

    .line 51
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->K:[I

    aput v9, v12, v7

    :cond_e
    add-int/2addr v6, v10

    .line 52
    invoke-virtual {v4, v3, v6}, Ln3/y/b/a/q0/s/d;->f(Ln3/y/b/a/q0/d;I)V

    .line 53
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v12, v12, Ln3/y/b/a/x0/m;->a:[B

    add-int/lit8 v13, v6, -0x1

    aget-byte v12, v12, v13

    and-int/2addr v12, v14

    .line 54
    iget-object v13, v4, Ln3/y/b/a/q0/s/d;->K:[I

    aget v15, v13, v7

    add-int/2addr v15, v12

    aput v15, v13, v7

    if-eq v12, v14, :cond_e

    .line 55
    aget v12, v13, v7

    add-int/2addr v8, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    :cond_f
    iget-object v7, v4, Ln3/y/b/a/q0/s/d;->K:[I

    sub-int/2addr v12, v10

    iget v9, v4, Ln3/y/b/a/q0/s/d;->M:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v8

    aput v1, v7, v12

    goto/16 :goto_6

    :cond_10
    if-ne v13, v12, :cond_1d

    move v7, v9

    move v8, v7

    .line 57
    :goto_1
    iget v12, v4, Ln3/y/b/a/q0/s/d;->J:I

    add-int/lit8 v13, v12, -0x1

    if-ge v9, v13, :cond_18

    .line 58
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->K:[I

    aput v8, v12, v9

    add-int/lit8 v6, v6, 0x1

    .line 59
    invoke-virtual {v4, v3, v6}, Ln3/y/b/a/q0/s/d;->f(Ln3/y/b/a/q0/d;I)V

    .line 60
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v12, v12, Ln3/y/b/a/x0/m;->a:[B

    add-int/lit8 v13, v6, -0x1

    aget-byte v12, v12, v13

    if-eqz v12, :cond_17

    const-wide/16 v15, 0x0

    :goto_2
    if-ge v8, v11, :cond_13

    rsub-int/lit8 v12, v8, 0x7

    shl-int/2addr v10, v12

    .line 61
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v12, v12, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v12, v12, v13

    and-int/2addr v12, v10

    if-eqz v12, :cond_12

    add-int/2addr v6, v8

    .line 62
    invoke-virtual {v4, v3, v6}, Ln3/y/b/a/q0/s/d;->f(Ln3/y/b/a/q0/d;I)V

    .line 63
    iget-object v12, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v12, v12, Ln3/y/b/a/x0/m;->a:[B

    add-int/lit8 v15, v13, 0x1

    aget-byte v12, v12, v13

    and-int/2addr v12, v14

    not-int v10, v10

    and-int/2addr v10, v12

    int-to-long v12, v10

    :goto_3
    if-ge v15, v6, :cond_11

    shl-long/2addr v12, v11

    .line 64
    iget-object v10, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v10, v10, Ln3/y/b/a/x0/m;->a:[B

    add-int/lit8 v14, v15, 0x1

    aget-byte v10, v10, v15

    and-int/lit16 v10, v10, 0xff

    move/from16 v16, v14

    int-to-long v14, v10

    or-long/2addr v12, v14

    move/from16 v15, v16

    goto :goto_3

    :cond_11
    if-lez v9, :cond_14

    mul-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x6

    const-wide/16 v14, 0x1

    shl-long v16, v14, v8

    sub-long v16, v16, v14

    sub-long v15, v12, v16

    goto :goto_4

    :cond_12
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    const/16 v14, 0xff

    goto :goto_2

    :cond_13
    :goto_4
    move-wide v12, v15

    :cond_14
    const-wide/32 v14, -0x80000000

    cmp-long v8, v12, v14

    if-ltz v8, :cond_16

    const-wide/32 v14, 0x7fffffff

    cmp-long v8, v12, v14

    if-gtz v8, :cond_16

    long-to-int v8, v12

    .line 65
    iget-object v10, v4, Ln3/y/b/a/q0/s/d;->K:[I

    if-nez v9, :cond_15

    goto :goto_5

    :cond_15
    add-int/lit8 v12, v9, -0x1

    .line 66
    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_5
    aput v8, v10, v9

    .line 67
    aget v8, v10, v9

    add-int/2addr v7, v8

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v14, 0xff

    goto/16 :goto_1

    .line 68
    :cond_16
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_17
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_18
    iget-object v8, v4, Ln3/y/b/a/q0/s/d;->K:[I

    const/4 v10, 0x1

    sub-int/2addr v12, v10

    iget v9, v4, Ln3/y/b/a/q0/s/d;->M:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v7

    aput v1, v8, v12

    .line 71
    :goto_6
    iget-object v1, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    aget-byte v1, v1, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v6

    .line 72
    iget-wide v6, v4, Ln3/y/b/a/q0/s/d;->B:J

    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Ln3/y/b/a/q0/s/d;->k(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v4, Ln3/y/b/a/q0/s/d;->G:J

    .line 73
    iget-object v1, v4, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    and-int/2addr v7, v11

    if-ne v7, v11, :cond_19

    const/4 v7, 0x1

    goto :goto_7

    :cond_19
    const/4 v7, 0x0

    .line 74
    :goto_7
    iget v8, v5, Ln3/y/b/a/q0/s/d$c;->d:I

    if-eq v8, v6, :cond_1b

    const/16 v8, 0xa3

    if-ne v0, v8, :cond_1a

    aget-byte v1, v1, v6

    const/16 v6, 0x80

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v1, 0x0

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v1, 0x1

    :goto_9
    if-eqz v7, :cond_1c

    const/high16 v6, -0x80000000

    goto :goto_a

    :cond_1c
    const/4 v6, 0x0

    :goto_a
    or-int/2addr v1, v6

    .line 75
    iput v1, v4, Ln3/y/b/a/q0/s/d;->N:I

    const/4 v1, 0x2

    .line 76
    iput v1, v4, Ln3/y/b/a/q0/s/d;->F:I

    const/4 v1, 0x0

    .line 77
    iput v1, v4, Ln3/y/b/a/q0/s/d;->I:I

    const/16 v8, 0xa3

    goto :goto_b

    .line 78
    :cond_1d
    new-instance v0, Ln3/y/b/a/c0;

    const/16 v1, 0x24

    const-string v3, "Unexpected lacing value: "

    invoke-static {v1, v3, v13}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1e
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_b
    if-ne v0, v8, :cond_21

    .line 80
    :goto_c
    iget v0, v4, Ln3/y/b/a/q0/s/d;->I:I

    iget v1, v4, Ln3/y/b/a/q0/s/d;->J:I

    if-ge v0, v1, :cond_20

    .line 81
    iget-object v1, v4, Ln3/y/b/a/q0/s/d;->K:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Ln3/y/b/a/q0/s/d;->l(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/s/d$c;I)V

    .line 82
    iget-wide v0, v4, Ln3/y/b/a/q0/s/d;->G:J

    iget v6, v4, Ln3/y/b/a/q0/s/d;->I:I

    iget v7, v5, Ln3/y/b/a/q0/s/d$c;->e:I

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 83
    invoke-virtual {v4, v5, v0, v1}, Ln3/y/b/a/q0/s/d;->b(Ln3/y/b/a/q0/s/d$c;J)V

    .line 84
    iget v0, v4, Ln3/y/b/a/q0/s/d;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Ln3/y/b/a/q0/s/d;->I:I

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    .line 85
    iput v0, v4, Ln3/y/b/a/q0/s/d;->F:I

    goto :goto_d

    :cond_21
    const/4 v0, 0x0

    .line 86
    iget-object v1, v4, Ln3/y/b/a/q0/s/d;->K:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Ln3/y/b/a/q0/s/d;->l(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/s/d$c;I)V

    :goto_d
    return-void
.end method

.method public b(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

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
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->L:F

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->K:F

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->J:F

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->I:F

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->H:F

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->G:F

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->F:F

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->E:F

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->D:F

    goto :goto_0

    .line 12
    :pswitch_9
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->C:F

    goto :goto_0

    .line 13
    :pswitch_a
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->t:F

    goto :goto_0

    .line 14
    :pswitch_b
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->s:F

    goto :goto_0

    .line 15
    :pswitch_c
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->r:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 16
    iput-wide p1, v0, Ln3/y/b/a/q0/s/d;->s:J

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    double-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->O:I

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

.method public c(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5031

    const/16 v2, 0x37

    const-string v3, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v1, :cond_17

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iput-wide p2, v0, Ln3/y/b/a/q0/s/d;->r:J

    goto/16 :goto_0

    .line 4
    :sswitch_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->e:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v6, p1, Ln3/y/b/a/q0/s/d$c;->q:I

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v7, p1, Ln3/y/b/a/q0/s/d$c;->q:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v8, p1, Ln3/y/b/a/q0/s/d$c;->q:I

    goto/16 :goto_0

    .line 8
    :cond_3
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v2, p1, Ln3/y/b/a/q0/s/d$c;->q:I

    goto/16 :goto_0

    .line 9
    :sswitch_3
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->N:I

    goto/16 :goto_0

    .line 10
    :sswitch_4
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-wide p2, p1, Ln3/y/b/a/q0/s/d$c;->Q:J

    goto/16 :goto_0

    .line 11
    :sswitch_5
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-wide p2, p1, Ln3/y/b/a/q0/s/d$c;->P:J

    goto/16 :goto_0

    .line 12
    :sswitch_6
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->f:I

    goto/16 :goto_0

    .line 13
    :sswitch_7
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    cmp-long p2, p2, v4

    if-nez p2, :cond_4

    move v2, v8

    :cond_4
    iput-boolean v2, p1, Ln3/y/b/a/q0/s/d$c;->S:Z

    goto/16 :goto_0

    .line 14
    :sswitch_8
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->o:I

    goto/16 :goto_0

    .line 15
    :sswitch_9
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->p:I

    goto/16 :goto_0

    .line 16
    :sswitch_a
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->n:I

    goto/16 :goto_0

    :sswitch_b
    long-to-int p1, p2

    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_7

    if-eq p1, v6, :cond_6

    const/16 p2, 0xf

    if-eq p1, p2, :cond_5

    goto/16 :goto_0

    .line 17
    :cond_5
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v6, p1, Ln3/y/b/a/q0/s/d$c;->v:I

    goto/16 :goto_0

    .line 18
    :cond_6
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v8, p1, Ln3/y/b/a/q0/s/d$c;->v:I

    goto/16 :goto_0

    .line 19
    :cond_7
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v7, p1, Ln3/y/b/a/q0/s/d$c;->v:I

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v2, p1, Ln3/y/b/a/q0/s/d$c;->v:I

    goto/16 :goto_0

    .line 21
    :sswitch_c
    iget-wide v1, v0, Ln3/y/b/a/q0/s/d;->q:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Ln3/y/b/a/q0/s/d;->x:J

    goto/16 :goto_0

    :sswitch_d
    cmp-long p1, p2, v4

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 22
    :cond_9
    new-instance p1, Ln3/y/b/a/c0;

    const/16 v0, 0x38

    const-string v1, "AESSettingsCipherMode "

    invoke-static {v0, v1, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 23
    :cond_a
    new-instance p1, Ln3/y/b/a/c0;

    const/16 v0, 0x31

    const-string v1, "ContentEncAlgo "

    invoke-static {v0, v1, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v4

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 24
    :cond_b
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "EBMLReadVersion "

    invoke-static {v1, v0, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v4

    if-ltz p1, :cond_c

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_c

    goto/16 :goto_0

    .line 25
    :cond_c
    new-instance p1, Ln3/y/b/a/c0;

    const/16 v0, 0x35

    const-string v1, "DocTypeReadVersion "

    invoke-static {v0, v1, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v4, 0x3

    cmp-long p1, p2, v4

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 26
    :cond_d
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "ContentCompAlgo "

    invoke-static {v1, v0, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :sswitch_12
    iput-boolean v8, v0, Ln3/y/b/a/q0/s/d;->Z:Z

    goto/16 :goto_0

    .line 28
    :sswitch_13
    iget-boolean p1, v0, Ln3/y/b/a/q0/s/d;->E:Z

    if-nez p1, :cond_1a

    .line 29
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/x0/h;->a(J)V

    .line 30
    iput-boolean v8, v0, Ln3/y/b/a/q0/s/d;->E:Z

    goto/16 :goto_0

    :sswitch_14
    long-to-int p1, p2

    .line 31
    iput p1, v0, Ln3/y/b/a/q0/s/d;->O:I

    goto/16 :goto_0

    .line 32
    :sswitch_15
    invoke-virtual {v0, p2, p3}, Ln3/y/b/a/q0/s/d;->k(J)J

    move-result-wide p1

    iput-wide p1, v0, Ln3/y/b/a/q0/s/d;->B:J

    goto/16 :goto_0

    .line 33
    :sswitch_16
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->c:I

    goto/16 :goto_0

    .line 34
    :sswitch_17
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->m:I

    goto/16 :goto_0

    .line 35
    :sswitch_18
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    invoke-virtual {v0, p2, p3}, Ln3/y/b/a/q0/s/d;->k(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/x0/h;->a(J)V

    goto/16 :goto_0

    .line 36
    :sswitch_19
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->l:I

    goto/16 :goto_0

    .line 37
    :sswitch_1a
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->M:I

    goto/16 :goto_0

    .line 38
    :sswitch_1b
    invoke-virtual {v0, p2, p3}, Ln3/y/b/a/q0/s/d;->k(J)J

    move-result-wide p1

    iput-wide p1, v0, Ln3/y/b/a/q0/s/d;->H:J

    goto/16 :goto_0

    .line 39
    :sswitch_1c
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    cmp-long p2, p2, v4

    if-nez p2, :cond_e

    move v2, v8

    :cond_e
    iput-boolean v2, p1, Ln3/y/b/a/q0/s/d$c;->T:Z

    goto/16 :goto_0

    .line 40
    :sswitch_1d
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->d:I

    goto/16 :goto_0

    .line 41
    :pswitch_0
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->B:I

    goto/16 :goto_0

    .line 42
    :pswitch_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    long-to-int p2, p2

    iput p2, p1, Ln3/y/b/a/q0/s/d$c;->A:I

    goto/16 :goto_0

    .line 43
    :pswitch_2
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-boolean v8, p1, Ln3/y/b/a/q0/s/d$c;->w:Z

    long-to-int p2, p2

    if-eq p2, v8, :cond_11

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
    iput v7, p1, Ln3/y/b/a/q0/s/d$c;->x:I

    goto :goto_0

    .line 45
    :cond_10
    iput v2, p1, Ln3/y/b/a/q0/s/d$c;->x:I

    goto :goto_0

    .line 46
    :cond_11
    iput v8, p1, Ln3/y/b/a/q0/s/d$c;->x:I

    goto :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v8, :cond_14

    const/16 p2, 0x10

    if-eq p1, p2, :cond_13

    const/16 p2, 0x12

    if-eq p1, p2, :cond_12

    if-eq p1, v2, :cond_14

    if-eq p1, v1, :cond_14

    goto :goto_0

    .line 47
    :cond_12
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v1, p1, Ln3/y/b/a/q0/s/d$c;->y:I

    goto :goto_0

    .line 48
    :cond_13
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v2, p1, Ln3/y/b/a/q0/s/d$c;->y:I

    goto :goto_0

    .line 49
    :cond_14
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v6, p1, Ln3/y/b/a/q0/s/d$c;->y:I

    goto :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v8, :cond_16

    if-eq p1, v7, :cond_15

    goto :goto_0

    .line 50
    :cond_15
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v8, p1, Ln3/y/b/a/q0/s/d$c;->z:I

    goto :goto_0

    .line 51
    :cond_16
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput v7, p1, Ln3/y/b/a/q0/s/d$c;->z:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v4

    if-nez p1, :cond_18

    goto :goto_0

    .line 52
    :cond_18
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "ContentEncodingScope "

    invoke-static {v2, v0, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

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
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "ContentEncodingOrder "

    invoke-static {v2, v0, p2, p3, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

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

.method public d(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

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
    iget-boolean p1, v0, Ln3/y/b/a/q0/s/d;->v:Z

    if-nez p1, :cond_c

    .line 4
    iget-boolean p1, v0, Ln3/y/b/a/q0/s/d;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Ln3/y/b/a/q0/s/d;->z:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v4, v0, Ln3/y/b/a/q0/s/d;->y:Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->a0:Ln3/y/b/a/q0/h;

    new-instance p2, Ln3/y/b/a/q0/n$b;

    iget-wide p3, v0, Ln3/y/b/a/q0/s/d;->t:J

    const-wide/16 v1, 0x0

    .line 7
    invoke-direct {p2, p3, p4, v1, v2}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 8
    invoke-interface {p1, p2}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    .line 9
    iput-boolean v4, v0, Ln3/y/b/a/q0/s/d;->v:Z

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ln3/y/b/a/x0/h;

    invoke-direct {p1}, Ln3/y/b/a/x0/h;-><init>()V

    iput-object p1, v0, Ln3/y/b/a/q0/s/d;->C:Ln3/y/b/a/x0/h;

    .line 11
    new-instance p1, Ln3/y/b/a/x0/h;

    invoke-direct {p1}, Ln3/y/b/a/x0/h;-><init>()V

    iput-object p1, v0, Ln3/y/b/a/q0/s/d;->D:Ln3/y/b/a/x0/h;

    goto :goto_1

    .line 12
    :cond_3
    iget-wide v4, v0, Ln3/y/b/a/q0/s/d;->q:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    cmp-long p1, v4, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    :goto_0
    iput-wide p2, v0, Ln3/y/b/a/q0/s/d;->q:J

    .line 15
    iput-wide p4, v0, Ln3/y/b/a/q0/s/d;->p:J

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-boolean v4, p1, Ln3/y/b/a/q0/s/d$c;->w:Z

    goto :goto_1

    .line 17
    :cond_7
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-boolean v4, p1, Ln3/y/b/a/q0/s/d$c;->g:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 18
    iput p1, v0, Ln3/y/b/a/q0/s/d;->w:I

    .line 19
    iput-wide v2, v0, Ln3/y/b/a/q0/s/d;->x:J

    goto :goto_1

    .line 20
    :cond_9
    iput-boolean v2, v0, Ln3/y/b/a/q0/s/d;->E:Z

    goto :goto_1

    .line 21
    :cond_a
    new-instance p1, Ln3/y/b/a/q0/s/d$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ln3/y/b/a/q0/s/d$c;-><init>(Ln3/y/b/a/q0/s/d$a;)V

    iput-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    goto :goto_1

    .line 22
    :cond_b
    iput-boolean v2, v0, Ln3/y/b/a/q0/s/d;->Z:Z

    :cond_c
    :goto_1
    return-void
.end method

.method public e(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d$b;->a:Ln3/y/b/a/q0/s/d;

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
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    .line 4
    iput-object p2, p1, Ln3/y/b/a/q0/s/d$c;->U:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-object p2, p1, Ln3/y/b/a/q0/s/d$c;->a:Ljava/lang/String;

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
    new-instance p1, Ln3/y/b/a/c0;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    const-string v1, "DocType "

    const-string v2, " not supported"

    invoke-static {v0, v1, p2, v2}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    iget-object p1, v0, Ln3/y/b/a/q0/s/d;->u:Ln3/y/b/a/q0/s/d$c;

    iput-object p2, p1, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
