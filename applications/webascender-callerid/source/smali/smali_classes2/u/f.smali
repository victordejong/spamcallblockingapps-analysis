.class public final Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/f$c;,
        Lu/f$b;,
        Lu/f$a;
    }
.end annotation


# instance fields
.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:[B

.field final j:[B

.field final k:I


# direct methods
.method constructor <init>(Lu/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu/f$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->f:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lu/f$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lu/f$a;->d:[B

    iput-object v0, p0, Lu/f;->i:[B

    .line 5
    iget-object v0, p1, Lu/f$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->h:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lu/f$a;->e:[B

    iput-object v0, p0, Lu/f;->j:[B

    .line 7
    iget p1, p1, Lu/f$a;->f:I

    iput p1, p0, Lu/f;->k:I

    return-void
.end method

.method constructor <init>(Lu/f$c;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Lu/f$c;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->f:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lu/f$c;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->g:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lu/f$c;->i:[B

    iput-object v0, p0, Lu/f;->i:[B

    .line 12
    iget-object v0, p1, Lu/f$c;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/f;->h:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lu/f$c;->j:[B

    iput-object v0, p0, Lu/f;->j:[B

    .line 14
    iget p1, p1, Lu/f$c;->k:I

    iput p1, p0, Lu/f;->k:I

    return-void
.end method

.method static a(Ljava/lang/String;)Lu/f$b;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3a

    const/4 v6, 0x1

    if-ge v2, v0, :cond_4

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-ne v7, v5, :cond_2

    if-eqz v4, :cond_1

    .line 3
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v7}, Lu/f;->k(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lu/f;->g(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0

    :cond_5
    if-ne v0, v6, :cond_6

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_6

    .line 10
    sget-object p0, Lu/f$b;->IPv4Embedded:Lu/f$b;

    return-object p0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    :goto_2
    if-ge v0, v2, :cond_9

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x66

    if-eq v1, v3, :cond_8

    const/16 v3, 0x46

    if-eq v1, v3, :cond_8

    const/16 v3, 0x30

    if-eq v1, v3, :cond_8

    .line 13
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_9
    sget-object p0, Lu/f$b;->IPv4Embedded:Lu/f$b;

    return-object p0

    .line 15
    :cond_a
    :goto_3
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0

    .line 16
    :cond_b
    sget-object p0, Lu/f$b;->IPv6:Lu/f$b;

    return-object p0

    :cond_c
    if-eqz v4, :cond_d

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lu/f;->g(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 18
    sget-object p0, Lu/f$b;->IPv4:Lu/f$b;

    return-object p0

    .line 19
    :cond_d
    sget-object p0, Lu/f$b;->Unknown:Lu/f$b;

    return-object p0
.end method

.method static b(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-eq v4, v1, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_2

    :cond_0
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    if-eq v5, v1, :cond_2

    add-int/lit8 v4, v5, 0x1

    .line 4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 5
    aput-byte v2, v0, v3

    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    :cond_2
    move v4, v5

    :goto_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 6
    aput-byte v2, v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 7
    aput-byte v2, v0, v3

    :goto_3
    move v2, v4

    :goto_4
    move v3, v5

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static g(Ljava/lang/String;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lu/f;->h(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lu/f;->h(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lu/f;->h(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0, v0, p2}, Lu/f;->h(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static h(Ljava/lang/CharSequence;II)Z
    .locals 6

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_6

    const/4 v2, 0x3

    if-gt p2, v2, :cond_6

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x39

    if-ne p2, v2, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 2
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v4, :cond_3

    const/16 p1, 0x31

    if-gt v3, p1, :cond_1

    if-gt p2, v5, :cond_1

    if-le p0, v5, :cond_2

    :cond_1
    const/16 p1, 0x32

    if-ne v3, p1, :cond_3

    const/16 p1, 0x35

    if-gt p2, p1, :cond_3

    if-le p0, p1, :cond_2

    if-ge p2, p1, :cond_3

    if-gt p0, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-gt v3, v5, :cond_6

    if-eq p2, v1, :cond_5

    add-int/2addr p1, v1

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lu/f;->i(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_0
    return v0
.end method

.method static i(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j()Lu/f$a;
    .locals 1

    .line 1
    new-instance v0, Lu/f$a;

    invoke-direct {v0}, Lu/f$a;-><init>()V

    return-object v0
.end method

.method static k(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static l(Ljava/lang/String;)S
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method static o(Ljava/lang/String;)[B
    .locals 8

    const-string v0, ":"

    const/16 v1, 0xa

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_e

    array-length v0, p0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 3
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    if-ltz v0, :cond_1

    return-object v1

    :cond_1
    move v0, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    if-ltz v0, :cond_6

    .line 5
    array-length v4, p0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 6
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    if-eqz v5, :cond_5

    return-object v1

    :cond_4
    move v5, v0

    .line 7
    :cond_5
    array-length v6, p0

    sub-int/2addr v6, v2

    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_7

    return-object v1

    .line 8
    :cond_6
    array-length v5, p0

    const/4 v4, 0x0

    :cond_7
    add-int v6, v5, v4

    rsub-int/lit8 v6, v6, 0x8

    if-ltz v0, :cond_8

    if-lt v6, v2, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_a

    :cond_9
    return-object v1

    :cond_a
    :goto_1
    const/16 v0, 0x10

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_b

    .line 10
    :try_start_0
    aget-object v7, p0, v2

    invoke-static {v7}, Lu/f;->l(Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_c

    .line 11
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    if-lez v4, :cond_d

    .line 12
    array-length v2, p0

    sub-int/2addr v2, v4

    aget-object v2, p0, v2

    invoke-static {v2}, Lu/f;->l(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :catch_0
    return-object v1

    .line 13
    :cond_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_e
    :goto_5
    return-object v1
.end method

.method static q([B)Ljava/lang/String;
    .locals 14

    .line 1
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 2
    :goto_0
    array-length v9, p0

    if-ge v4, v9, :cond_4

    .line 3
    aget-byte v9, p0, v4

    if-nez v9, :cond_0

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    if-nez v9, :cond_0

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_1

    :cond_0
    if-ltz v7, :cond_2

    sub-int v5, v4, v7

    if-le v5, v8, :cond_1

    move v8, v5

    move v6, v7

    :cond_1
    const/4 v5, 0x0

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const-string p0, "::"

    return-object p0

    :cond_5
    if-ne v6, v1, :cond_6

    if-eq v7, v1, :cond_6

    rsub-int/lit8 v8, v7, 0x10

    move v6, v7

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_10

    const/16 v5, 0x3a

    if-ne v1, v6, :cond_8

    add-int/lit8 v7, v4, 0x1

    .line 5
    aput-char v5, v0, v4

    add-int/2addr v1, v8

    .line 6
    array-length v4, p0

    if-ne v1, v4, :cond_7

    add-int/lit8 v4, v7, 0x1

    aput-char v5, v0, v7

    goto :goto_2

    :cond_7
    move v4, v7

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v7, v4, 0x1

    .line 7
    aput-char v5, v0, v4

    move v4, v7

    :cond_9
    add-int/lit8 v5, v1, 0x1

    .line 8
    aget-byte v1, p0, v1

    add-int/lit8 v7, v5, 0x1

    .line 9
    aget-byte v5, p0, v5

    .line 10
    sget-object v9, Lu/i/a;->a:[C

    shr-int/lit8 v10, v1, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_a

    const/4 v12, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    :goto_3
    if-nez v12, :cond_b

    add-int/lit8 v13, v4, 0x1

    .line 11
    aput-char v10, v0, v4

    move v4, v13

    :cond_b
    and-int/lit8 v1, v1, 0xf

    .line 12
    aget-char v1, v9, v1

    if-eqz v12, :cond_c

    if-ne v1, v11, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_d

    add-int/lit8 v12, v4, 0x1

    .line 13
    aput-char v1, v0, v4

    move v4, v12

    :cond_d
    shr-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 14
    aget-char v1, v9, v1

    if-eqz v10, :cond_e

    if-eq v1, v11, :cond_f

    :cond_e
    add-int/lit8 v10, v4, 0x1

    .line 15
    aput-char v1, v0, v4

    move v4, v10

    :cond_f
    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 16
    aget-char v5, v9, v5

    aput-char v5, v0, v4

    move v4, v1

    move v1, v7

    goto :goto_2

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->i:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lu/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lu/f;

    .line 3
    iget-object v1, p0, Lu/f;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lu/f;->f:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lu/f;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lu/f;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lu/f;->g:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lu/f;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lu/f;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lu/f;->h:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lu/f;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget v1, p0, Lu/f;->k:I

    iget p1, p1, Lu/f;->k:I

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->j:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lu/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Lu/f;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Lu/f;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 4
    iget v1, p0, Lu/f;->k:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lu/f;->k:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lu/f$a;
    .locals 1

    .line 1
    new-instance v0, Lu/f$a;

    invoke-direct {v0, p0}, Lu/f$a;-><init>(Lu/f;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Endpoint{serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu/f;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lu/f$c;

    invoke-direct {v0, p0}, Lu/f$c;-><init>(Lu/f;)V

    return-object v0
.end method
