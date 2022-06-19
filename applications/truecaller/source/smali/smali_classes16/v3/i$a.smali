.class public final Lv3/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lv3/i$a;[BIII)Lv3/i;
    .locals 6

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_1

    array-length p3, p1

    :cond_1
    const-string p0, "$this$toByteString"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length p0, p1

    int-to-long v0, p0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    add-int/2addr p3, p2

    const-string p0, "$this$copyOfRangeImpl"

    .line 3
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p0, p1

    invoke-static {p3, p0}, Le/q/f/a/d/a;->S(II)V

    .line 5
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lv3/i;

    invoke-direct {p1, p0}, Lv3/i;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lv3/i;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "$this$decodeBase64"

    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lv3/a;->a:[B

    const-string v1, "$this$decodeBase64ToArray"

    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_1

    add-int/lit8 v6, v1, -0x1

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_0

    if-eq v7, v5, :cond_0

    if-eq v7, v4, :cond_0

    if-eq v7, v3, :cond_0

    if-eq v7, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x8

    .line 4
    div-long/2addr v6, v8

    long-to-int v6, v6

    new-array v7, v6, [B

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_2
    const/4 v12, 0x0

    if-ge v8, v1, :cond_d

    .line 5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5a

    const/16 v15, 0x41

    if-le v15, v13, :cond_2

    goto :goto_3

    :cond_2
    if-lt v14, v13, :cond_3

    add-int/lit8 v13, v13, -0x41

    goto :goto_8

    :cond_3
    :goto_3
    const/16 v14, 0x7a

    const/16 v15, 0x61

    if-le v15, v13, :cond_4

    goto :goto_4

    :cond_4
    if-lt v14, v13, :cond_5

    add-int/lit8 v13, v13, -0x47

    goto :goto_8

    :cond_5
    :goto_4
    const/16 v14, 0x39

    const/16 v15, 0x30

    if-le v15, v13, :cond_6

    goto :goto_5

    :cond_6
    if-lt v14, v13, :cond_7

    add-int/lit8 v13, v13, 0x4

    goto :goto_8

    :cond_7
    :goto_5
    const/16 v14, 0x2b

    if-eq v13, v14, :cond_b

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_8

    goto :goto_7

    :cond_8
    const/16 v14, 0x2f

    if-eq v13, v14, :cond_a

    const/16 v14, 0x5f

    if-ne v13, v14, :cond_9

    goto :goto_6

    :cond_9
    if-eq v13, v5, :cond_c

    if-eq v13, v4, :cond_c

    if-eq v13, v3, :cond_c

    if-ne v13, v2, :cond_11

    goto :goto_9

    :cond_a
    :goto_6
    const/16 v13, 0x3f

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v13, 0x3e

    :goto_8
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    .line 6
    rem-int/lit8 v12, v9, 0x4

    if-nez v12, :cond_c

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v13, v10, 0x10

    int-to-byte v13, v13

    .line 7
    aput-byte v13, v7, v11

    add-int/lit8 v11, v12, 0x1

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    .line 8
    aput-byte v13, v7, v12

    add-int/lit8 v12, v11, 0x1

    int-to-byte v13, v10

    .line 9
    aput-byte v13, v7, v11

    move v11, v12

    :cond_c
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10
    :cond_d
    rem-int/lit8 v9, v9, 0x4

    const/4 v0, 0x1

    if-eq v9, v0, :cond_11

    const/4 v0, 0x2

    if-eq v9, v0, :cond_f

    const/4 v0, 0x3

    if-eq v9, v0, :cond_e

    goto :goto_a

    :cond_e
    shl-int/lit8 v0, v10, 0x6

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    .line 11
    aput-byte v2, v7, v11

    add-int/lit8 v11, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 12
    aput-byte v0, v7, v1

    goto :goto_a

    :cond_f
    shl-int/lit8 v0, v10, 0xc

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 13
    aput-byte v0, v7, v11

    move v11, v1

    :goto_a
    if-ne v11, v6, :cond_10

    goto :goto_b

    .line 14
    :cond_10
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v7, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move-object v7, v12

    :goto_b
    if-eqz v7, :cond_12

    .line 15
    new-instance v12, Lv3/i;

    invoke-direct {v12, v7}, Lv3/i;-><init>([B)V

    :cond_12
    return-object v12
.end method

.method public final b(Ljava/lang/String;)Lv3/i;
    .locals 6

    const-string v0, "$this$decodeHex"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    :goto_1
    if-ge v2, v0, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lv3/d0/b;->a(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v1

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lv3/d0/b;->a(C)I

    move-result v4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Lv3/i;

    invoke-direct {p1, v3}, Lv3/i;-><init>([B)V

    return-object p1

    :cond_2
    const-string v0, "Unexpected hex string: "

    .line 7
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lv3/i;
    .locals 3

    const-string v0, "$this$encodeUtf8"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lv3/i;

    const-string v1, "$this$asUtf8ToByteArray"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {v0, v1}, Lv3/i;-><init>([B)V

    .line 5
    iput-object p1, v0, Lv3/i;->b:Ljava/lang/String;

    return-object v0
.end method
