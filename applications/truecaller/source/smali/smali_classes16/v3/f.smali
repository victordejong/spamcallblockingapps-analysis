.class public final Lv3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/h;
.implements Lv3/g;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lv3/w;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic B(I)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->G0(I)Lv3/f;

    return-object p0
.end method

.method public B0(I)Lv3/f;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lv3/w;->a:[B

    iget v2, v0, Lv3/w;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lv3/w;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lv3/f;->b:J

    return-object p0
.end method

.method public D0(J)Lv3/f;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->B0(I)Lv3/f;

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    goto/16 :goto_3

    :cond_1
    move v3, v4

    :cond_2
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const/16 v5, 0xa

    if-gez v2, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v2, p1, v6

    if-gez v2, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v2, p1, v6

    if-gez v2, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v2, p1, v6

    if-gez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v6, 0x3e8

    cmp-long v2, p1, v6

    if-gez v2, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :cond_6
    const-wide/32 v6, 0xf4240

    cmp-long v2, p1, v6

    if-gez v2, :cond_8

    const-wide/32 v6, 0x186a0

    cmp-long v2, p1, v6

    if-gez v2, :cond_7

    const/4 v2, 0x5

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_0

    :cond_8
    const-wide/32 v6, 0x989680

    cmp-long v2, p1, v6

    if-gez v2, :cond_9

    const/4 v2, 0x7

    goto :goto_0

    :cond_9
    const/16 v2, 0x8

    goto :goto_0

    :cond_a
    const-wide v6, 0xe8d4a51000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_e

    const-wide v6, 0x2540be400L

    cmp-long v2, p1, v6

    if-gez v2, :cond_c

    const-wide/32 v6, 0x3b9aca00

    cmp-long v2, p1, v6

    if-gez v2, :cond_b

    const/16 v4, 0x9

    goto :goto_1

    :cond_b
    move v4, v5

    goto :goto_1

    :cond_c
    const-wide v6, 0x174876e800L

    cmp-long v2, p1, v6

    if-gez v2, :cond_d

    const/16 v2, 0xb

    goto :goto_0

    :cond_d
    const/16 v2, 0xc

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_e
    const-wide v6, 0x38d7ea4c68000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_11

    const-wide v6, 0x9184e72a000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_f

    const/16 v4, 0xd

    goto :goto_1

    :cond_f
    const-wide v6, 0x5af3107a4000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_10

    const/16 v2, 0xe

    goto :goto_0

    :cond_10
    const/16 v2, 0xf

    goto :goto_0

    :cond_11
    const-wide v6, 0x16345785d8a0000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_13

    const-wide v6, 0x2386f26fc10000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_12

    const/16 v4, 0x10

    goto :goto_1

    :cond_12
    const/16 v4, 0x11

    goto :goto_1

    :cond_13
    const-wide v6, 0xde0b6b3a7640000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_14

    const/16 v4, 0x12

    goto :goto_1

    :cond_14
    const/16 v4, 0x13

    :goto_1
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_15
    invoke-virtual {p0, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v2

    .line 4
    iget-object v6, v2, Lv3/w;->a:[B

    .line 5
    iget v7, v2, Lv3/w;->c:I

    add-int/2addr v7, v4

    :goto_2
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v5

    .line 6
    rem-long v10, p1, v8

    long-to-int v10, v10

    add-int/lit8 v7, v7, -0x1

    .line 7
    sget-object v11, Lv3/d0/a;->a:[B

    .line 8
    aget-byte v10, v11, v10

    aput-byte v10, v6, v7

    .line 9
    div-long/2addr p1, v8

    goto :goto_2

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v6, v7

    .line 11
    :cond_17
    iget p1, v2, Lv3/w;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Lv3/w;->c:I

    .line 12
    iget-wide p1, p0, Lv3/f;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lv3/f;->b:J

    :goto_3
    return-object p0
.end method

.method public E()Lv3/i;
    .locals 2

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lv3/f;->e0(J)Lv3/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic E0(Lv3/i;)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    return-object p0
.end method

.method public F0(J)Lv3/f;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->B0(I)Lv3/f;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 2
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 3
    invoke-virtual {p0, v1}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lv3/w;->a:[B

    .line 5
    iget v5, v2, Lv3/w;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 6
    sget-object v0, Lv3/d0/a;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    .line 7
    aget-byte v0, v0, v7

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v2, Lv3/w;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lv3/w;->c:I

    .line 9
    iget-wide p1, p0, Lv3/f;->b:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    .line 10
    iput-wide p1, p0, Lv3/f;->b:J

    :goto_1
    return-object p0
.end method

.method public G0(I)Lv3/f;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lv3/w;->a:[B

    .line 3
    iget v2, v0, Lv3/w;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lv3/w;->c:I

    .line 9
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lv3/f;->b:J

    return-object p0
.end method

.method public H0(Lv3/z;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    check-cast p1, Lv3/f;

    invoke-virtual {p1, p0, v0, v1}, Lv3/f;->h1(Lv3/f;J)V

    :cond_0
    return-wide v0
.end method

.method public bridge synthetic H1(I)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->J0(I)Lv3/f;

    return-object p0
.end method

.method public J()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 2
    :cond_0
    iget-object v8, v0, Lv3/f;->a:Lv3/w;

    if-eqz v8, :cond_b

    .line 3
    iget-object v9, v8, Lv3/w;->a:[B

    .line 4
    iget v10, v8, Lv3/w;->b:I

    .line 5
    iget v11, v8, Lv3/w;->c:I

    :goto_0
    const/4 v12, 0x1

    if-ge v10, v11, :cond_7

    .line 6
    aget-byte v13, v9, v10

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v13, v14, :cond_4

    const/16 v15, 0x39

    int-to-byte v15, v15

    if-gt v13, v15, :cond_4

    sub-int/2addr v14, v13

    const-wide v15, -0xcccccccccccccccL

    cmp-long v12, v3, v15

    if-ltz v12, :cond_2

    move-object v15, v8

    move-object/from16 v16, v9

    if-nez v12, :cond_1

    int-to-long v8, v14

    cmp-long v8, v8, v1

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0xa

    mul-long/2addr v3, v8

    int-to-long v8, v14

    add-long/2addr v3, v8

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lv3/f;

    invoke-direct {v1}, Lv3/f;-><init>()V

    invoke-virtual {v1, v3, v4}, Lv3/f;->D0(J)Lv3/f;

    invoke-virtual {v1, v13}, Lv3/f;->B0(I)Lv3/f;

    if-nez v7, :cond_3

    .line 8
    invoke-virtual {v1}, Lv3/f;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Number too large: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v15, v8

    move-object/from16 v16, v9

    const/16 v8, 0x2d

    int-to-byte v8, v8

    if-ne v13, v8, :cond_5

    if-nez v5, :cond_5

    const-wide/16 v7, 0x1

    sub-long/2addr v1, v7

    move v7, v12

    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v8, v15

    move-object/from16 v9, v16

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    move v6, v12

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    .line 11
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ls1/a/a/a/v0/f/d;->L3(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v15, v8

    :goto_3
    if-ne v10, v11, :cond_8

    .line 13
    invoke-virtual {v15}, Lv3/w;->a()Lv3/w;

    move-result-object v8

    iput-object v8, v0, Lv3/f;->a:Lv3/w;

    .line 14
    invoke-static {v15}, Lv3/x;->a(Lv3/w;)V

    goto :goto_4

    :cond_8
    move-object v8, v15

    .line 15
    iput v10, v8, Lv3/w;->b:I

    :goto_4
    if-nez v6, :cond_9

    .line 16
    iget-object v8, v0, Lv3/f;->a:Lv3/w;

    if-nez v8, :cond_0

    .line 17
    :cond_9
    iget-wide v1, v0, Lv3/f;->b:J

    int-to-long v5, v5

    sub-long/2addr v1, v5

    .line 18
    iput-wide v1, v0, Lv3/f;->b:J

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 19
    :cond_b
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v1, 0x0

    throw v1

    .line 20
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public J0(I)Lv3/f;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lv3/w;->a:[B

    .line 3
    iget v2, v0, Lv3/w;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lv3/w;->c:I

    .line 7
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lv3/f;->b:J

    return-object p0
.end method

.method public K()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv3/f;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public K0(Ljava/lang/String;)Lv3/f;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lv3/f;->L0(Ljava/lang/String;II)Lv3/f;

    return-object p0
.end method

.method public L0(Ljava/lang/String;II)Lv3/f;
    .locals 11

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_f

    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p0, v0}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v4

    .line 4
    iget-object v5, v4, Lv3/w;->a:[B

    .line 5
    iget v6, v4, Lv3/w;->c:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 6
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 7
    aput-byte v2, v5, p2

    :goto_4
    move p2, v8

    if-ge p2, v7, :cond_4

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 9
    aput-byte v2, v5, p2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v6, p2

    .line 10
    iget v2, v4, Lv3/w;->c:I

    sub-int/2addr v6, v2

    add-int/2addr v2, v6

    .line 11
    iput v2, v4, Lv3/w;->c:I

    .line 12
    iget-wide v2, p0, Lv3/f;->b:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    .line 13
    iput-wide v2, p0, Lv3/f;->b:J

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    .line 14
    invoke-virtual {p0, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v5

    .line 15
    iget-object v6, v5, Lv3/w;->a:[B

    iget v7, v5, Lv3/w;->c:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 16
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 17
    iput v7, v5, Lv3/w;->c:I

    .line 18
    iget-wide v2, p0, Lv3/f;->b:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 19
    iput-wide v2, p0, Lv3/f;->b:J

    goto/16 :goto_9

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8

    .line 20
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v1

    :goto_6
    const v8, 0xdbff

    if-gt v2, v8, :cond_a

    const v8, 0xdc00

    if-gt v8, v7, :cond_a

    if-ge v4, v7, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 21
    invoke-virtual {p0, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v6

    .line 22
    iget-object v7, v6, Lv3/w;->a:[B

    iget v8, v6, Lv3/w;->c:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 23
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 24
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 25
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 26
    iput v8, v6, Lv3/w;->c:I

    .line 27
    iget-wide v2, p0, Lv3/f;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 28
    iput-wide v2, p0, Lv3/f;->b:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 29
    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lv3/f;->B0(I)Lv3/f;

    move p2, v6

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    .line 30
    invoke-virtual {p0, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v6

    .line 31
    iget-object v7, v6, Lv3/w;->a:[B

    iget v8, v6, Lv3/w;->c:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 32
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 33
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 34
    iput v8, v6, Lv3/w;->c:I

    .line 35
    iget-wide v2, p0, Lv3/f;->b:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    .line 36
    iput-wide v2, p0, Lv3/f;->b:J

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    return-object p0

    :cond_d
    const-string p2, "endIndex > string.length: "

    const-string v0, " > "

    .line 37
    invoke-static {p2, p3, v0}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    const-string p1, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 38
    invoke-static {p1, p3, v0, p2}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    const-string p1, "beginIndex < 0: "

    .line 39
    invoke-static {p1, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public N1()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O0()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 2
    :cond_0
    iget-object v6, p0, Lv3/f;->a:Lv3/w;

    if-eqz v6, :cond_9

    .line 3
    iget-object v7, v6, Lv3/w;->a:[B

    .line 4
    iget v8, v6, Lv3/w;->b:I

    .line 5
    iget v9, v6, Lv3/w;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    invoke-virtual {v0, v4, v5}, Lv3/f;->F0(J)Lv3/f;

    invoke-virtual {v0, v10}, Lv3/f;->B0(I)Lv3/f;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number too large: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ls1/a/a/a/v0/f/d;->L3(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Lv3/w;->a()Lv3/w;

    move-result-object v7

    iput-object v7, p0, Lv3/f;->a:Lv3/w;

    .line 13
    invoke-static {v6}, Lv3/x;->a(Lv3/w;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Lv3/w;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Lv3/f;->a:Lv3/w;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    iget-wide v1, p0, Lv3/f;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    .line 17
    iput-wide v1, p0, Lv3/f;->b:J

    return-wide v4

    .line 18
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    .line 19
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public P(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-wide v1, p0, Lv3/f;->b:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_5

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_4

    .line 3
    iget v1, v0, Lv3/w;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lv3/w;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Lv3/f;->p1(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 5
    :cond_2
    iget-object v2, v0, Lv3/w;->a:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Lv3/w;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Lv3/w;->b:I

    .line 7
    iget-wide v1, p0, Lv3/f;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lv3/f;->b:J

    .line 8
    iget p1, v0, Lv3/w;->c:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lv3/w;->a()Lv3/w;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->a:Lv3/w;

    .line 10
    invoke-static {v0}, Lv3/x;->a(Lv3/w;)V

    :cond_3
    return-object v4

    .line 11
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_6
    const-string p3, "byteCount: "

    .line 13
    invoke-static {p3, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lv3/f;->P(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q0(I)Lv3/f;
    .locals 11

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->B0(I)Lv3/f;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/4 v2, 0x2

    const/16 v3, 0x3f

    if-ge p1, v1, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v1

    .line 3
    iget-object v4, v1, Lv3/w;->a:[B

    iget v5, v1, Lv3/w;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v2

    .line 5
    iput v5, v1, Lv3/w;->c:I

    .line 6
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lv3/f;->b:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v4, 0xd800

    if-le v4, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Lv3/f;->B0(I)Lv3/f;

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    const/4 v4, 0x3

    if-ge p1, v1, :cond_4

    .line 9
    invoke-virtual {p0, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lv3/w;->a:[B

    iget v5, v1, Lv3/w;->c:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 12
    aput-byte p1, v2, v6

    add-int/2addr v5, v4

    .line 13
    iput v5, v1, Lv3/w;->c:I

    .line 14
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lv3/f;->b:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    const/4 v5, 0x4

    if-gt p1, v1, :cond_5

    .line 16
    invoke-virtual {p0, v5}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v1

    .line 17
    iget-object v2, v1, Lv3/w;->a:[B

    iget v4, v1, Lv3/w;->c:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 18
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x3

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 20
    aput-byte p1, v2, v6

    add-int/2addr v4, v5

    .line 21
    iput v4, v1, Lv3/w;->c:I

    .line 22
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lv3/f;->b:J

    :goto_1
    return-object p0

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected code point: 0x"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    new-array v6, v3, [C

    .line 25
    sget-object v7, Lv3/d0/b;->a:[C

    shr-int/lit8 v8, p1, 0x1c

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    const/4 v9, 0x0

    aput-char v8, v6, v9

    shr-int/lit8 v8, p1, 0x18

    and-int/lit8 v8, v8, 0xf

    .line 26
    aget-char v8, v7, v8

    const/4 v10, 0x1

    aput-char v8, v6, v10

    shr-int/lit8 v8, p1, 0x14

    and-int/lit8 v8, v8, 0xf

    .line 27
    aget-char v8, v7, v8

    aput-char v8, v6, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0xf

    .line 28
    aget-char v2, v7, v2

    aput-char v2, v6, v4

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 29
    aget-char v2, v7, v2

    aput-char v2, v6, v5

    const/4 v2, 0x5

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    .line 30
    aget-char v4, v7, v4

    aput-char v4, v6, v2

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 31
    aget-char v2, v7, v2

    const/4 v4, 0x6

    aput-char v2, v6, v4

    const/4 v2, 0x7

    and-int/lit8 p1, p1, 0xf

    .line 32
    aget-char p1, v7, p1

    aput-char p1, v6, v2

    :goto_2
    if-ge v9, v3, :cond_6

    .line 33
    aget-char p1, v6, v9

    const/16 v2, 0x30

    if-ne p1, v2, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    rsub-int/lit8 p1, v9, 0x8

    .line 34
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6, v9, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_7
    const-string v2, "0"

    .line 35
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lv3/f;->P(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public U(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final W()Lv3/i;
    .locals 4

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lv3/f;->k0(I)Lv3/i;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "size > Int.MAX_VALUE: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lv3/f;->b:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Z0()Lv3/g;
    .locals 0

    return-object p0
.end method

.method public a1(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, p1, v3

    :goto_1
    const/16 v2, 0xa

    int-to-byte v2, v2

    const-wide/16 v7, 0x0

    move-object v5, p0

    move v6, v2

    move-wide v9, v0

    .line 1
    invoke-virtual/range {v5 .. v10}, Lv3/f;->q(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 2
    invoke-static {p0, v5, v6}, Lv3/d0/a;->a(Lv3/f;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    iget-wide v5, p0, Lv3/f;->b:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    sub-long v3, v0, v3

    .line 4
    invoke-virtual {p0, v3, v4}, Lv3/f;->l(J)B

    move-result v3

    const/16 v4, 0xd

    int-to-byte v4, v4

    if-ne v3, v4, :cond_3

    .line 5
    invoke-virtual {p0, v0, v1}, Lv3/f;->l(J)B

    move-result v3

    if-ne v3, v2, :cond_3

    .line 6
    invoke-static {p0, v0, v1}, Lv3/d0/a;->a(Lv3/f;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 7
    :cond_3
    new-instance v6, Lv3/f;

    invoke-direct {v6}, Lv3/f;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    iget-wide v4, p0, Lv3/f;->b:J

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Lv3/f;->k(Lv3/f;JJ)Lv3/f;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\n not found: limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v1, p0, Lv3/f;->b:J

    .line 13
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v6}, Lv3/f;->E()Lv3/i;

    move-result-object p1

    invoke-virtual {p1}, Lv3/i;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string v0, "limit < 0: "

    .line 16
    invoke-static {v0, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()Lv3/f;
    .locals 7

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 2
    iget-wide v1, p0, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lv3/f;->a:Lv3/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lv3/w;->c()Lv3/w;

    move-result-object v3

    .line 5
    iput-object v3, v0, Lv3/f;->a:Lv3/w;

    .line 6
    iput-object v3, v3, Lv3/w;->g:Lv3/w;

    .line 7
    iput-object v3, v3, Lv3/w;->f:Lv3/w;

    .line 8
    iget-object v4, v1, Lv3/w;->f:Lv3/w;

    :goto_0
    if-eq v4, v1, :cond_3

    .line 9
    iget-object v5, v3, Lv3/w;->g:Lv3/w;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lv3/w;->c()Lv3/w;

    move-result-object v6

    invoke-virtual {v5, v6}, Lv3/w;->b(Lv3/w;)Lv3/w;

    .line 10
    iget-object v4, v4, Lv3/w;->f:Lv3/w;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    .line 12
    :cond_3
    iget-wide v1, p0, Lv3/f;->b:J

    .line 13
    iput-wide v1, v0, Lv3/f;->b:J

    :goto_1
    return-object v0

    .line 14
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv3/f;->b()Lv3/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic d0(J)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/f;->D0(J)Lv3/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d1(Ljava/lang/String;)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    return-object p0
.end method

.method public d2(Lv3/f;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-wide v2, p0, Lv3/f;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lv3/f;->h1(Lv3/f;J)V

    move-wide p1, p2

    :goto_1
    return-wide p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 3
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e0(J)Lv3/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const/16 v0, 0x1000

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lv3/f;->k0(I)Lv3/i;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lv3/f;->skip(J)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lv3/i;

    invoke-virtual {p0, p1, p2}, Lv3/f;->p1(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lv3/i;-><init>([B)V

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    const-string v0, "byteCount: "

    .line 5
    invoke-static {v0, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    move v2, v3

    goto/16 :goto_6

    .line 1
    :cond_1
    instance-of v4, v1, Lv3/f;

    if-nez v4, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2
    :cond_2
    iget-wide v4, v0, Lv3/f;->b:J

    .line 3
    check-cast v1, Lv3/f;

    .line 4
    iget-wide v6, v1, Lv3/f;->b:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    iget-object v4, v0, Lv3/f;->a:Lv3/w;

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    .line 6
    iget-object v1, v1, Lv3/f;->a:Lv3/w;

    if-eqz v1, :cond_b

    .line 7
    iget v8, v4, Lv3/w;->b:I

    .line 8
    iget v9, v1, Lv3/w;->b:I

    move-wide v10, v6

    .line 9
    :goto_2
    iget-wide v12, v0, Lv3/f;->b:J

    cmp-long v12, v10, v12

    if-gez v12, :cond_0

    .line 10
    iget v12, v4, Lv3/w;->c:I

    sub-int/2addr v12, v8

    iget v13, v1, Lv3/w;->c:I

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v6

    :goto_3
    cmp-long v16, v14, v12

    if-gez v16, :cond_6

    .line 11
    iget-object v2, v4, Lv3/w;->a:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v2, v2, v8

    iget-object v8, v1, Lv3/w;->a:[B

    add-int/lit8 v18, v9, 0x1

    aget-byte v8, v8, v9

    if-eq v2, v8, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x1

    add-long/2addr v14, v8

    move/from16 v8, v17

    move/from16 v9, v18

    goto :goto_3

    .line 12
    :cond_6
    iget v2, v4, Lv3/w;->c:I

    if-ne v8, v2, :cond_8

    .line 13
    iget-object v2, v4, Lv3/w;->f:Lv3/w;

    if-eqz v2, :cond_7

    .line 14
    iget v4, v2, Lv3/w;->b:I

    move v8, v4

    move-object v4, v2

    goto :goto_4

    .line 15
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    .line 16
    :cond_8
    :goto_4
    iget v2, v1, Lv3/w;->c:I

    if-ne v9, v2, :cond_a

    .line 17
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_9

    .line 18
    iget v2, v1, Lv3/w;->b:I

    move v9, v2

    goto :goto_5

    .line 19
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    :cond_a
    :goto_5
    add-long/2addr v10, v12

    goto :goto_2

    :goto_6
    return v2

    .line 20
    :cond_b
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    .line 21
    :cond_c
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getBuffer()Lv3/f;
    .locals 0

    return-object p0
.end method

.method public h1(Lv3/f;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "source"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_19

    .line 1
    iget-wide v5, v1, Lv3/f;->b:J

    const-wide/16 v7, 0x0

    move-wide/from16 v9, p2

    .line 2
    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    move-wide/from16 v4, p2

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_18

    .line 3
    iget-object v6, v1, Lv3/f;->a:Lv3/w;

    const/4 v7, 0x0

    if-eqz v6, :cond_17

    iget v8, v6, Lv3/w;->c:I

    if-eqz v6, :cond_16

    iget v9, v6, Lv3/w;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v8, v4, v8

    const/16 v9, 0x2000

    if-gez v8, :cond_b

    .line 4
    iget-object v8, v0, Lv3/f;->a:Lv3/w;

    if-eqz v8, :cond_2

    if-eqz v8, :cond_1

    iget-object v8, v8, Lv3/w;->g:Lv3/w;

    goto :goto_2

    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    :cond_2
    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_5

    .line 5
    iget-boolean v10, v8, Lv3/w;->e:Z

    if-eqz v10, :cond_5

    iget v10, v8, Lv3/w;->c:I

    int-to-long v10, v10

    add-long/2addr v10, v4

    iget-boolean v12, v8, Lv3/w;->d:Z

    if-eqz v12, :cond_3

    move v12, v3

    goto :goto_3

    :cond_3
    iget v12, v8, Lv3/w;->b:I

    :goto_3
    int-to-long v12, v12

    sub-long/2addr v10, v12

    int-to-long v12, v9

    cmp-long v10, v10, v12

    if-gtz v10, :cond_5

    if-eqz v6, :cond_4

    long-to-int v2, v4

    .line 6
    invoke-virtual {v6, v8, v2}, Lv3/w;->d(Lv3/w;I)V

    .line 7
    iget-wide v2, v1, Lv3/f;->b:J

    sub-long/2addr v2, v4

    .line 8
    iput-wide v2, v1, Lv3/f;->b:J

    .line 9
    iget-wide v1, v0, Lv3/f;->b:J

    add-long/2addr v1, v4

    .line 10
    iput-wide v1, v0, Lv3/f;->b:J

    goto/16 :goto_a

    .line 11
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    :cond_5
    if-eqz v6, :cond_a

    long-to-int v8, v4

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v8, :cond_6

    .line 13
    iget v10, v6, Lv3/w;->c:I

    iget v11, v6, Lv3/w;->b:I

    sub-int/2addr v10, v11

    if-gt v8, v10, :cond_6

    move v10, v2

    goto :goto_4

    :cond_6
    move v10, v3

    :goto_4
    if-eqz v10, :cond_9

    const/16 v10, 0x400

    if-lt v8, v10, :cond_7

    .line 14
    invoke-virtual {v6}, Lv3/w;->c()Lv3/w;

    move-result-object v10

    goto :goto_5

    .line 15
    :cond_7
    invoke-static {}, Lv3/x;->b()Lv3/w;

    move-result-object v10

    .line 16
    iget-object v11, v6, Lv3/w;->a:[B

    iget-object v12, v10, Lv3/w;->a:[B

    const/4 v13, 0x0

    iget v14, v6, Lv3/w;->b:I

    add-int v15, v14, v8

    const/16 v16, 0x2

    invoke-static/range {v11 .. v16}, Ls1/u/i;->o([B[BIIII)[B

    .line 17
    :goto_5
    iget v11, v10, Lv3/w;->b:I

    add-int/2addr v11, v8

    iput v11, v10, Lv3/w;->c:I

    .line 18
    iget v11, v6, Lv3/w;->b:I

    add-int/2addr v11, v8

    iput v11, v6, Lv3/w;->b:I

    .line 19
    iget-object v6, v6, Lv3/w;->g:Lv3/w;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v10}, Lv3/w;->b(Lv3/w;)Lv3/w;

    .line 20
    iput-object v10, v1, Lv3/f;->a:Lv3/w;

    goto :goto_6

    .line 21
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 22
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "byteCount out of range"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 24
    :cond_b
    :goto_6
    iget-object v6, v1, Lv3/f;->a:Lv3/w;

    if-eqz v6, :cond_15

    .line 25
    iget v8, v6, Lv3/w;->c:I

    iget v10, v6, Lv3/w;->b:I

    sub-int/2addr v8, v10

    int-to-long v10, v8

    .line 26
    invoke-virtual {v6}, Lv3/w;->a()Lv3/w;

    move-result-object v8

    iput-object v8, v1, Lv3/f;->a:Lv3/w;

    .line 27
    iget-object v8, v0, Lv3/f;->a:Lv3/w;

    if-nez v8, :cond_c

    .line 28
    iput-object v6, v0, Lv3/f;->a:Lv3/w;

    .line 29
    iput-object v6, v6, Lv3/w;->g:Lv3/w;

    .line 30
    iput-object v6, v6, Lv3/w;->f:Lv3/w;

    goto :goto_9

    :cond_c
    if-eqz v8, :cond_14

    .line 31
    iget-object v8, v8, Lv3/w;->g:Lv3/w;

    if-eqz v8, :cond_13

    .line 32
    invoke-virtual {v8, v6}, Lv3/w;->b(Lv3/w;)Lv3/w;

    .line 33
    iget-object v8, v6, Lv3/w;->g:Lv3/w;

    if-eq v8, v6, :cond_d

    move v12, v2

    goto :goto_7

    :cond_d
    move v12, v3

    :goto_7
    if-eqz v12, :cond_12

    if-eqz v8, :cond_11

    .line 34
    iget-boolean v7, v8, Lv3/w;->e:Z

    if-nez v7, :cond_e

    goto :goto_9

    .line 35
    :cond_e
    iget v7, v6, Lv3/w;->c:I

    iget v12, v6, Lv3/w;->b:I

    sub-int/2addr v7, v12

    .line 36
    iget v12, v8, Lv3/w;->c:I

    sub-int/2addr v9, v12

    iget-boolean v12, v8, Lv3/w;->d:Z

    if-eqz v12, :cond_f

    move v12, v3

    goto :goto_8

    :cond_f
    iget v12, v8, Lv3/w;->b:I

    :goto_8
    add-int/2addr v9, v12

    if-le v7, v9, :cond_10

    goto :goto_9

    .line 37
    :cond_10
    invoke-virtual {v6, v8, v7}, Lv3/w;->d(Lv3/w;I)V

    .line 38
    invoke-virtual {v6}, Lv3/w;->a()Lv3/w;

    .line 39
    invoke-static {v6}, Lv3/x;->a(Lv3/w;)V

    .line 40
    :goto_9
    iget-wide v6, v1, Lv3/f;->b:J

    sub-long/2addr v6, v10

    .line 41
    iput-wide v6, v1, Lv3/f;->b:J

    .line 42
    iget-wide v6, v0, Lv3/f;->b:J

    add-long/2addr v6, v10

    .line 43
    iput-wide v6, v0, Lv3/f;->b:J

    sub-long/2addr v4, v10

    goto/16 :goto_1

    .line 44
    :cond_11
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 45
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot compact"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_13
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 47
    :cond_14
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 48
    :cond_15
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    .line 49
    :cond_16
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    :cond_17
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7

    :cond_18
    :goto_a
    return-void

    .line 50
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "source == this"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget v2, v0, Lv3/w;->b:I

    .line 3
    iget v3, v0, Lv3/w;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lv3/w;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lv3/w;->f:Lv3/w;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lv3/f;->a:Lv3/w;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    sget-object v0, Lv3/c0;->d:Lv3/c0;

    return-object v0
.end method

.method public i0()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lv3/f;->p1(J)[B

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lv3/f;->a:Lv3/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lv3/w;->g:Lv3/w;

    if-eqz v2, :cond_2

    .line 3
    iget v3, v2, Lv3/w;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lv3/w;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lv3/w;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 5
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3
.end method

.method public bridge synthetic j0(I)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->B0(I)Lv3/f;

    return-object p0
.end method

.method public j2()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lv3/f$b;

    invoke-direct {v0, p0}, Lv3/f$b;-><init>(Lv3/f;)V

    return-object v0
.end method

.method public final k(Lv3/f;JJ)Lv3/f;
    .locals 8

    const-string v0, "out"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p0, Lv3/f;->b:J

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-wide v2, p1, Lv3/f;->b:J

    add-long/2addr v2, p4

    .line 4
    iput-wide v2, p1, Lv3/f;->b:J

    .line 5
    iget-object v2, p0, Lv3/f;->a:Lv3/w;

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 6
    iget v4, v2, Lv3/w;->c:I

    iget v5, v2, Lv3/w;->b:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v6, p2, v6

    if-ltz v6, :cond_1

    sub-int/2addr v4, v5

    int-to-long v3, v4

    sub-long/2addr p2, v3

    .line 7
    iget-object v2, v2, Lv3/w;->f:Lv3/w;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, p4, v0

    if-lez v4, :cond_6

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {v2}, Lv3/w;->c()Lv3/w;

    move-result-object v4

    .line 9
    iget v5, v4, Lv3/w;->b:I

    long-to-int p2, p2

    add-int/2addr v5, p2

    iput v5, v4, Lv3/w;->b:I

    long-to-int p2, p4

    add-int/2addr v5, p2

    .line 10
    iget p2, v4, Lv3/w;->c:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v4, Lv3/w;->c:I

    .line 11
    iget-object p2, p1, Lv3/f;->a:Lv3/w;

    if-nez p2, :cond_2

    .line 12
    iput-object v4, v4, Lv3/w;->g:Lv3/w;

    .line 13
    iput-object v4, v4, Lv3/w;->f:Lv3/w;

    .line 14
    iput-object v4, p1, Lv3/f;->a:Lv3/w;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p2, Lv3/w;->g:Lv3/w;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Lv3/w;->b(Lv3/w;)Lv3/w;

    .line 16
    :goto_2
    iget p2, v4, Lv3/w;->c:I

    iget p3, v4, Lv3/w;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 17
    iget-object v2, v2, Lv3/w;->f:Lv3/w;

    move-wide p2, v0

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 19
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_6
    :goto_3
    return-object p0

    .line 20
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3
.end method

.method public final k0(I)Lv3/i;
    .locals 9

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lv3/i;->d:Lv3/i;

    goto :goto_2

    .line 2
    :cond_0
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    .line 3
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    .line 4
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v2, p1, :cond_3

    if-eqz v0, :cond_2

    .line 5
    iget v4, v0, Lv3/w;->c:I

    iget v5, v0, Lv3/w;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 6
    iget-object v0, v0, Lv3/w;->f:Lv3/w;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 9
    :cond_3
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 10
    new-array v2, v2, [I

    .line 11
    iget-object v5, p0, Lv3/f;->a:Lv3/w;

    move-object v6, v5

    move v5, v1

    :goto_1
    if-ge v1, p1, :cond_5

    if-eqz v6, :cond_4

    .line 12
    iget-object v7, v6, Lv3/w;->a:[B

    aput-object v7, v0, v5

    .line 13
    iget v7, v6, Lv3/w;->c:I

    iget v8, v6, Lv3/w;->b:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 14
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v2, v5

    add-int v7, v5, v3

    .line 15
    iget v8, v6, Lv3/w;->b:I

    aput v8, v2, v7

    const/4 v7, 0x1

    .line 16
    iput-boolean v7, v6, Lv3/w;->d:Z

    add-int/2addr v5, v7

    .line 17
    iget-object v6, v6, Lv3/w;->f:Lv3/w;

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 19
    :cond_5
    new-instance p1, Lv3/y;

    invoke-direct {p1, v0, v2}, Lv3/y;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public k1(Lv3/b0;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public k2()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lv3/f$a;

    invoke-direct {v0, p0}, Lv3/f$a;-><init>(Lv3/f;)V

    return-object v0
.end method

.method public final l(J)B
    .locals 8

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    .line 2
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    .line 3
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    iget-wide v2, p0, Lv3/f;->b:J

    sub-long v4, v2, p1

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 5
    iget-object v0, v0, Lv3/w;->g:Lv3/w;

    if-eqz v0, :cond_0

    .line 6
    iget v4, v0, Lv3/w;->c:I

    iget v5, v0, Lv3/w;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 8
    :cond_1
    iget-object v1, v0, Lv3/w;->a:[B

    iget v0, v0, Lv3/w;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v1, p1

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 9
    :goto_1
    iget v4, v0, Lv3/w;->c:I

    iget v5, v0, Lv3/w;->b:I

    sub-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v6, v2

    cmp-long v4, v6, p1

    if-lez v4, :cond_3

    .line 10
    iget-object v0, v0, Lv3/w;->a:[B

    int-to-long v4, v5

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v0, p1

    :goto_2
    return p1

    .line 11
    :cond_3
    iget-object v0, v0, Lv3/w;->f:Lv3/w;

    if-eqz v0, :cond_4

    move-wide v2, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 12
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method

.method public m()Lv3/f;
    .locals 0

    return-object p0
.end method

.method public final n0(I)Lv3/w;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-object v1, p0, Lv3/f;->a:Lv3/w;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lv3/x;->b()Lv3/w;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lv3/f;->a:Lv3/w;

    .line 4
    iput-object p1, p1, Lv3/w;->g:Lv3/w;

    .line 5
    iput-object p1, p1, Lv3/w;->f:Lv3/w;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, v1, Lv3/w;->g:Lv3/w;

    if-eqz v1, :cond_4

    .line 7
    iget v2, v1, Lv3/w;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Lv3/w;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lv3/x;->b()Lv3/w;

    move-result-object p1

    invoke-virtual {v1, p1}, Lv3/w;->b(Lv3/w;)Lv3/w;

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    .line 10
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n2(Lv3/r;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lv3/d0/a;->b(Lv3/f;Lv3/r;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lv3/r;->a:[Lv3/i;

    .line 3
    aget-object p1, p1, v0

    .line 4
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result p1

    int-to-long v1, p1

    .line 5
    invoke-virtual {p0, v1, v2}, Lv3/f;->skip(J)V

    :goto_0
    return v0
.end method

.method public o1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lv3/f;->a1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p0(Lv3/i;)Lv3/f;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1, v0}, Lv3/i;->s(Lv3/f;II)V

    return-object p0
.end method

.method public p1(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 1
    iget-wide v2, p0, Lv3/f;->b:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_3

    long-to-int p1, p1

    .line 2
    new-array p2, p1, [B

    const-string v0, "sink"

    .line 3
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-ge v1, p1, :cond_2

    sub-int v0, p1, v1

    .line 4
    invoke-virtual {p0, p2, v1, v0}, Lv3/f;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/2addr v1, v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-object p2

    .line 6
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    const-string v0, "byteCount: "

    .line 7
    invoke-static {v0, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public peek()Lv3/h;
    .locals 2

    .line 1
    new-instance v0, Lv3/t;

    invoke-direct {v0, p0}, Lv3/t;-><init>(Lv3/h;)V

    const-string v1, "$this$buffer"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lv3/v;

    invoke-direct {v1, v0}, Lv3/v;-><init>(Lv3/b0;)V

    return-object v1
.end method

.method public q(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, p4, p2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_10

    .line 1
    iget-wide v2, p0, Lv3/f;->b:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_2

    move-wide p4, v2

    :cond_2
    cmp-long v4, p2, p4

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 2
    :cond_3
    iget-object v4, p0, Lv3/f;->a:Lv3/w;

    if-eqz v4, :cond_f

    sub-long v5, v2, p2

    cmp-long v5, v5, p2

    const/4 v6, 0x0

    if-gez v5, :cond_9

    :goto_2
    cmp-long v0, v2, p2

    if-lez v0, :cond_5

    .line 3
    iget-object v4, v4, Lv3/w;->g:Lv3/w;

    if-eqz v4, :cond_4

    .line 4
    iget v0, v4, Lv3/w;->c:I

    iget v1, v4, Lv3/w;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_2

    .line 5
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    :cond_5
    :goto_3
    cmp-long v0, v2, p4

    if-gez v0, :cond_f

    .line 6
    iget-object v0, v4, Lv3/w;->a:[B

    .line 7
    iget v1, v4, Lv3/w;->c:I

    int-to-long v5, v1

    iget v1, v4, Lv3/w;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    .line 8
    iget v5, v4, Lv3/w;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    :goto_4
    if-ge p2, v1, :cond_7

    .line 9
    aget-byte p3, v0, p2

    if-ne p3, p1, :cond_6

    .line 10
    iget p1, v4, Lv3/w;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v2

    goto/16 :goto_9

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 11
    :cond_7
    iget p2, v4, Lv3/w;->c:I

    iget p3, v4, Lv3/w;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    .line 12
    iget-object v4, v4, Lv3/w;->f:Lv3/w;

    if-eqz v4, :cond_8

    move-wide p2, v2

    goto :goto_3

    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    .line 13
    :cond_9
    :goto_5
    iget v2, v4, Lv3/w;->c:I

    iget v3, v4, Lv3/w;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-lez v5, :cond_d

    :goto_6
    cmp-long v2, v0, p4

    if-gez v2, :cond_f

    .line 14
    iget-object v2, v4, Lv3/w;->a:[B

    .line 15
    iget v3, v4, Lv3/w;->c:I

    int-to-long v5, v3

    iget v3, v4, Lv3/w;->b:I

    int-to-long v7, v3

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 16
    iget v5, v4, Lv3/w;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v0

    long-to-int p2, v5

    :goto_7
    if-ge p2, v3, :cond_b

    .line 17
    aget-byte p3, v2, p2

    if-ne p3, p1, :cond_a

    .line 18
    iget p1, v4, Lv3/w;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 19
    :cond_b
    iget p2, v4, Lv3/w;->c:I

    iget p3, v4, Lv3/w;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 20
    iget-object v4, v4, Lv3/w;->f:Lv3/w;

    if-eqz v4, :cond_c

    move-wide p2, v0

    goto :goto_6

    :cond_c
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    :cond_d
    const/4 v0, 0x0

    .line 21
    iget-object v4, v4, Lv3/w;->f:Lv3/w;

    if-eqz v4, :cond_e

    move-wide v0, v2

    goto :goto_5

    :cond_e
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_f
    :goto_8
    const-wide/16 p1, -0x1

    :goto_9
    return-wide p1

    :cond_10
    const-string p1, "size="

    .line 22
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    iget-wide v0, p0, Lv3/f;->b:J

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    const-string v1, " toIndex="

    invoke-static {p1, v0, p2, p3, v1}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public q0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lv3/f;->P(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lv3/w;->c:I

    iget v3, v0, Lv3/w;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lv3/w;->a:[B

    iget v3, v0, Lv3/w;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lv3/w;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lv3/w;->b:I

    .line 5
    iget-wide v2, p0, Lv3/f;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lv3/f;->b:J

    .line 6
    iget v2, v0, Lv3/w;->c:I

    if-ne p1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lv3/w;->a()Lv3/w;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->a:Lv3/w;

    .line 8
    invoke-static {v0}, Lv3/x;->a(Lv3/w;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    .line 10
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_0

    .line 11
    iget v1, v0, Lv3/w;->c:I

    iget v2, v0, Lv3/w;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Lv3/w;->a:[B

    .line 13
    iget v2, v0, Lv3/w;->b:I

    add-int v3, v2, p3

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Ls1/u/i;->m([B[BIII)[B

    .line 15
    iget p1, v0, Lv3/w;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lv3/w;->b:I

    .line 16
    iget-wide v1, p0, Lv3/f;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, p0, Lv3/f;->b:J

    .line 18
    iget p2, v0, Lv3/w;->c:I

    if-ne p1, p2, :cond_1

    .line 19
    invoke-virtual {v0}, Lv3/w;->a()Lv3/w;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->a:Lv3/w;

    .line 20
    invoke-static {v0}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lv3/f;->a:Lv3/w;

    if-eqz v2, :cond_1

    .line 3
    iget v3, v2, Lv3/w;->b:I

    .line 4
    iget v4, v2, Lv3/w;->c:I

    .line 5
    iget-object v5, v2, Lv3/w;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Lv3/f;->b:J

    if-ne v6, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lv3/w;->a()Lv3/w;

    move-result-object v0

    iput-object v0, p0, Lv3/f;->a:Lv3/w;

    .line 9
    invoke-static {v2}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v6, v2, Lv3/w;->b:I

    :goto_0
    return v3

    .line 11
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lv3/f;->a:Lv3/w;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lv3/w;->b:I

    .line 4
    iget v6, v4, Lv3/w;->c:I

    sub-int v7, v6, v5

    int-to-long v7, v7

    cmp-long v7, v7, v2

    if-gez v7, :cond_0

    .line 5
    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v7, v4, Lv3/w;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 10
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    .line 11
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    .line 12
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    .line 13
    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lv3/f;->b:J

    if-ne v9, v6, :cond_1

    .line 15
    invoke-virtual {v4}, Lv3/w;->a()Lv3/w;

    move-result-object v0

    iput-object v0, p0, Lv3/f;->a:Lv3/w;

    .line 16
    invoke-static {v4}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    .line 17
    :cond_1
    iput v9, v4, Lv3/w;->b:I

    :goto_0
    move v0, v5

    :goto_1
    return v0

    .line 18
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lv3/f;->a:Lv3/w;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lv3/w;->b:I

    .line 4
    iget v6, v4, Lv3/w;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lv3/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, v4, Lv3/w;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 7
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lv3/f;->b:J

    if-ne v9, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Lv3/w;->a()Lv3/w;

    move-result-object v0

    iput-object v0, p0, Lv3/f;->a:Lv3/w;

    .line 10
    invoke-static {v4}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    .line 11
    :cond_1
    iput v9, v4, Lv3/w;->b:I

    :goto_0
    int-to-short v0, v5

    :goto_1
    return v0

    .line 12
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public s(Lv3/i;)J
    .locals 14

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lv3/f;->a:Lv3/w;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_16

    .line 3
    iget-wide v4, p0, Lv3/f;->b:J

    const-wide/16 v6, 0x0

    sub-long v8, v4, v6

    cmp-long v8, v8, v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v8, :cond_b

    :goto_0
    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 4
    iget-object v1, v1, Lv3/w;->g:Lv3/w;

    if-eqz v1, :cond_0

    .line 5
    iget v8, v1, Lv3/w;->c:I

    iget v12, v1, Lv3/w;->b:I

    sub-int/2addr v8, v12

    int-to-long v12, v8

    sub-long/2addr v4, v12

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    .line 7
    :cond_1
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v8

    if-ne v8, v9, :cond_6

    .line 8
    invoke-virtual {p1, v0}, Lv3/i;->i(I)B

    move-result v0

    .line 9
    invoke-virtual {p1, v11}, Lv3/i;->i(I)B

    move-result p1

    .line 10
    :goto_1
    iget-wide v8, p0, Lv3/f;->b:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_16

    .line 11
    iget-object v8, v1, Lv3/w;->a:[B

    .line 12
    iget v9, v1, Lv3/w;->b:I

    int-to-long v11, v9

    add-long/2addr v11, v6

    sub-long/2addr v11, v4

    long-to-int v6, v11

    .line 13
    iget v7, v1, Lv3/w;->c:I

    :goto_2
    if-ge v6, v7, :cond_4

    .line 14
    aget-byte v9, v8, v6

    if-eq v9, v0, :cond_3

    if-ne v9, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_3
    :goto_3
    iget p1, v1, Lv3/w;->b:I

    goto :goto_8

    .line 16
    :cond_4
    iget v6, v1, Lv3/w;->c:I

    iget v7, v1, Lv3/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 17
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_5

    move-wide v4, v6

    goto :goto_1

    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    .line 18
    :cond_6
    invoke-virtual {p1}, Lv3/i;->h()[B

    move-result-object p1

    .line 19
    :goto_4
    iget-wide v8, p0, Lv3/f;->b:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_16

    .line 20
    iget-object v8, v1, Lv3/w;->a:[B

    .line 21
    iget v9, v1, Lv3/w;->b:I

    int-to-long v11, v9

    add-long/2addr v11, v6

    sub-long/2addr v11, v4

    long-to-int v6, v11

    .line 22
    iget v7, v1, Lv3/w;->c:I

    :goto_5
    if-ge v6, v7, :cond_9

    .line 23
    aget-byte v9, v8, v6

    .line 24
    array-length v11, p1

    move v12, v0

    :goto_6
    if-ge v12, v11, :cond_8

    aget-byte v13, p1, v12

    if-ne v9, v13, :cond_7

    .line 25
    :goto_7
    iget p1, v1, Lv3/w;->b:I

    :goto_8
    sub-int/2addr v6, p1

    int-to-long v0, v6

    add-long v2, v0, v4

    goto/16 :goto_f

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 26
    :cond_9
    iget v6, v1, Lv3/w;->c:I

    iget v7, v1, Lv3/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 27
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_a

    move-wide v4, v6

    goto :goto_4

    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    :cond_b
    move-wide v4, v6

    .line 28
    :goto_9
    iget v8, v1, Lv3/w;->c:I

    iget v12, v1, Lv3/w;->b:I

    sub-int/2addr v8, v12

    int-to-long v12, v8

    add-long/2addr v12, v4

    cmp-long v8, v12, v6

    if-lez v8, :cond_14

    .line 29
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v8

    if-ne v8, v9, :cond_f

    .line 30
    invoke-virtual {p1, v0}, Lv3/i;->i(I)B

    move-result v0

    .line 31
    invoke-virtual {p1, v11}, Lv3/i;->i(I)B

    move-result p1

    .line 32
    :goto_a
    iget-wide v8, p0, Lv3/f;->b:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_16

    .line 33
    iget-object v8, v1, Lv3/w;->a:[B

    .line 34
    iget v9, v1, Lv3/w;->b:I

    int-to-long v11, v9

    add-long/2addr v11, v6

    sub-long/2addr v11, v4

    long-to-int v6, v11

    .line 35
    iget v7, v1, Lv3/w;->c:I

    :goto_b
    if-ge v6, v7, :cond_d

    .line 36
    aget-byte v9, v8, v6

    if-eq v9, v0, :cond_3

    if-ne v9, p1, :cond_c

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 37
    :cond_d
    iget v6, v1, Lv3/w;->c:I

    iget v7, v1, Lv3/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 38
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_e

    move-wide v4, v6

    goto :goto_a

    :cond_e
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    .line 39
    :cond_f
    invoke-virtual {p1}, Lv3/i;->h()[B

    move-result-object p1

    .line 40
    :goto_c
    iget-wide v8, p0, Lv3/f;->b:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_16

    .line 41
    iget-object v8, v1, Lv3/w;->a:[B

    .line 42
    iget v9, v1, Lv3/w;->b:I

    int-to-long v11, v9

    add-long/2addr v11, v6

    sub-long/2addr v11, v4

    long-to-int v6, v11

    .line 43
    iget v7, v1, Lv3/w;->c:I

    :goto_d
    if-ge v6, v7, :cond_12

    .line 44
    aget-byte v9, v8, v6

    .line 45
    array-length v11, p1

    move v12, v0

    :goto_e
    if-ge v12, v11, :cond_11

    aget-byte v13, p1, v12

    if-ne v9, v13, :cond_10

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 46
    :cond_12
    iget v6, v1, Lv3/w;->c:I

    iget v7, v1, Lv3/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 47
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_13

    move-wide v4, v6

    goto :goto_c

    :cond_13
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    .line 48
    :cond_14
    iget-object v1, v1, Lv3/w;->f:Lv3/w;

    if-eqz v1, :cond_15

    move-wide v4, v12

    goto/16 :goto_9

    :cond_15
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v10

    :cond_16
    :goto_f
    return-wide v2
.end method

.method public skip(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1
    iget-object v0, p0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lv3/w;->c:I

    iget v2, v0, Lv3/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 4
    iget-wide v2, p0, Lv3/f;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 5
    iput-wide v2, p0, Lv3/f;->b:J

    sub-long/2addr p1, v4

    .line 6
    iget v2, v0, Lv3/w;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lv3/w;->b:I

    .line 7
    iget v1, v0, Lv3/w;->c:I

    if-ne v2, v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lv3/w;->a()Lv3/w;

    move-result-object v1

    iput-object v1, p0, Lv3/f;->a:Lv3/w;

    .line 9
    invoke-static {v0}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public t0([B)Lv3/f;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lv3/f;->z0([BII)Lv3/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv3/f;->W()Lv3/i;

    move-result-object v0

    invoke-virtual {v0}, Lv3/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w0(J)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/f;->F0(J)Lv3/f;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v2

    .line 5
    iget v3, v2, Lv3/w;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, v2, Lv3/w;->a:[B

    iget v5, v2, Lv3/w;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 7
    iget v4, v2, Lv3/w;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lv3/w;->c:I

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, p0, Lv3/f;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lv3/f;->b:J

    return v0
.end method

.method public bridge synthetic write([B)Lv3/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv3/f;->t0([B)Lv3/f;

    return-object p0
.end method

.method public bridge synthetic write([BII)Lv3/g;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lv3/f;->z0([BII)Lv3/f;

    return-object p0
.end method

.method public y1(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lv3/f;->b:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public z0([BII)Lv3/f;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lv3/w;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lv3/w;->a:[B

    .line 5
    iget v3, v0, Lv3/w;->c:I

    add-int v4, p2, v1

    .line 6
    invoke-static {p1, v2, v3, p2, v4}, Ls1/u/i;->m([B[BIII)[B

    .line 7
    iget p2, v0, Lv3/w;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lv3/w;->c:I

    move p2, v4

    goto :goto_0

    .line 8
    :cond_0
    iget-wide p1, p0, Lv3/f;->b:J

    add-long/2addr p1, v7

    .line 9
    iput-wide p1, p0, Lv3/f;->b:J

    return-object p0
.end method
