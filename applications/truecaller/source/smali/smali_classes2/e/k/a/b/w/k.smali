.class public final Le/k/a/b/w/k;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/b/w/b;

.field public b:Ljava/io/OutputStream;

.field public c:[B

.field public final d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Le/k/a/b/w/b;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/b/w/k;->a:Le/k/a/b/w/b;

    .line 3
    iput-object p2, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    .line 4
    iget-object p2, p1, Le/k/a/b/w/b;->f:[B

    invoke-virtual {p1, p2}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Le/k/a/b/a0/a;->a(I)[B

    move-result-object p2

    iput-object p2, p1, Le/k/a/b/w/b;->f:[B

    .line 6
    iput-object p2, p0, Le/k/a/b/w/k;->c:[B

    .line 7
    array-length p1, p2

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, Le/k/a/b/w/k;->d:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Le/k/a/b/w/k;->e:I

    return-void
.end method

.method public static d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Le/k/a/b/w/k;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 2

    const-string v0, "Illegal character point (0x"

    const v1, 0x10ffff

    if-le p0, v1, :cond_0

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, 0xd800

    if-lt p0, v1, :cond_2

    const v0, 0xdbff

    const-string v1, ")"

    if-gt p0, v0, :cond_1

    const-string v0, "Unmatched first part of surrogate pair (0x"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Unmatched second part of surrogate pair (0x"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") to output"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/b/w/k;->write(I)V

    return-object p0
.end method

.method public append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/w/k;->write(I)V

    return-object p0
.end method

.method public b(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/w/k;->f:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Le/k/a/b/w/k;->f:I

    const v1, 0xdc00

    if-lt p1, v1, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    const/high16 v2, 0x10000

    const v3, 0xd800

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    .line 3
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", second 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; illegal combination"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 2
    iget v1, p0, Le/k/a/b/w/k;->e:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 3
    iget-object v3, p0, Le/k/a/b/w/k;->c:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iput v2, p0, Le/k/a/b/w/k;->e:I

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    .line 7
    iget-object v3, p0, Le/k/a/b/w/k;->c:[B

    if-eqz v3, :cond_1

    .line 8
    iput-object v1, p0, Le/k/a/b/w/k;->c:[B

    .line 9
    iget-object v4, p0, Le/k/a/b/w/k;->a:Le/k/a/b/w/b;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v5, v4, Le/k/a/b/w/b;->f:[B

    invoke-virtual {v4, v3, v5}, Le/k/a/b/w/b;->b([B[B)V

    .line 12
    iput-object v1, v4, Le/k/a/b/w/b;->f:[B

    .line 13
    iget-object v4, v4, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v5, 0x1

    .line 14
    iget-object v4, v4, Le/k/a/b/a0/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 16
    iget v0, p0, Le/k/a/b/w/k;->f:I

    .line 17
    iput v2, p0, Le/k/a/b/w/k;->f:I

    if-gtz v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v0}, Le/k/a/b/w/k;->d(I)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Le/k/a/b/w/k;->e:I

    if-lez v1, :cond_0

    .line 3
    iget-object v2, p0, Le/k/a/b/w/k;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iput v3, p0, Le/k/a/b/w/k;->e:I

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget v0, p0, Le/k/a/b/w/k;->f:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Le/k/a/b/w/k;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 32
    iput p1, p0, Le/k/a/b/w/k;->f:I

    return-void

    .line 33
    :cond_1
    invoke-static {p1}, Le/k/a/b/w/k;->d(I)V

    throw v1

    .line 34
    :cond_2
    :goto_0
    iget v0, p0, Le/k/a/b/w/k;->e:I

    iget v2, p0, Le/k/a/b/w/k;->d:I

    if-lt v0, v2, :cond_3

    .line 35
    iget-object v2, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    iget-object v3, p0, Le/k/a/b/w/k;->c:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iput v4, p0, Le/k/a/b/w/k;->e:I

    :cond_3
    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    .line 37
    iget-object v0, p0, Le/k/a/b/w/k;->c:[B

    iget v1, p0, Le/k/a/b/w/k;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/w/k;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_2

    .line 38
    :cond_4
    iget v2, p0, Le/k/a/b/w/k;->e:I

    const/16 v3, 0x800

    if-ge p1, v3, :cond_5

    .line 39
    iget-object v1, p0, Le/k/a/b/w/k;->c:[B

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 40
    aput-byte p1, v1, v3

    goto :goto_1

    :cond_5
    const v3, 0xffff

    if-gt p1, v3, :cond_6

    .line 41
    iget-object v1, p0, Le/k/a/b/w/k;->c:[B

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 42
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 43
    aput-byte p1, v1, v2

    move v2, v3

    goto :goto_1

    :cond_6
    const v3, 0x10ffff

    if-gt p1, v3, :cond_7

    .line 44
    iget-object v1, p0, Le/k/a/b/w/k;->c:[B

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 45
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 46
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 47
    aput-byte p1, v1, v3

    .line 48
    :goto_1
    iput v2, p0, Le/k/a/b/w/k;->e:I

    :goto_2
    return-void

    .line 49
    :cond_7
    invoke-static {p1}, Le/k/a/b/w/k;->d(I)V

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/k/a/b/w/k;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/w/k;->write(I)V

    :cond_0
    return-void

    .line 52
    :cond_1
    iget v0, p0, Le/k/a/b/w/k;->f:I

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p3, p3, -0x1

    .line 54
    invoke-virtual {p0, p2}, Le/k/a/b/w/k;->b(I)I

    move-result p2

    invoke-virtual {p0, p2}, Le/k/a/b/w/k;->write(I)V

    move p2, v0

    .line 55
    :cond_2
    iget v0, p0, Le/k/a/b/w/k;->e:I

    .line 56
    iget-object v1, p0, Le/k/a/b/w/k;->c:[B

    .line 57
    iget v2, p0, Le/k/a/b/w/k;->d:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_e

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 58
    iget-object v4, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v3

    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    add-int/lit8 v5, v0, 0x1

    int-to-byte p2, p2

    .line 60
    aput-byte p2, v1, v0

    sub-int p2, p3, v3

    sub-int v0, v2, v5

    if-le p2, v0, :cond_4

    move p2, v0

    :cond_4
    add-int v6, p2, v3

    :goto_1
    move p2, v3

    move v0, v5

    if-lt p2, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v0, 0x1

    int-to-byte p2, p2

    .line 62
    aput-byte p2, v1, v0

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 63
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    .line 64
    aput-byte p2, v1, v5

    move p2, v3

    goto :goto_0

    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_3

    :cond_9
    const v5, 0xdbff

    const/4 v6, 0x0

    if-gt p2, v5, :cond_c

    .line 65
    iput p2, p0, Le/k/a/b/w/k;->f:I

    if-lt v3, p3, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p2, v3, 0x1

    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Le/k/a/b/w/k;->b(I)I

    move-result v3

    const v5, 0x10ffff

    if-gt v3, v5, :cond_b

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 67
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 68
    aput-byte v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 69
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 70
    aput-byte v3, v1, v5

    goto/16 :goto_0

    .line 71
    :cond_b
    iput v0, p0, Le/k/a/b/w/k;->e:I

    .line 72
    invoke-static {v3}, Le/k/a/b/w/k;->d(I)V

    throw v6

    .line 73
    :cond_c
    iput v0, p0, Le/k/a/b/w/k;->e:I

    .line 74
    invoke-static {p2}, Le/k/a/b/w/k;->d(I)V

    throw v6

    :cond_d
    :goto_3
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 75
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 76
    aput-byte v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    .line 77
    aput-byte p2, v1, v0

    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 78
    :cond_e
    :goto_4
    iput v0, p0, Le/k/a/b/w/k;->e:I

    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/k/a/b/w/k;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    aget-char p1, p1, p2

    invoke-virtual {p0, p1}, Le/k/a/b/w/k;->write(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget v0, p0, Le/k/a/b/w/k;->f:I

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-char p2, p1, p2

    add-int/lit8 p3, p3, -0x1

    .line 5
    invoke-virtual {p0, p2}, Le/k/a/b/w/k;->b(I)I

    move-result p2

    invoke-virtual {p0, p2}, Le/k/a/b/w/k;->write(I)V

    move p2, v0

    .line 6
    :cond_2
    iget v0, p0, Le/k/a/b/w/k;->e:I

    .line 7
    iget-object v1, p0, Le/k/a/b/w/k;->c:[B

    .line 8
    iget v2, p0, Le/k/a/b/w/k;->d:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_e

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 9
    iget-object v4, p0, Le/k/a/b/w/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v3

    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 10
    aget-char p2, p1, p2

    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    add-int/lit8 v5, v0, 0x1

    int-to-byte p2, p2

    .line 11
    aput-byte p2, v1, v0

    sub-int p2, p3, v3

    sub-int v0, v2, v5

    if-le p2, v0, :cond_4

    move p2, v0

    :cond_4
    add-int v6, p2, v3

    :goto_1
    move p2, v3

    move v0, v5

    if-lt p2, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, p2, 0x1

    .line 12
    aget-char p2, p1, p2

    if-lt p2, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v0, 0x1

    int-to-byte p2, p2

    .line 13
    aput-byte p2, v1, v0

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 14
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    .line 15
    aput-byte p2, v1, v5

    move p2, v3

    goto :goto_0

    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_3

    :cond_9
    const v5, 0xdbff

    const/4 v6, 0x0

    if-gt p2, v5, :cond_c

    .line 16
    iput p2, p0, Le/k/a/b/w/k;->f:I

    if-lt v3, p3, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p2, v3, 0x1

    .line 17
    aget-char v3, p1, v3

    invoke-virtual {p0, v3}, Le/k/a/b/w/k;->b(I)I

    move-result v3

    const v5, 0x10ffff

    if-gt v3, v5, :cond_b

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 18
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 19
    aput-byte v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 20
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 21
    aput-byte v3, v1, v5

    goto/16 :goto_0

    .line 22
    :cond_b
    iput v0, p0, Le/k/a/b/w/k;->e:I

    .line 23
    invoke-static {v3}, Le/k/a/b/w/k;->d(I)V

    throw v6

    .line 24
    :cond_c
    iput v0, p0, Le/k/a/b/w/k;->e:I

    .line 25
    invoke-static {p2}, Le/k/a/b/w/k;->d(I)V

    throw v6

    :cond_d
    :goto_3
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 26
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    .line 27
    aput-byte v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    .line 28
    aput-byte p2, v1, v0

    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 29
    :cond_e
    :goto_4
    iput v0, p0, Le/k/a/b/w/k;->e:I

    return-void
.end method
