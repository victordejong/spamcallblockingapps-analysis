.class public final Le/k/a/b/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[B

.field public static final c:Le/k/a/b/w/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/w/a;->a:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 2
    sput-object v0, Le/k/a/b/w/d;->a:[C

    .line 3
    sget-object v0, Le/k/a/b/w/a;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4
    sput-object v0, Le/k/a/b/w/d;->b:[B

    .line 5
    new-instance v0, Le/k/a/b/w/d;

    invoke-direct {v0}, Le/k/a/b/w/d;-><init>()V

    sput-object v0, Le/k/a/b/w/d;->c:Le/k/a/b/w/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 3

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Broken surrogate pair: first char 0x"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; illegal combination"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Le/k/a/b/w/k;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)[B
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_10

    add-int/lit8 v8, v5, 0x1

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v9, 0x7f

    if-gt v5, v9, :cond_3

    if-lt v6, v1, :cond_1

    if-nez v7, :cond_0

    .line 3
    new-instance v7, Le/k/a/b/a0/c;

    invoke-direct {v7, v2, v6}, Le/k/a/b/a0/c;-><init>([BI)V

    .line 4
    :cond_0
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 5
    iget-object v1, v7, Le/k/a/b/a0/c;->d:[B

    .line 6
    array-length v2, v1

    move v6, v4

    move v11, v2

    move-object v2, v1

    move v1, v11

    :cond_1
    add-int/lit8 v9, v6, 0x1

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v2, v6

    if-lt v8, v0, :cond_2

    move v6, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v5, v8, 0x1

    .line 8
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v8, v5

    move v5, v6

    move v6, v9

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    .line 9
    new-instance v7, Le/k/a/b/a0/c;

    invoke-direct {v7, v2, v6}, Le/k/a/b/a0/c;-><init>([BI)V

    :cond_4
    if-lt v6, v1, :cond_5

    .line 10
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 11
    iget-object v2, v7, Le/k/a/b/a0/c;->d:[B

    .line 12
    array-length v1, v2

    move v6, v4

    :cond_5
    const/16 v9, 0x800

    if-ge v5, v9, :cond_6

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v5, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    .line 13
    aput-byte v10, v2, v6

    goto/16 :goto_3

    :cond_6
    const v9, 0xd800

    if-lt v5, v9, :cond_d

    const v9, 0xdfff

    if-le v5, v9, :cond_7

    goto :goto_2

    :cond_7
    const v9, 0xdbff

    if-gt v5, v9, :cond_c

    if-ge v8, v0, :cond_b

    add-int/lit8 v9, v8, 0x1

    .line 14
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v5, v8}, Le/k/a/b/w/d;->a(II)I

    move-result v5

    const v8, 0x10ffff

    if-gt v5, v8, :cond_a

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v10, v5, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    .line 15
    aput-byte v10, v2, v6

    if-lt v8, v1, :cond_8

    .line 16
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 17
    iget-object v2, v7, Le/k/a/b/a0/c;->d:[B

    .line 18
    array-length v1, v2

    move v8, v4

    :cond_8
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 19
    aput-byte v10, v2, v8

    if-lt v6, v1, :cond_9

    .line 20
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 21
    iget-object v2, v7, Le/k/a/b/a0/c;->d:[B

    .line 22
    array-length v1, v2

    move v6, v4

    :cond_9
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 23
    aput-byte v10, v2, v6

    move v6, v5

    move v5, v9

    goto :goto_4

    .line 24
    :cond_a
    invoke-static {v5}, Le/k/a/b/w/d;->b(I)V

    throw v3

    .line 25
    :cond_b
    invoke-static {v5}, Le/k/a/b/w/d;->b(I)V

    throw v3

    .line 26
    :cond_c
    invoke-static {v5}, Le/k/a/b/w/d;->b(I)V

    throw v3

    :cond_d
    :goto_2
    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v5, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    .line 27
    aput-byte v10, v2, v6

    if-lt v9, v1, :cond_e

    .line 28
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 29
    iget-object v1, v7, Le/k/a/b/a0/c;->d:[B

    .line 30
    array-length v2, v1

    move v9, v4

    move v11, v2

    move-object v2, v1

    move v1, v11

    :cond_e
    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 31
    aput-byte v10, v2, v9

    move v9, v6

    :goto_3
    move v6, v5

    move v5, v8

    move v8, v9

    :goto_4
    if-lt v8, v1, :cond_f

    .line 32
    invoke-virtual {v7}, Le/k/a/b/a0/c;->b()V

    .line 33
    iget-object v1, v7, Le/k/a/b/a0/c;->d:[B

    .line 34
    array-length v2, v1

    move v8, v4

    move v11, v2

    move-object v2, v1

    move v1, v11

    :cond_f
    add-int/lit8 v9, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 35
    aput-byte v6, v2, v8

    move v6, v9

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v7, :cond_11

    .line 36
    invoke-static {v2, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 37
    :cond_11
    iput v6, v7, Le/k/a/b/a0/c;->e:I

    .line 38
    invoke-virtual {v7}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)[C
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x78

    new-array v1, v1, [C

    .line 1
    sget-object v2, Le/k/a/b/w/a;->h:[I

    .line 2
    array-length v3, v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move-object v10, v8

    move v7, v6

    move v9, v7

    :goto_0
    if-ge v7, v4, :cond_9

    .line 4
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_6

    .line 5
    aget v12, v2, v11

    if-eqz v12, :cond_6

    const/4 v11, 0x2

    const/4 v12, 0x6

    if-nez v10, :cond_1

    new-array v10, v12, [C

    const/16 v13, 0x5c

    aput-char v13, v10, v6

    const/16 v13, 0x30

    aput-char v13, v10, v11

    const/4 v14, 0x3

    aput-char v13, v10, v14

    :cond_1
    add-int/lit8 v13, v7, 0x1

    .line 6
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 7
    aget v14, v2, v7

    const/4 v15, 0x1

    if-gez v14, :cond_2

    const/16 v11, 0x75

    .line 8
    aput-char v11, v10, v15

    .line 9
    sget-object v11, Le/k/a/b/w/d;->a:[C

    shr-int/lit8 v14, v7, 0x4

    aget-char v14, v11, v14

    const/4 v15, 0x4

    aput-char v14, v10, v15

    and-int/lit8 v7, v7, 0xf

    .line 10
    aget-char v7, v11, v7

    const/4 v11, 0x5

    aput-char v7, v10, v11

    move v11, v12

    goto :goto_1

    :cond_2
    int-to-char v7, v14

    .line 11
    aput-char v7, v10, v15

    :goto_1
    add-int v7, v9, v11

    .line 12
    array-length v12, v1

    if-le v7, v12, :cond_5

    .line 13
    array-length v7, v1

    sub-int/2addr v7, v9

    if-lez v7, :cond_3

    .line 14
    invoke-static {v10, v6, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez v8, :cond_4

    .line 15
    new-instance v8, Le/k/a/b/a0/n;

    invoke-direct {v8, v5, v1}, Le/k/a/b/a0/n;-><init>(Le/k/a/b/a0/a;[C)V

    .line 16
    :cond_4
    invoke-virtual {v8}, Le/k/a/b/a0/n;->l()[C

    move-result-object v1

    sub-int/2addr v11, v7

    .line 17
    invoke-static {v10, v7, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v11

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {v10, v6, v1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v7

    :goto_2
    move v7, v13

    goto :goto_0

    .line 19
    :cond_6
    array-length v12, v1

    if-lt v9, v12, :cond_8

    if-nez v8, :cond_7

    .line 20
    new-instance v8, Le/k/a/b/a0/n;

    invoke-direct {v8, v5, v1}, Le/k/a/b/a0/n;-><init>(Le/k/a/b/a0/a;[C)V

    .line 21
    :cond_7
    invoke-virtual {v8}, Le/k/a/b/a0/n;->l()[C

    move-result-object v1

    move v9, v6

    :cond_8
    add-int/lit8 v12, v9, 0x1

    .line 22
    aput-char v11, v1, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    if-lt v7, v4, :cond_0

    :cond_9
    if-nez v8, :cond_a

    .line 23
    invoke-static {v1, v6, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0

    .line 24
    :cond_a
    iput v9, v8, Le/k/a/b/a0/n;->i:I

    .line 25
    invoke-virtual {v8}, Le/k/a/b/a0/n;->e()[C

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_14

    .line 2
    sget-object v7, Le/k/a/b/w/a;->h:[I

    .line 3
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_4

    .line 4
    aget v10, v7, v8

    if-eqz v10, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    array-length v9, v1

    if-lt v5, v9, :cond_3

    if-nez v6, :cond_2

    .line 6
    new-instance v6, Le/k/a/b/a0/c;

    invoke-direct {v6, v1, v5}, Le/k/a/b/a0/c;-><init>([BI)V

    .line 7
    :cond_2
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 8
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v5, v3

    :cond_3
    add-int/lit8 v9, v5, 0x1

    int-to-byte v8, v8

    .line 9
    aput-byte v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    if-lt v4, v0, :cond_0

    goto/16 :goto_7

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    .line 10
    new-instance v6, Le/k/a/b/a0/c;

    invoke-direct {v6, v1, v5}, Le/k/a/b/a0/c;-><init>([BI)V

    .line 11
    :cond_5
    array-length v8, v1

    if-lt v5, v8, :cond_6

    .line 12
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 13
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v5, v3

    :cond_6
    add-int/lit8 v8, v4, 0x1

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v9, :cond_9

    .line 15
    aget v1, v7, v4

    .line 16
    iput v5, v6, Le/k/a/b/a0/c;->e:I

    const/16 v5, 0x5c

    .line 17
    invoke-virtual {v6, v5}, Le/k/a/b/a0/c;->d(I)V

    if-gez v1, :cond_8

    const/16 v1, 0x75

    .line 18
    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    const/16 v1, 0xff

    if-le v4, v1, :cond_7

    shr-int/lit8 v1, v4, 0x8

    .line 19
    sget-object v5, Le/k/a/b/w/d;->b:[B

    shr-int/lit8 v7, v1, 0x4

    aget-byte v7, v5, v7

    invoke-virtual {v6, v7}, Le/k/a/b/a0/c;->d(I)V

    and-int/lit8 v1, v1, 0xf

    .line 20
    aget-byte v1, v5, v1

    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    and-int/lit16 v4, v4, 0xff

    goto :goto_2

    :cond_7
    const/16 v1, 0x30

    .line 21
    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    .line 22
    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    .line 23
    :goto_2
    sget-object v1, Le/k/a/b/w/d;->b:[B

    shr-int/lit8 v5, v4, 0x4

    aget-byte v5, v1, v5

    invoke-virtual {v6, v5}, Le/k/a/b/a0/c;->d(I)V

    and-int/lit8 v4, v4, 0xf

    .line 24
    aget-byte v1, v1, v4

    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    goto :goto_3

    :cond_8
    int-to-byte v1, v1

    .line 25
    invoke-virtual {v6, v1}, Le/k/a/b/a0/c;->d(I)V

    .line 26
    :goto_3
    iget v5, v6, Le/k/a/b/a0/c;->e:I

    .line 27
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v4, v8

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x7ff

    if-gt v4, v7, :cond_a

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v9, v4, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 28
    aput-byte v9, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    goto/16 :goto_5

    :cond_a
    const v7, 0xd800

    if-lt v4, v7, :cond_11

    const v7, 0xdfff

    if-le v4, v7, :cond_b

    goto :goto_4

    :cond_b
    const v7, 0xdbff

    if-gt v4, v7, :cond_10

    if-ge v8, v0, :cond_f

    add-int/lit8 v7, v8, 0x1

    .line 29
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v4, v8}, Le/k/a/b/w/d;->a(II)I

    move-result v4

    const v8, 0x10ffff

    if-gt v4, v8, :cond_e

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v4, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 30
    aput-byte v9, v1, v5

    .line 31
    array-length v5, v1

    if-lt v8, v5, :cond_c

    .line 32
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 33
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v8, v3

    :cond_c
    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 34
    aput-byte v9, v1, v8

    .line 35
    array-length v8, v1

    if-lt v5, v8, :cond_d

    .line 36
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 37
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v5, v3

    :cond_d
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 38
    aput-byte v9, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v5, v4

    move v4, v7

    goto :goto_6

    .line 39
    :cond_e
    invoke-static {v4}, Le/k/a/b/w/d;->b(I)V

    throw v2

    .line 40
    :cond_f
    invoke-static {v4}, Le/k/a/b/w/d;->b(I)V

    throw v2

    .line 41
    :cond_10
    invoke-static {v4}, Le/k/a/b/w/d;->b(I)V

    throw v2

    :cond_11
    :goto_4
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v9, v4, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 42
    aput-byte v9, v1, v5

    .line 43
    array-length v5, v1

    if-lt v7, v5, :cond_12

    .line 44
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 45
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v7, v3

    :cond_12
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 46
    aput-byte v9, v1, v7

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v7, v5

    :goto_5
    move v5, v4

    move v4, v8

    move v8, v7

    .line 47
    :goto_6
    array-length v7, v1

    if-lt v8, v7, :cond_13

    .line 48
    invoke-virtual {v6}, Le/k/a/b/a0/c;->b()V

    .line 49
    iget-object v1, v6, Le/k/a/b/a0/c;->d:[B

    move v8, v3

    :cond_13
    add-int/lit8 v7, v8, 0x1

    int-to-byte v5, v5

    .line 50
    aput-byte v5, v1, v8

    move v5, v7

    goto/16 :goto_0

    :cond_14
    :goto_7
    if-nez v6, :cond_15

    .line 51
    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 52
    :cond_15
    iput v5, v6, Le/k/a/b/a0/c;->e:I

    .line 53
    invoke-virtual {v6}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1
.end method
