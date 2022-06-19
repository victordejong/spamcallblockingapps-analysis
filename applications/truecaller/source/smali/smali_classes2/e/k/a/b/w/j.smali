.class public Le/k/a/b/w/j;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/b/w/b;

.field public b:Ljava/io/InputStream;

.field public c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:C

.field public h:I

.field public i:I

.field public final j:Z

.field public k:[C


# direct methods
.method public constructor <init>(Le/k/a/b/w/b;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-char v0, p0, Le/k/a/b/w/j;->g:C

    .line 3
    iput-object p1, p0, Le/k/a/b/w/j;->a:Le/k/a/b/w/b;

    .line 4
    iput-object p2, p0, Le/k/a/b/w/j;->b:Ljava/io/InputStream;

    .line 5
    iput-object p3, p0, Le/k/a/b/w/j;->c:[B

    .line 6
    iput p4, p0, Le/k/a/b/w/j;->d:I

    .line 7
    iput p5, p0, Le/k/a/b/w/j;->e:I

    .line 8
    iput-boolean p6, p0, Le/k/a/b/w/j;->f:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 9
    :cond_0
    iput-boolean v0, p0, Le/k/a/b/w/j;->j:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/w/j;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/k/a/b/w/j;->c:[B

    .line 3
    iget-object v1, p0, Le/k/a/b/w/j;->a:Le/k/a/b/w/b;

    invoke-virtual {v1, v0}, Le/k/a/b/w/b;->f([B)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/w/j;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/k/a/b/w/j;->b:Ljava/io/InputStream;

    .line 3
    invoke-virtual {p0}, Le/k/a/b/w/j;->b()V

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/w/j;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Le/k/a/b/w/j;->h:I

    .line 2
    new-instance v2, Ljava/io/CharConversionException;

    const-string v3, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    const-string v4, ", needed "

    const-string v5, ", at char #"

    invoke-static {v3, p1, v4, p2, v5}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", byte #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/w/j;->k:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    .line 2
    iput-object v0, p0, Le/k/a/b/w/j;->k:[C

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/w/j;->k:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Le/k/a/b/w/j;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/b/w/j;->k:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Le/k/a/b/w/j;->c:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ge p3, v2, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_16

    add-int v3, p2, p3

    .line 6
    array-length v4, p1

    if-gt v3, v4, :cond_16

    .line 7
    iget-char p3, p0, Le/k/a/b/w/j;->g:C

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 8
    aput-char p3, p1, p2

    .line 9
    iput-char v4, p0, Le/k/a/b/w/j;->g:C

    goto/16 :goto_4

    .line 10
    :cond_2
    iget p3, p0, Le/k/a/b/w/j;->e:I

    iget v6, p0, Le/k/a/b/w/j;->d:I

    sub-int v7, p3, v6

    if-ge v7, v5, :cond_f

    .line 11
    iget v8, p0, Le/k/a/b/w/j;->i:I

    sub-int/2addr p3, v7

    add-int/2addr p3, v8

    iput p3, p0, Le/k/a/b/w/j;->i:I

    const-string p3, "Strange I/O stream, returned 0 bytes on read"

    const/4 v8, 0x0

    if-lez v7, :cond_4

    if-lez v6, :cond_3

    .line 12
    invoke-static {v0, v6, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput v4, p0, Le/k/a/b/w/j;->d:I

    .line 14
    :cond_3
    iput v7, p0, Le/k/a/b/w/j;->e:I

    goto :goto_1

    .line 15
    :cond_4
    iput v4, p0, Le/k/a/b/w/j;->d:I

    .line 16
    iget-object v6, p0, Le/k/a/b/w/j;->b:Ljava/io/InputStream;

    if-nez v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-ge v0, v2, :cond_8

    .line 17
    iput v4, p0, Le/k/a/b/w/j;->e:I

    if-gez v0, :cond_7

    .line 18
    iget-boolean p3, p0, Le/k/a/b/w/j;->j:Z

    if-eqz p3, :cond_6

    .line 19
    invoke-virtual {p0}, Le/k/a/b/w/j;->b()V

    :cond_6
    move p3, v4

    goto :goto_3

    .line 20
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    iput v0, p0, Le/k/a/b/w/j;->e:I

    .line 22
    :goto_1
    iget v0, p0, Le/k/a/b/w/j;->e:I

    if-ge v0, v5, :cond_d

    .line 23
    iget-object v6, p0, Le/k/a/b/w/j;->b:Ljava/io/InputStream;

    if-nez v6, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    iget-object v9, p0, Le/k/a/b/w/j;->c:[B

    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_2
    if-ge v0, v2, :cond_c

    if-gez v0, :cond_b

    .line 24
    iget-boolean p1, p0, Le/k/a/b/w/j;->j:Z

    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p0}, Le/k/a/b/w/j;->b()V

    .line 26
    :cond_a
    iget p1, p0, Le/k/a/b/w/j;->e:I

    invoke-virtual {p0, p1, v5}, Le/k/a/b/w/j;->d(II)V

    throw v8

    .line 27
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_c
    iget v6, p0, Le/k/a/b/w/j;->e:I

    add-int/2addr v6, v0

    iput v6, p0, Le/k/a/b/w/j;->e:I

    goto :goto_1

    :cond_d
    move p3, v2

    :goto_3
    if-nez p3, :cond_f

    if-nez v7, :cond_e

    return v1

    .line 29
    :cond_e
    iget p1, p0, Le/k/a/b/w/j;->e:I

    iget p2, p0, Le/k/a/b/w/j;->d:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v5}, Le/k/a/b/w/j;->d(II)V

    throw v8

    :cond_f
    move v0, p2

    .line 30
    :goto_4
    iget p3, p0, Le/k/a/b/w/j;->e:I

    sub-int/2addr p3, v5

    :cond_10
    if-ge v0, v3, :cond_15

    .line 31
    iget v5, p0, Le/k/a/b/w/j;->d:I

    .line 32
    iget-boolean v6, p0, Le/k/a/b/w/j;->f:Z

    if-eqz v6, :cond_11

    .line 33
    iget-object v6, p0, Le/k/a/b/w/j;->c:[B

    aget-byte v7, v6, v5

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    .line 34
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v5, 0x3

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    goto :goto_5

    .line 35
    :cond_11
    iget-object v6, p0, Le/k/a/b/w/j;->c:[B

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    .line 36
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v5, 0x3

    aget-byte v6, v6, v9

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v8

    move v11, v7

    move v7, v6

    move v6, v11

    :goto_5
    add-int/lit8 v5, v5, 0x4

    .line 37
    iput v5, p0, Le/k/a/b/w/j;->d:I

    if-eqz v7, :cond_14

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/lit8 v8, v7, -0x1

    const/16 v9, 0x10

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    if-gt v7, v9, :cond_13

    add-int/lit8 v7, v0, 0x1

    const v8, 0xd800

    shr-int/lit8 v9, v6, 0xa

    add-int/2addr v9, v8

    int-to-char v8, v9

    .line 38
    aput-char v8, p1, v0

    const v0, 0xdc00

    and-int/lit16 v8, v6, 0x3ff

    or-int/2addr v0, v8

    if-lt v7, v3, :cond_12

    int-to-char p1, v6

    .line 39
    iput-char p1, p0, Le/k/a/b/w/j;->g:C

    move v0, v7

    goto :goto_7

    :cond_12
    move v6, v0

    move v0, v7

    goto :goto_6

    :cond_13
    sub-int/2addr v0, p2

    new-array p1, v2, [Ljava/lang/Object;

    const p2, 0x10ffff

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, " (above 0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget p2, p0, Le/k/a/b/w/j;->i:I

    iget p3, p0, Le/k/a/b/w/j;->d:I

    add-int/2addr p2, p3

    add-int/2addr p2, v1

    iget p3, p0, Le/k/a/b/w/j;->h:I

    add-int/2addr p3, v0

    .line 42
    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Invalid UTF-32 character 0x"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at char #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-static {v1, p2, p1}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_6
    add-int/lit8 v7, v0, 0x1

    int-to-char v6, v6

    .line 43
    aput-char v6, p1, v0

    move v0, v7

    if-le v5, p3, :cond_10

    :cond_15
    :goto_7
    sub-int/2addr v0, p2

    .line 44
    iget p1, p0, Le/k/a/b/w/j;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/w/j;->h:I

    return v0

    .line 45
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "read(buf,"

    const-string v2, ","

    const-string v3, "), cbuf["

    invoke-static {v1, p2, v2, p3, v3}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    const-string p3, "]"

    invoke-static {p2, p1, p3}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
