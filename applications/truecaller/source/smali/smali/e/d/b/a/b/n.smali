.class public Le/d/b/a/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:[B

.field public static f:[B


# instance fields
.field public a:Ljava/io/ByteArrayInputStream;

.field public b:Le/d/b/a/b/m;

.field public c:Le/d/b/a/b/j;

.field public final d:Z


# direct methods
.method public constructor <init>([BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/b/a/b/n;->a:Ljava/io/ByteArrayInputStream;

    .line 3
    iput-object v0, p0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    .line 4
    iput-object v0, p0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    .line 5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Le/d/b/a/b/n;->a:Ljava/io/ByteArrayInputStream;

    .line 6
    iput-boolean p2, p0, Le/d/b/a/b/n;->d:Z

    return-void
.end method

.method public static a(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static c(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1
    sget-object v0, Le/d/b/a/b/l;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    new-array v6, v4, [Ljava/lang/String;

    .line 3
    invoke-static {v5, v6}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x7f

    if-ge v2, v5, :cond_16

    .line 5
    invoke-static {p0}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 7
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    if-eq v8, v3, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    new-array v10, v4, [Ljava/lang/String;

    .line 9
    invoke-static {v9, v10}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v8, v8, 0xff

    if-lt v8, v5, :cond_2

    if-gt v8, v6, :cond_2

    .line 11
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v8

    goto :goto_2

    :cond_2
    if-le v8, v6, :cond_15

    .line 12
    invoke-static {p0}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 13
    array-length v9, v0

    if-ge v8, v9, :cond_3

    .line 14
    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 16
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v8

    .line 17
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    sub-int/2addr v7, v9

    sub-int/2addr v2, v7

    if-lez v2, :cond_14

    if-lez v2, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    new-array v9, v4, [Ljava/lang/String;

    .line 18
    invoke-static {v7, v9}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    move v9, v2

    :goto_4
    if-lez v9, :cond_14

    .line 20
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    if-eq v10, v3, :cond_5

    move v11, v1

    goto :goto_5

    :cond_5
    move v11, v4

    :goto_5
    new-array v12, v4, [Ljava/lang/String;

    .line 21
    invoke-static {v11, v12}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    add-int/lit8 v9, v9, -0x1

    const/16 v11, 0x81

    if-eq v10, v11, :cond_e

    const/16 v11, 0x83

    if-eq v10, v11, :cond_b

    const/16 v12, 0x85

    const/16 v13, 0x97

    if-eq v10, v12, :cond_9

    if-eq v10, v13, :cond_9

    const/16 v12, 0x99

    if-eq v10, v12, :cond_7

    const/16 v13, 0x89

    if-eq v10, v13, :cond_b

    const/16 v11, 0x8a

    if-eq v10, v11, :cond_7

    .line 22
    invoke-static {p0, v9}, Le/d/b/a/b/n;->l(Ljava/io/ByteArrayInputStream;I)I

    move-result v10

    if-ne v3, v10, :cond_6

    goto :goto_4

    :cond_6
    move v9, v4

    goto :goto_4

    .line 23
    :cond_7
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    if-eqz v9, :cond_8

    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p1, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    goto/16 :goto_8

    .line 26
    :cond_9
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    if-eqz v9, :cond_a

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual {p1, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    goto/16 :goto_8

    .line 29
    :cond_b
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 30
    invoke-static {p0}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 31
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    if-le v9, v6, :cond_c

    .line 32
    invoke-static {p0}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    if-eqz p1, :cond_d

    .line 33
    array-length v10, v0

    if-ge v9, v10, :cond_d

    .line 34
    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p1, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 35
    :cond_c
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    if-eqz v9, :cond_d

    if-eqz p1, :cond_d

    .line 36
    invoke-virtual {p1, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_d
    :goto_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    goto :goto_8

    .line 38
    :cond_e
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 39
    invoke-static {p0}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 40
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    if-le v9, v5, :cond_f

    if-lt v9, v6, :cond_10

    :cond_f
    if-nez v9, :cond_12

    .line 41
    :cond_10
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    if-eqz p1, :cond_13

    .line 42
    :try_start_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 43
    sget-object v12, Le/d/b/a/b/c;->a:[I

    .line 44
    sget-object v12, Le/d/b/a/b/c;->d:Ln3/g/h;

    const/4 v13, 0x0

    .line 45
    invoke-virtual {v12, v10, v13}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 46
    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_11

    .line 47
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 49
    :cond_11
    new-instance v10, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v10}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v10
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 52
    :cond_12
    invoke-static {p0}, Le/d/b/a/b/n;->e(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz p1, :cond_13

    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    :cond_13
    :goto_7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    :goto_8
    sub-int v9, v7, v9

    sub-int v9, v2, v9

    goto/16 :goto_4

    :cond_14
    if-gez v2, :cond_18

    .line 55
    aget-object p0, v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 56
    :cond_15
    aget-object p0, v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_16
    if-gt v2, v6, :cond_17

    .line 57
    invoke-static {p0, v4}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v8

    goto :goto_9

    .line 58
    :cond_17
    invoke-static {p0}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    :cond_18
    :goto_9
    return-object v8
.end method

.method public static d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v3, v2, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    and-int/lit16 v0, v1, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 5
    invoke-static {p0}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 6
    invoke-static {p0}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 7
    :goto_1
    invoke-static {p0, v2}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    if-eqz v0, :cond_3

    .line 8
    :try_start_0
    new-instance v2, Le/d/b/a/b/e;

    invoke-direct {v2, v0, p0}, Le/d/b/a/b/e;-><init>(I[B)V

    goto :goto_2

    .line 9
    :cond_3
    new-instance v2, Le/d/b/a/b/e;

    const/16 v0, 0x6a

    .line 10
    invoke-direct {v2, v0, p0}, Le/d/b/a/b/e;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v2

    :catch_0
    return-object v1
.end method

.method public static e(Ljava/io/ByteArrayInputStream;)J
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v0, 0x7f

    if-le v1, v0, :cond_1

    .line 5
    invoke-static {p0}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 6
    :cond_1
    invoke-static {p0}, Le/d/b/a/b/n;->f(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Ljava/io/ByteArrayInputStream;)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v5, v3, [Ljava/lang/String;

    .line 2
    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x8

    if-gt v0, v4, :cond_3

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    if-eq v8, v2, :cond_1

    move v9, v1

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    new-array v10, v3, [Ljava/lang/String;

    .line 4
    invoke-static {v9, v10}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    shl-long/2addr v5, v4

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-wide v5

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method public static i(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    shl-int/lit8 v2, v2, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v2, v0

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v0

    :cond_2
    shl-int/lit8 p0, v2, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p0, v0

    return p0
.end method

.method public static j(Ljava/io/ByteArrayInputStream;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v2, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {p0}, Le/d/b/a/b/n;->i(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    return p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Value length > LENGTH_QUOTE!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/io/ByteArrayInputStream;I)[B
    .locals 8

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v5, v3, [Ljava/lang/String;

    .line 3
    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    const/16 v4, 0x22

    if-ne v0, p1, :cond_1

    if-ne v4, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/16 v5, 0x7f

    if-ne v5, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 7
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    if-eq v5, v2, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    new-array v7, v3, [Ljava/lang/String;

    .line 9
    invoke-static {v6, v7}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    :goto_3
    if-eq v2, v5, :cond_c

    if-eqz v5, :cond_c

    const/4 v6, 0x2

    const/16 v7, 0x7e

    if-ne p1, v6, :cond_6

    const/16 v6, 0x21

    if-lt v5, v6, :cond_5

    if-le v5, v7, :cond_4

    goto :goto_4

    :cond_4
    if-eq v5, v4, :cond_5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_5

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    move v6, v0

    goto :goto_5

    :cond_5
    :goto_4
    :pswitch_0
    move v6, v3

    :goto_5
    if-eqz v6, :cond_a

    .line 10
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8

    :cond_6
    const/16 v6, 0x20

    if-lt v5, v6, :cond_7

    if-le v5, v7, :cond_9

    :cond_7
    const/16 v6, 0x80

    if-lt v5, v6, :cond_8

    const/16 v6, 0xff

    if-gt v5, v6, :cond_8

    goto :goto_6

    :cond_8
    const/16 v6, 0x9

    if-eq v5, v6, :cond_9

    const/16 v6, 0xa

    if-eq v5, v6, :cond_9

    const/16 v6, 0xd

    if-eq v5, v6, :cond_9

    move v6, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v0

    :goto_7
    if-eqz v6, :cond_a

    .line 11
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 12
    :cond_a
    :goto_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    if-eq v5, v2, :cond_b

    move v6, v0

    goto :goto_9

    :cond_b
    move v6, v3

    :goto_9
    new-array v7, v3, [Ljava/lang/String;

    .line 13
    invoke-static {v6, v7}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_d

    .line 15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_a

    :cond_d
    const/4 p0, 0x0

    :goto_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Ljava/io/ByteArrayInputStream;I)I
    .locals 2

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public b()Le/d/b/a/b/f;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/d/b/a/b/n;->a:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/16 v3, 0x8d

    const/4 v6, 0x1

    const/16 v7, 0x84

    const/16 v8, 0x80

    const/4 v9, 0x0

    .line 2
    new-instance v10, Le/d/b/a/b/m;

    invoke-direct {v10}, Le/d/b/a/b/m;-><init>()V

    move v11, v6

    :catch_0
    :cond_1
    :goto_0
    const/16 v13, 0x89

    if-eqz v11, :cond_d

    .line 3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    if-lez v14, :cond_d

    .line 4
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 5
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    const/16 v15, 0x20

    if-lt v14, v15, :cond_2

    const/16 v15, 0x7f

    if-gt v14, v15, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 7
    invoke-static {v1, v9}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    goto :goto_0

    :cond_2
    const/16 v15, 0x81

    const-string v12, "/"

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 8
    :pswitch_1
    invoke-static {v1, v2}, Le/d/b/a/b/n;->c(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    goto :goto_0

    .line 9
    :pswitch_2
    :try_start_0
    invoke-static {v1}, Le/d/b/a/b/n;->e(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v10, v4, v5, v14}, Le/d/b/a/b/m;->h(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 12
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    .line 13
    :try_start_1
    invoke-static {v1}, Le/d/b/a/b/n;->e(Ljava/io/ByteArrayInputStream;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 15
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    .line 16
    invoke-static {v1}, Le/d/b/a/b/n;->d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 18
    :try_start_2
    invoke-static {v1}, Le/d/b/a/b/n;->e(Ljava/io/ByteArrayInputStream;)J

    .line 19
    invoke-static {v1}, Le/d/b/a/b/n;->f(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    const/16 v12, 0xa1

    .line 20
    invoke-virtual {v10, v4, v5, v12}, Le/d/b/a/b/m;->h(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 22
    :try_start_3
    invoke-static {v1}, Le/d/b/a/b/n;->e(Ljava/io/ByteArrayInputStream;)J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 23
    invoke-static {v1}, Le/d/b/a/b/n;->d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa0

    .line 24
    :try_start_4
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->g(Le/d/b/a/b/e;I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 25
    :pswitch_7
    invoke-static {v1}, Le/d/b/a/b/n;->d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 26
    :try_start_5
    invoke-virtual {v10, v4, v14}, Le/d/b/a/b/m;->g(Le/d/b/a/b/e;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 27
    :pswitch_8
    invoke-static {v1}, Le/d/b/a/b/n;->h(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 28
    :try_start_6
    invoke-virtual {v10, v4, v3}, Le/d/b/a/b/m;->i(II)V
    :try_end_6
    .catch Le/d/b/a/a; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 29
    :pswitch_9
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 30
    :try_start_7
    invoke-virtual {v10, v4, v14}, Le/d/b/a/b/m;->i(II)V
    :try_end_7
    .catch Le/d/b/a/a; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 31
    :pswitch_a
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 32
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    if-lt v4, v8, :cond_6

    if-ne v8, v4, :cond_3

    :try_start_8
    const-string v4, "personal"

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 34
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->j([BI)V

    goto/16 :goto_0

    :cond_3
    if-ne v15, v4, :cond_4

    const-string v4, "advertisement"

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 36
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->j([BI)V

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x82

    if-ne v5, v4, :cond_5

    const-string v4, "informational"

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 38
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->j([BI)V

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x83

    if-ne v5, v4, :cond_1

    const-string v4, "auto"

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 40
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->j([BI)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 41
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 42
    invoke-static {v1, v9}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8a

    .line 43
    :try_start_9
    invoke-virtual {v10, v4, v5}, Le/d/b/a/b/m;->j([BI)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 44
    :pswitch_b
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 45
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    if-ne v8, v4, :cond_8

    .line 46
    invoke-static {v1}, Le/d/b/a/b/n;->d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 47
    invoke-virtual {v4}, Le/d/b/a/b/e;->c()[B

    move-result-object v5

    .line 48
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([B)V

    .line 49
    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 50
    invoke-virtual {v14, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 51
    :cond_7
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Le/d/b/a/b/e;->e([B)V

    goto :goto_1

    .line 52
    :cond_8
    new-instance v4, Le/d/b/a/b/e;

    const-string v5, "insert-address-token"

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v12, 0x6a

    .line 54
    invoke-direct {v4, v12, v5}, Le/d/b/a/b/e;-><init>(I[B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2

    :cond_9
    :goto_1
    if-eqz v4, :cond_1

    .line 55
    :try_start_b
    invoke-virtual {v10, v4, v13}, Le/d/b/a/b/m;->g(Le/d/b/a/b/e;I)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 56
    :pswitch_c
    invoke-static {v1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    .line 57
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 58
    :try_start_c
    invoke-static {v1}, Le/d/b/a/b/n;->f(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v16
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    if-ne v15, v4, :cond_a

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v18, 0x3e8

    div-long v4, v4, v18

    add-long v16, v4, v16

    :cond_a
    move-wide/from16 v4, v16

    .line 60
    :try_start_d
    invoke-virtual {v10, v4, v5, v14}, Le/d/b/a/b/m;->h(JI)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 61
    :pswitch_d
    invoke-static {v1}, Le/d/b/a/b/n;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 62
    :try_start_e
    invoke-virtual {v10, v4, v14}, Le/d/b/a/b/m;->i(II)V
    :try_end_e
    .catch Le/d/b/a/a; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 63
    :pswitch_e
    :try_start_f
    invoke-static {v1}, Le/d/b/a/b/n;->f(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 64
    invoke-virtual {v10, v4, v5, v14}, Le/d/b/a/b/m;->h(JI)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    .line 65
    :pswitch_f
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 66
    invoke-static {v1, v4}, Le/d/b/a/b/n;->c(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    move-result-object v5

    if-eqz v5, :cond_b

    .line 67
    :try_start_10
    invoke-virtual {v10, v5, v7}, Le/d/b/a/b/m;->j([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    :catch_1
    :cond_b
    const/16 v5, 0x99

    .line 68
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sput-object v5, Le/d/b/a/b/n;->f:[B

    const/16 v5, 0x83

    .line 69
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sput-object v4, Le/d/b/a/b/n;->e:[B

    move v11, v9

    goto/16 :goto_0

    .line 70
    :pswitch_10
    invoke-static {v1, v9}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 71
    :try_start_11
    invoke-virtual {v10, v4, v14}, Le/d/b/a/b/m;->j([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_0

    .line 72
    :pswitch_11
    invoke-static {v1}, Le/d/b/a/b/n;->d(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {v4}, Le/d/b/a/b/e;->c()[B

    move-result-object v5

    .line 74
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    .line 75
    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_c

    .line 76
    invoke-virtual {v15, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 77
    :cond_c
    :try_start_12
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Le/d/b/a/b/e;->e([B)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2

    .line 78
    :try_start_13
    invoke-virtual {v10, v4, v14}, Le/d/b/a/b/m;->a(Le/d/b/a/b/e;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_0

    :catch_2
    :pswitch_12
    move-object v10, v2

    .line 79
    :cond_d
    iput-object v10, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    if-nez v10, :cond_e

    return-object v2

    :cond_e
    const/16 v1, 0x8c

    .line 80
    invoke-virtual {v10, v1}, Le/d/b/a/b/m;->e(I)I

    move-result v4

    .line 81
    iget-object v5, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    if-nez v5, :cond_f

    goto/16 :goto_2

    .line 82
    :cond_f
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    .line 83
    invoke-virtual {v5, v3}, Le/d/b/a/b/m;->e(I)I

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v3, 0x9b

    const/16 v10, 0x95

    const/16 v11, 0x97

    const/16 v12, 0x8b

    const/16 v14, 0x85

    const-wide/16 v16, -0x1

    const/16 v15, 0x98

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    .line 84
    :pswitch_13
    invoke-virtual {v5, v14}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v14

    cmp-long v1, v16, v14

    if-nez v1, :cond_11

    goto/16 :goto_2

    .line 85
    :cond_11
    invoke-virtual {v5, v13}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    .line 86
    :cond_12
    invoke-virtual {v5, v12}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_2

    .line 87
    :cond_13
    invoke-virtual {v5, v3}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_2

    .line 88
    :cond_14
    invoke-virtual {v5, v11}, Le/d/b/a/b/m;->c(I)[Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_24

    goto/16 :goto_2

    .line 89
    :pswitch_14
    invoke-virtual {v5, v13}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_2

    .line 90
    :cond_15
    invoke-virtual {v5, v12}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_16

    goto/16 :goto_2

    .line 91
    :cond_16
    invoke-virtual {v5, v3}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_2

    .line 92
    :cond_17
    invoke-virtual {v5, v11}, Le/d/b/a/b/m;->c(I)[Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_24

    goto/16 :goto_2

    .line 93
    :pswitch_15
    invoke-virtual {v5, v14}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v13

    cmp-long v1, v16, v13

    if-nez v1, :cond_18

    goto/16 :goto_2

    .line 94
    :cond_18
    invoke-virtual {v5, v12}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_19

    goto/16 :goto_2

    .line 95
    :cond_19
    invoke-virtual {v5, v10}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_2

    .line 96
    :cond_1a
    invoke-virtual {v5, v11}, Le/d/b/a/b/m;->c(I)[Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_24

    goto/16 :goto_2

    .line 97
    :pswitch_16
    invoke-virtual {v5, v15}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_24

    goto/16 :goto_2

    .line 98
    :pswitch_17
    invoke-virtual {v5, v7}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_2

    .line 99
    :cond_1b
    invoke-virtual {v5, v14}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v10

    cmp-long v1, v16, v10

    if-nez v1, :cond_24

    goto/16 :goto_2

    .line 100
    :pswitch_18
    invoke-virtual {v5, v10}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_2

    .line 101
    :cond_1c
    invoke-virtual {v5, v15}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_2

    :pswitch_19
    const/16 v1, 0x83

    .line 102
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_2

    :cond_1d
    const/16 v1, 0x88

    .line 103
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v10

    cmp-long v1, v16, v10

    if-nez v1, :cond_1e

    goto :goto_2

    :cond_1e
    const/16 v1, 0x8a

    .line 104
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_2

    :cond_1f
    const/16 v1, 0x8e

    .line 105
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v10

    cmp-long v1, v16, v10

    if-nez v1, :cond_20

    goto :goto_2

    .line 106
    :cond_20
    invoke-virtual {v5, v15}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_2

    :pswitch_1a
    const/16 v1, 0x92

    .line 107
    invoke-virtual {v5, v1}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    if-nez v1, :cond_21

    goto :goto_2

    .line 108
    :cond_21
    invoke-virtual {v5, v15}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_2

    .line 109
    :pswitch_1b
    invoke-virtual {v5, v7}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_2

    .line 110
    :cond_22
    invoke-virtual {v5, v13}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_2

    .line 111
    :cond_23
    invoke-virtual {v5, v15}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_2

    :cond_24
    move v1, v6

    goto :goto_3

    :goto_2
    move v1, v9

    :goto_3
    if-nez v1, :cond_25

    return-object v2

    .line 112
    :cond_25
    iget-object v1, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    .line 113
    iget-object v1, v1, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    const/16 v3, 0x99

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    goto :goto_4

    :cond_26
    move v6, v9

    :goto_4
    if-eqz v6, :cond_27

    .line 114
    iget-object v1, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-virtual {v1, v3}, Le/d/b/a/b/m;->e(I)I

    move-result v1

    goto :goto_5

    :cond_27
    move v1, v8

    :goto_5
    if-eq v8, v4, :cond_28

    if-ne v7, v4, :cond_29

    if-ne v1, v8, :cond_29

    .line 115
    :cond_28
    iget-object v3, v0, Le/d/b/a/b/n;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v3}, Le/d/b/a/b/n;->g(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/j;

    move-result-object v3

    iput-object v3, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    if-nez v3, :cond_29

    return-object v2

    :cond_29
    packed-switch v4, :pswitch_data_3

    goto/16 :goto_7

    .line 116
    :pswitch_1c
    new-instance v1, Le/d/b/a/b/p;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/p;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 117
    :pswitch_1d
    new-instance v1, Le/d/b/a/b/q;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/q;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 118
    :pswitch_1e
    new-instance v1, Le/d/b/a/b/d;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/d;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 119
    :pswitch_1f
    new-instance v1, Le/d/b/a/b/a;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/a;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 120
    :pswitch_20
    new-instance v3, Le/d/b/a/b/r;

    iget-object v4, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    iget-object v5, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    invoke-direct {v3, v4, v5}, Le/d/b/a/b/r;-><init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V

    if-eq v1, v8, :cond_2a

    return-object v3

    .line 121
    :cond_2a
    invoke-virtual {v4, v7}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v1

    if-nez v1, :cond_2b

    return-object v2

    .line 122
    :cond_2b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "application/vnd.wap.multipart.mixed"

    .line 123
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "application/vnd.wap.multipart.related"

    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "application/vnd.wap.multipart.alternative"

    .line 125
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_6

    .line 126
    :cond_2c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 127
    iget-object v1, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    invoke-virtual {v1, v9}, Le/d/b/a/b/j;->a(I)Le/d/b/a/b/o;

    move-result-object v1

    .line 128
    iget-object v2, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    .line 129
    iget-object v2, v2, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 130
    iget-object v2, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    .line 131
    iget-object v2, v2, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v2, v9, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-object v3

    :cond_2d
    return-object v2

    :cond_2e
    :goto_6
    return-object v3

    .line 132
    :pswitch_21
    new-instance v1, Le/d/b/a/b/i;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/i;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 133
    :pswitch_22
    new-instance v1, Le/d/b/a/b/h;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/h;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 134
    :pswitch_23
    new-instance v1, Le/d/b/a/b/s;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    invoke-direct {v1, v2}, Le/d/b/a/b/s;-><init>(Le/d/b/a/b/m;)V

    return-object v1

    .line 135
    :pswitch_24
    new-instance v1, Le/d/b/a/b/t;

    iget-object v2, v0, Le/d/b/a/b/n;->b:Le/d/b/a/b/m;

    iget-object v3, v0, Le/d/b/a/b/n;->c:Le/d/b/a/b/j;

    invoke-direct {v1, v2, v3}, Le/d/b/a/b/t;-><init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V

    return-object v1

    :goto_7
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_9
        :pswitch_8
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_7
        :pswitch_11
        :pswitch_10
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_10
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_d
        :pswitch_4
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_d
        :pswitch_7
        :pswitch_7
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x80
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public g(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/j;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    invoke-static/range {p1 .. p1}, Le/d/b/a/b/n;->i(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 2
    new-instance v4, Le/d/b/a/b/j;

    invoke-direct {v4}, Le/d/b/a/b/j;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_35

    .line 3
    invoke-static/range {p1 .. p1}, Le/d/b/a/b/n;->i(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 4
    invoke-static/range {p1 .. p1}, Le/d/b/a/b/n;->i(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 5
    new-instance v9, Le/d/b/a/b/o;

    invoke-direct {v9}, Le/d/b/a/b/o;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    if-gtz v10, :cond_1

    return-object v2

    .line 7
    :cond_1
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 8
    invoke-static {v1, v11}, Le/d/b/a/b/n;->c(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    move-result-object v12

    if-eqz v12, :cond_2

    .line 9
    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->k([B)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v12, Le/d/b/a/b/l;->a:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->k([B)V

    :goto_1
    const/16 v12, 0x97

    .line 11
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    if-eqz v13, :cond_3

    .line 12
    iget-object v14, v9, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v14, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    const/16 v12, 0x81

    .line 13
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_4

    .line 14
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Le/d/b/a/b/o;->g(I)V

    .line 15
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v7, v10

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-lez v7, :cond_19

    if-lez v7, :cond_5

    move v14, v13

    goto :goto_2

    :cond_5
    move v14, v5

    :goto_2
    new-array v15, v5, [Ljava/lang/String;

    .line 16
    invoke-static {v14, v15}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    move v15, v7

    :goto_3
    if-lez v15, :cond_17

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-eq v2, v11, :cond_6

    move v10, v13

    goto :goto_4

    :cond_6
    move v10, v5

    :goto_4
    new-array v12, v5, [Ljava/lang/String;

    .line 19
    invoke-static {v10, v12}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    add-int/lit8 v15, v15, -0x1

    const/16 v10, 0x7f

    if-le v2, v10, :cond_13

    const/16 v10, 0x8e

    if-eq v2, v10, :cond_11

    const/16 v10, 0xae

    if-eq v2, v10, :cond_a

    const/16 v10, 0xc0

    if-eq v2, v10, :cond_8

    const/16 v10, 0xc5

    if-eq v2, v10, :cond_a

    .line 20
    invoke-static {v1, v15}, Le/d/b/a/b/n;->l(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v11, v2, :cond_7

    goto/16 :goto_a

    :cond_7
    const/16 v12, 0x81

    goto/16 :goto_8

    .line 21
    :cond_8
    invoke-static {v1, v13}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {v9, v2}, Le/d/b/a/b/o;->i([B)V

    .line 23
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto :goto_6

    .line 24
    :cond_a
    iget-boolean v2, v0, Le/d/b/a/b/n;->d:Z

    if-eqz v2, :cond_10

    .line 25
    invoke-static/range {p1 .. p1}, Le/d/b/a/b/n;->j(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 26
    invoke-virtual {v1, v13}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/16 v15, 0x80

    if-ne v12, v15, :cond_b

    .line 29
    sget-object v12, Le/d/b/a/b/o;->e:[B

    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->h([B)V

    goto :goto_5

    :cond_b
    const/16 v15, 0x81

    if-ne v12, v15, :cond_c

    .line 30
    sget-object v12, Le/d/b/a/b/o;->f:[B

    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->h([B)V

    goto :goto_5

    :cond_c
    const/16 v15, 0x82

    if-ne v12, v15, :cond_d

    .line 31
    sget-object v12, Le/d/b/a/b/o;->g:[B

    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->h([B)V

    goto :goto_5

    .line 32
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 33
    invoke-static {v1, v5}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Le/d/b/a/b/o;->h([B)V

    .line 34
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    sub-int v12, v10, v12

    if-ge v12, v2, :cond_f

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/16 v15, 0x98

    if-ne v12, v15, :cond_e

    .line 36
    invoke-static {v1, v5}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    const-string v13, "null content-id"

    .line 37
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v13, v9, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v13, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    sub-int/2addr v10, v12

    if-ge v10, v2, :cond_f

    sub-int/2addr v2, v10

    .line 40
    new-array v10, v2, [B

    .line 41
    invoke-virtual {v1, v10, v5, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 42
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    :goto_6
    const/16 v12, 0x81

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    const/16 v12, 0x81

    goto/16 :goto_3

    :cond_11
    const/16 v12, 0x81

    .line 43
    invoke-static {v1, v5}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_12

    .line 44
    invoke-virtual {v9, v2}, Le/d/b/a/b/o;->j([B)V

    .line 45
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto :goto_7

    :cond_13
    const/16 v12, 0x81

    const/16 v13, 0x20

    if-lt v2, v13, :cond_15

    if-gt v2, v10, :cond_15

    .line 46
    invoke-static {v1, v5}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 47
    invoke-static {v1, v5}, Le/d/b/a/b/n;->k(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v10

    .line 48
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "null content-transfer-encoding"

    .line 49
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v2, v9, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v13, 0xc8

    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    :goto_7
    sub-int v2, v14, v2

    sub-int v2, v7, v2

    move v15, v2

    goto :goto_9

    .line 52
    :cond_15
    invoke-static {v1, v15}, Le/d/b/a/b/n;->l(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v11, v2, :cond_16

    goto :goto_a

    :cond_16
    :goto_8
    move v15, v5

    :goto_9
    const/4 v2, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_17
    if-eqz v15, :cond_18

    :goto_a
    move v2, v5

    goto :goto_b

    :cond_18
    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_1a

    const/4 v2, 0x0

    return-object v2

    :cond_19
    if-gez v7, :cond_1a

    return-object v2

    .line 53
    :cond_1a
    invoke-virtual {v9}, Le/d/b/a/b/o;->c()[B

    move-result-object v2

    if-nez v2, :cond_1b

    .line 54
    invoke-virtual {v9}, Le/d/b/a/b/o;->f()[B

    move-result-object v2

    if-nez v2, :cond_1b

    .line 55
    invoke-virtual {v9}, Le/d/b/a/b/o;->e()[B

    move-result-object v2

    if-nez v2, :cond_1b

    .line 56
    invoke-virtual {v9}, Le/d/b/a/b/o;->b()[B

    move-result-object v2

    if-nez v2, :cond_1b

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 60
    invoke-virtual {v9, v2}, Le/d/b/a/b/o;->j([B)V

    :cond_1b
    if-lez v8, :cond_30

    .line 61
    new-array v2, v8, [B

    .line 62
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v9}, Le/d/b/a/b/o;->d()[B

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>([B)V

    .line 63
    invoke-virtual {v1, v2, v5, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-string v10, "application/vnd.wap.multipart.alternative"

    .line 64
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 65
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v7}, Le/d/b/a/b/n;->g(Ljava/io/ByteArrayInputStream;)Le/d/b/a/b/j;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v5}, Le/d/b/a/b/j;->a(I)Le/d/b/a/b/o;

    move-result-object v9

    goto/16 :goto_17

    .line 67
    :cond_1c
    iget-object v7, v9, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v10, 0xc8

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_2e

    .line 68
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "base64"

    .line 69
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v12, 0x3d

    if-eqz v7, :cond_28

    .line 70
    sget-object v7, Le/d/b/a/b/b;->a:[B

    new-array v10, v8, [B

    move v13, v5

    move v14, v13

    :goto_c
    if-ge v13, v8, :cond_20

    .line 71
    aget-byte v15, v2, v13

    if-ne v15, v12, :cond_1d

    goto :goto_d

    .line 72
    :cond_1d
    aget-byte v12, v7, v15

    if-ne v12, v11, :cond_1e

    move v12, v5

    goto :goto_e

    :cond_1e
    :goto_d
    const/4 v12, 0x1

    :goto_e
    if-eqz v12, :cond_1f

    add-int/lit8 v12, v14, 0x1

    .line 73
    aput-byte v15, v10, v14

    move v14, v12

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0x3d

    goto :goto_c

    .line 74
    :cond_20
    new-array v2, v14, [B

    .line 75
    invoke-static {v10, v5, v2, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v14, :cond_21

    new-array v2, v5, [B

    goto/16 :goto_15

    .line 76
    :cond_21
    div-int/lit8 v8, v14, 0x4

    :goto_f
    add-int/lit8 v10, v14, -0x1

    .line 77
    aget-byte v11, v2, v10

    const/16 v12, 0x3d

    if-ne v11, v12, :cond_23

    if-nez v10, :cond_22

    new-array v2, v5, [B

    goto/16 :goto_15

    :cond_22
    move v14, v10

    goto :goto_f

    :cond_23
    sub-int/2addr v14, v8

    .line 78
    new-array v10, v14, [B

    move v11, v5

    move v12, v11

    :goto_10
    if-ge v11, v8, :cond_27

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v14, v13, 0x2

    .line 79
    aget-byte v14, v2, v14

    add-int/lit8 v15, v13, 0x3

    .line 80
    aget-byte v15, v2, v15

    .line 81
    aget-byte v16, v2, v13

    aget-byte v16, v7, v16

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 82
    aget-byte v13, v2, v13

    aget-byte v13, v7, v13

    const/16 v5, 0x3d

    if-eq v14, v5, :cond_24

    if-eq v15, v5, :cond_24

    .line 83
    aget-byte v5, v7, v14

    .line 84
    aget-byte v14, v7, v15

    shl-int/lit8 v15, v16, 0x2

    shr-int/lit8 v16, v13, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    .line 85
    aput-byte v15, v10, v12

    add-int/lit8 v15, v12, 0x1

    and-int/lit8 v13, v13, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v16, v5, 0x2

    and-int/lit8 v16, v16, 0xf

    or-int v13, v13, v16

    int-to-byte v13, v13

    .line 86
    aput-byte v13, v10, v15

    add-int/lit8 v13, v12, 0x2

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v14

    int-to-byte v5, v5

    .line 87
    aput-byte v5, v10, v13

    goto :goto_11

    :cond_24
    if-ne v14, v5, :cond_25

    shl-int/lit8 v14, v16, 0x2

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    .line 88
    aput-byte v13, v10, v12

    goto :goto_11

    :cond_25
    if-ne v15, v5, :cond_26

    .line 89
    aget-byte v5, v7, v14

    shl-int/lit8 v14, v16, 0x2

    shr-int/lit8 v15, v13, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    .line 90
    aput-byte v14, v10, v12

    add-int/lit8 v14, v12, 0x1

    and-int/lit8 v13, v13, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 91
    aput-byte v5, v10, v14

    :cond_26
    :goto_11
    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_10

    :cond_27
    move-object v2, v10

    goto :goto_15

    :cond_28
    const-string v5, "quoted-printable"

    .line 92
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 93
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v8, :cond_2d

    .line 94
    aget-byte v10, v2, v7

    const/16 v12, 0x3d

    if-ne v10, v12, :cond_2c

    const/16 v10, 0xd

    add-int/lit8 v13, v7, 0x1

    .line 95
    :try_start_0
    aget-byte v14, v2, v13

    int-to-char v14, v14

    if-ne v10, v14, :cond_29

    const/16 v10, 0xa

    add-int/lit8 v7, v7, 0x2

    aget-byte v14, v2, v7

    int-to-char v14, v14

    if-ne v10, v14, :cond_29

    goto :goto_14

    .line 96
    :cond_29
    aget-byte v7, v2, v13

    int-to-char v7, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/lit8 v13, v13, 0x1

    .line 97
    aget-byte v14, v2, v13

    int-to-char v14, v14

    invoke-static {v14, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-eq v7, v11, :cond_2b

    if-ne v10, v11, :cond_2a

    goto :goto_13

    :cond_2a
    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v10

    int-to-char v7, v7

    .line 98
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v13

    goto :goto_14

    :catch_0
    :cond_2b
    :goto_13
    const/4 v2, 0x0

    goto :goto_15

    .line 99
    :cond_2c
    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_14
    const/4 v10, 0x1

    add-int/2addr v7, v10

    goto :goto_12

    :cond_2d
    const/4 v10, 0x1

    .line 100
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_16

    :cond_2e
    :goto_15
    const/4 v10, 0x1

    :goto_16
    if-nez v2, :cond_2f

    const/4 v5, 0x0

    return-object v5

    :cond_2f
    const/4 v5, 0x0

    .line 101
    iput-object v2, v9, Le/d/b/a/b/o;->c:[B

    .line 102
    array-length v2, v2

    iput v2, v9, Le/d/b/a/b/o;->d:I

    goto :goto_18

    :cond_30
    :goto_17
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 103
    :goto_18
    sget-object v2, Le/d/b/a/b/n;->e:[B

    if-nez v2, :cond_31

    sget-object v7, Le/d/b/a/b/n;->f:[B

    if-nez v7, :cond_31

    goto :goto_1a

    .line 104
    :cond_31
    sget-object v7, Le/d/b/a/b/n;->f:[B

    if-eqz v7, :cond_32

    .line 105
    invoke-virtual {v9}, Le/d/b/a/b/o;->b()[B

    move-result-object v2

    if-eqz v2, :cond_33

    .line 106
    sget-object v7, Le/d/b/a/b/n;->f:[B

    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_19

    :cond_32
    if-eqz v2, :cond_33

    .line 107
    invoke-virtual {v9}, Le/d/b/a/b/o;->d()[B

    move-result-object v2

    if-eqz v2, :cond_33

    .line 108
    sget-object v7, Le/d/b/a/b/n;->e:[B

    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_33

    :goto_19
    const/4 v13, 0x0

    goto :goto_1b

    :cond_33
    :goto_1a
    move v13, v10

    :goto_1b
    if-nez v13, :cond_34

    .line 109
    iget-object v2, v4, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v9}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_1c

    :cond_34
    const/4 v7, 0x0

    .line 110
    iget-object v2, v4, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move-object v2, v5

    move v5, v7

    goto/16 :goto_0

    :cond_35
    return-object v4
.end method
