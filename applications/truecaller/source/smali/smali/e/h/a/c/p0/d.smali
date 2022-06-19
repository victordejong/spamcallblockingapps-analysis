.class public Le/h/a/c/p0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:Le/h/a/c/p0/c;

.field public d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Le/h/a/c/p0/d;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/h/a/c/p0/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget v0, v0, Le/h/a/c/p0/c;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Le/h/a/c/p0/c;
    .locals 11

    .line 1
    iget-object v0, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    return-object v0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 4
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "GIF"

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 6
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iput v4, v2, Le/h/a/c/p0/c;->k:I

    goto :goto_2

    .line 7
    :cond_2
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v5

    iput v5, v2, Le/h/a/c/p0/c;->l:I

    .line 8
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v5

    iput v5, v2, Le/h/a/c/p0/c;->i:I

    .line 9
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v2

    .line 10
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    iput-boolean v6, v5, Le/h/a/c/p0/c;->g:Z

    and-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    .line 11
    iput v2, v5, Le/h/a/c/p0/c;->h:I

    .line 12
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v2

    iput v2, v5, Le/h/a/c/p0/c;->b:I

    .line 13
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-boolean v2, v2, Le/h/a/c/p0/c;->g:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget v5, v2, Le/h/a/c/p0/c;->h:I

    invoke-virtual {p0, v5}, Le/h/a/c/p0/d;->e(I)[I

    move-result-object v5

    iput-object v5, v2, Le/h/a/c/p0/c;->f:[I

    .line 16
    iget-object v2, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v5, v2, Le/h/a/c/p0/c;->f:[I

    iget v6, v2, Le/h/a/c/p0/c;->b:I

    aget v5, v5, v6

    iput v5, v2, Le/h/a/c/p0/c;->a:I

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v1

    :cond_5
    :goto_3
    if-nez v2, :cond_19

    .line 18
    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget v5, v5, Le/h/a/c/p0/c;->d:I

    const v6, 0x7fffffff

    if-gt v5, v6, :cond_19

    .line 19
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_d

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_6

    .line 20
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iput v4, v5, Le/h/a/c/p0/c;->k:I

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_3

    .line 21
    :cond_7
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v6, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    if-nez v6, :cond_8

    .line 22
    new-instance v6, Le/h/a/c/p0/b;

    invoke-direct {v6}, Le/h/a/c/p0/b;-><init>()V

    iput-object v6, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    .line 23
    :cond_8
    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v6

    iput v6, v5, Le/h/a/c/p0/b;->e:I

    .line 24
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v6

    iput v6, v5, Le/h/a/c/p0/b;->f:I

    .line 25
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v6

    iput v6, v5, Le/h/a/c/p0/b;->g:I

    .line 26
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v6

    iput v6, v5, Le/h/a/c/p0/b;->h:I

    .line 27
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_4

    :cond_9
    move v6, v1

    :goto_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    and-int/lit8 v9, v5, 0x7

    add-int/2addr v9, v4

    int-to-double v9, v9

    .line 28
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    .line 29
    iget-object v8, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v8, v8, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_5

    :cond_a
    move v5, v1

    :goto_5
    iput-boolean v5, v8, Le/h/a/c/p0/b;->d:Z

    if-eqz v6, :cond_b

    .line 30
    invoke-virtual {p0, v7}, Le/h/a/c/p0/d;->e(I)[I

    move-result-object v5

    iput-object v5, v8, Le/h/a/c/p0/b;->i:[I

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    .line 31
    iput-object v5, v8, Le/h/a/c/p0/b;->i:[I

    .line 32
    :goto_6
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    iget-object v6, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, v5, Le/h/a/c/p0/b;->a:I

    .line 33
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    .line 34
    invoke-virtual {p0}, Le/h/a/c/p0/d;->h()V

    .line 35
    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_3

    .line 36
    :cond_c
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget v6, v5, Le/h/a/c/p0/c;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Le/h/a/c/p0/c;->d:I

    .line 37
    iget-object v6, v5, Le/h/a/c/p0/c;->e:Ljava/util/List;

    iget-object v5, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 38
    :cond_d
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v5

    if-eq v5, v4, :cond_18

    const/16 v6, 0xf9

    if-eq v5, v6, :cond_14

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_13

    const/16 v6, 0xff

    if-eq v5, v6, :cond_e

    .line 39
    invoke-virtual {p0}, Le/h/a/c/p0/d;->h()V

    goto/16 :goto_3

    .line 40
    :cond_e
    invoke-virtual {p0}, Le/h/a/c/p0/d;->d()I

    move-object v7, v0

    move v5, v1

    :goto_7
    const/16 v8, 0xb

    if-ge v5, v8, :cond_f

    .line 41
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Le/h/a/c/p0/d;->a:[B

    aget-byte v8, v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    const-string v5, "NETSCAPE2.0"

    .line 42
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 43
    :cond_10
    invoke-virtual {p0}, Le/h/a/c/p0/d;->d()I

    .line 44
    iget-object v5, p0, Le/h/a/c/p0/d;->a:[B

    aget-byte v7, v5, v1

    if-ne v7, v4, :cond_11

    .line 45
    aget-byte v7, v5, v4

    and-int/2addr v7, v6

    .line 46
    aget-byte v5, v5, v3

    and-int/2addr v5, v6

    .line 47
    iget-object v8, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    iput v5, v8, Le/h/a/c/p0/c;->j:I

    if-nez v5, :cond_11

    const/4 v5, -0x1

    .line 48
    iput v5, v8, Le/h/a/c/p0/c;->j:I

    .line 49
    :cond_11
    iget v5, p0, Le/h/a/c/p0/d;->b:I

    if-lez v5, :cond_5

    invoke-virtual {p0}, Le/h/a/c/p0/d;->a()Z

    move-result v5

    if-eqz v5, :cond_10

    goto/16 :goto_3

    .line 50
    :cond_12
    invoke-virtual {p0}, Le/h/a/c/p0/d;->h()V

    goto/16 :goto_3

    .line 51
    :cond_13
    invoke-virtual {p0}, Le/h/a/c/p0/d;->h()V

    goto/16 :goto_3

    .line 52
    :cond_14
    iget-object v5, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    new-instance v6, Le/h/a/c/p0/b;

    invoke-direct {v6}, Le/h/a/c/p0/b;-><init>()V

    iput-object v6, v5, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    .line 53
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    .line 54
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v5

    .line 55
    iget-object v6, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v6, v6, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    and-int/lit8 v7, v5, 0x1c

    shr-int/2addr v7, v3

    iput v7, v6, Le/h/a/c/p0/b;->c:I

    if-nez v7, :cond_15

    .line 56
    iput v4, v6, Le/h/a/c/p0/b;->c:I

    :cond_15
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16

    move v5, v4

    goto :goto_8

    :cond_16
    move v5, v1

    .line 57
    :goto_8
    iput-boolean v5, v6, Le/h/a/c/p0/b;->k:Z

    .line 58
    invoke-virtual {p0}, Le/h/a/c/p0/d;->f()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v3, :cond_17

    move v5, v6

    .line 59
    :cond_17
    iget-object v7, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget-object v7, v7, Le/h/a/c/p0/c;->c:Le/h/a/c/p0/b;

    mul-int/2addr v5, v6

    iput v5, v7, Le/h/a/c/p0/b;->b:I

    .line 60
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v5

    iput v5, v7, Le/h/a/c/p0/b;->j:I

    .line 61
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    goto/16 :goto_3

    .line 62
    :cond_18
    invoke-virtual {p0}, Le/h/a/c/p0/d;->h()V

    goto/16 :goto_3

    .line 63
    :cond_19
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    iget v1, v0, Le/h/a/c/p0/c;->d:I

    if-gez v1, :cond_1a

    .line 64
    iput v4, v0, Le/h/a/c/p0/c;->k:I

    .line 65
    :cond_1a
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    return-object v0

    .line 66
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    const/4 v1, 0x1

    iput v1, v0, Le/h/a/c/p0/c;->k:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v0

    iput v0, p0, Le/h/a/c/p0/d;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    :goto_0
    :try_start_0
    iget v0, p0, Le/h/a/c/p0/d;->b:I

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Le/h/a/c/p0/d;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    const/4 v2, 0x1

    iput v2, v0, Le/h/a/c/p0/c;->k:I

    :cond_0
    return v1
.end method

.method public final e(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 4
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 5
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 6
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    const/4 v0, 0x1

    iput v0, p1, Le/h/a/c/p0/c;->k:I

    :cond_0
    return-object v1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public g([B)Le/h/a/c/p0/d;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    iput-object v0, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    .line 3
    iget-object v0, p0, Le/h/a/c/p0/d;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 4
    new-instance v0, Le/h/a/c/p0/c;

    invoke-direct {v0}, Le/h/a/c/p0/c;-><init>()V

    iput-object v0, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    .line 5
    iput v1, p0, Le/h/a/c/p0/d;->b:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p1, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v0, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Le/h/a/c/p0/d;->c:Le/h/a/c/p0/c;

    const/4 v0, 0x2

    iput v0, p1, Le/h/a/c/p0/c;->k:I

    :goto_0
    return-object p0
.end method

.method public final h()V
    .locals 3

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/p0/d;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/h/a/c/p0/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :catch_0
    return-void
.end method
