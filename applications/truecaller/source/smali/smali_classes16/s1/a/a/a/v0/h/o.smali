.class public Ls1/a/a/a/v0/h/o;
.super Ls1/a/a/a/v0/h/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/h/o$b;
    }
.end annotation


# instance fields
.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/h/o;->c:I

    .line 3
    iput-object p1, p0, Ls1/a/a/a/v0/h/o;->b:[B

    return-void
.end method


# virtual methods
.method public e([BIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/o;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ls1/a/a/a/v0/h/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Ls1/a/a/a/v0/h/c;

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    instance-of v0, p1, Ls1/a/a/a/v0/h/o;

    if-eqz v0, :cond_4

    .line 5
    check-cast p1, Ls1/a/a/a/v0/h/o;

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Ls1/a/a/a/v0/h/o;->q(Ls1/a/a/a/v0/h/o;II)Z

    move-result p1

    return p1

    .line 6
    :cond_4
    instance-of v0, p1, Ls1/a/a/a/v0/h/s;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-static {v1, v2, p1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/h/o;->b:[B

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Ls1/a/a/a/v0/f/d;->s2([BII)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/o;->c:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Ls1/a/a/a/v0/h/o;->k(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Ls1/a/a/a/v0/h/o;->c:I

    :cond_1
    return v0
.end method

.method public i()Ls1/a/a/a/v0/h/c$a;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/h/o$b;-><init>(Ls1/a/a/a/v0/h/o;Ls1/a/a/a/v0/h/o$a;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->i()Ls1/a/a/a/v0/h/c$a;

    move-result-object v0

    return-object v0
.end method

.method public k(III)I
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/o;->b:[B

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result v1

    add-int/2addr v1, p2

    move p2, v1

    :goto_0
    add-int v2, v1, p3

    if-ge p2, v2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    .line 2
    aget-byte v2, v0, p2

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public l(III)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result v0

    add-int/2addr v0, p2

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/h/o;->b:[B

    add-int/2addr p3, v0

    if-eqz p1, :cond_d

    if-lt v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-byte v1, p1

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_3

    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 3
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    move p1, v3

    goto/16 :goto_3

    :cond_3
    const/16 v5, -0x10

    if-ge v1, v5, :cond_8

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, v0, 0x1

    .line 4
    aget-byte v0, p2, v0

    if-lt p1, p3, :cond_4

    .line 5
    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->J1(II)I

    move-result p1

    goto :goto_3

    :cond_4
    move v6, v0

    move v0, p1

    move p1, v6

    :cond_5
    if-gt p1, v4, :cond_2

    const/16 v5, -0x60

    if-ne v1, v2, :cond_6

    if-lt p1, v5, :cond_2

    :cond_6
    const/16 v2, -0x13

    if-ne v1, v2, :cond_7

    if-ge p1, v5, :cond_2

    :cond_7
    add-int/lit8 p1, v0, 0x1

    .line 6
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_8
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    const/4 v5, 0x0

    if-nez v2, :cond_a

    add-int/lit8 p1, v0, 0x1

    .line 7
    aget-byte v2, p2, v0

    if-lt p1, p3, :cond_9

    .line 8
    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->J1(II)I

    move-result p1

    goto :goto_3

    :cond_9
    move v0, p1

    goto :goto_1

    :cond_a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v5, p1

    :goto_1
    if-nez v5, :cond_c

    add-int/lit8 p1, v0, 0x1

    .line 9
    aget-byte v5, p2, v0

    if-lt p1, p3, :cond_b

    .line 10
    invoke-static {v1, v2, v5}, Ls1/a/a/a/v0/f/d;->K1(III)I

    move-result p1

    goto :goto_3

    :cond_b
    move v0, p1

    :cond_c
    if-gt v2, v4, :cond_2

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v2, p1

    shr-int/lit8 p1, v2, 0x1e

    if-nez p1, :cond_2

    if-gt v5, v4, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 11
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_d
    :goto_2
    invoke-static {p2, v0, p3}, Ls1/a/a/a/v0/f/d;->J2([BII)I

    move-result p1

    :goto_3
    return p1
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/o;->c:I

    return v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ls1/a/a/a/v0/h/o;->b:[B

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public p(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/o;->b:[B

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public q(Ls1/a/a/a/v0/h/o;II)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/h/o;->b:[B

    .line 4
    iget-object v1, p1, Ls1/a/a/a/v0/h/o;->b:[B

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result v2

    add-int/2addr v2, p3

    .line 6
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->r()I

    move-result p3

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/o;->r()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v2, :cond_1

    .line 7
    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/o;->size()I

    move-result p1

    const/16 v1, 0x3b

    const-string v2, "Ran off end of other: "

    const-string v3, ", "

    invoke-static {v1, v2, p2, v3, p3}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/o;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/o;->b:[B

    array-length v0, v0

    return v0
.end method
