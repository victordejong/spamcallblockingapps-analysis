.class final Lu/i/h$a;
.super Lu/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:[B

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/i/h;-><init>()V

    .line 2
    iput-object p1, p0, Lu/i/h$a;->f:[B

    .line 3
    iput p2, p0, Lu/i/h$a;->h:I

    iput p2, p0, Lu/i/h$a;->g:I

    .line 4
    iput p3, p0, Lu/i/h$a;->i:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 1
    iget v0, p0, Lu/i/h$a;->i:I

    iget v1, p0, Lu/i/h$a;->h:I

    iget v2, p0, Lu/i/h$a;->g:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method final b(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lu/i/h$a;->f:[B

    iget v2, p0, Lu/i/h$a;->h:I

    sget-object v3, Lu/i/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2
    iget v1, p0, Lu/i/h$a;->h:I

    add-int/2addr v1, p1

    iput v1, p0, Lu/i/h$a;->h:I

    return-object v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lu/i/h$a;->h:I

    iget v1, p0, Lu/i/h$a;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final e()B
    .locals 3

    .line 1
    iget-object v0, p0, Lu/i/h$a;->f:[B

    iget v1, p0, Lu/i/h$a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu/i/h$a;->h:I

    aget-byte v0, v0, v1

    return v0
.end method

.method final f(I)[B
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lu/i/h;->y(I)V

    .line 2
    new-array v0, p1, [B

    .line 3
    iget-object v1, p0, Lu/i/h$a;->f:[B

    iget v2, p0, Lu/i/h$a;->h:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v1, p0, Lu/i/h$a;->h:I

    add-int/2addr v1, p1

    iput v1, p0, Lu/i/h$a;->h:I

    return-object v0
.end method

.method i()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/i/h$a;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method j()J
    .locals 9

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lu/i/h;->y(I)V

    .line 2
    iget v1, p0, Lu/i/h$a;->h:I

    add-int/lit8 v2, v1, 0x8

    .line 3
    iput v2, p0, Lu/i/h$a;->h:I

    .line 4
    iget-object v2, p0, Lu/i/h$a;->f:[B

    aget-byte v3, v2, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, v2, v0

    int-to-long v7, v0

    and-long/2addr v7, v5

    const/16 v0, 0x10

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v1, 0x3

    aget-byte v0, v2, v0

    int-to-long v7, v0

    and-long/2addr v7, v5

    const/16 v0, 0x18

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v1, 0x4

    aget-byte v0, v2, v0

    int-to-long v7, v0

    and-long/2addr v7, v5

    const/16 v0, 0x20

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v1, 0x5

    aget-byte v0, v2, v0

    int-to-long v7, v0

    and-long/2addr v7, v5

    const/16 v0, 0x28

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v1, 0x6

    aget-byte v0, v2, v0

    int-to-long v7, v0

    and-long/2addr v7, v5

    const/16 v0, 0x30

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v1, v1, 0x7

    aget-byte v0, v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public read([BII)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/i/h$a;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu/i/h;->a([BII)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    return p3

    .line 3
    :cond_1
    iget-object v0, p0, Lu/i/h$a;->f:[B

    iget v1, p0, Lu/i/h$a;->h:I

    invoke-static {v0, v1, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lu/i/h$a;->h:I

    add-int/2addr p1, p2

    iput p1, p0, Lu/i/h$a;->h:I

    return p2
.end method

.method readInt()I
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lu/i/h;->y(I)V

    .line 2
    iget v0, p0, Lu/i/h$a;->h:I

    add-int/lit8 v1, v0, 0x4

    .line 3
    iput v1, p0, Lu/i/h$a;->h:I

    .line 4
    iget-object v1, p0, Lu/i/h$a;->f:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method readShort()S
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lu/i/h;->y(I)V

    .line 2
    iget-object v0, p0, Lu/i/h$a;->f:[B

    iget v1, p0, Lu/i/h$a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu/i/h$a;->h:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lu/i/h$a;->h:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public skip(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/i/h$a;->available()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    iget p2, p0, Lu/i/h$a;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lu/i/h$a;->h:I

    int-to-long p1, p1

    return-wide p1
.end method

.method z([CI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    iget-object v2, p0, Lu/i/h$a;->f:[B

    iget v3, p0, Lu/i/h$a;->h:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    return v0

    :cond_0
    int-to-char v2, v2

    .line 2
    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lu/i/h$a;->h:I

    add-int/2addr p1, p2

    iput p1, p0, Lu/i/h$a;->h:I

    const/4 p1, 0x1

    return p1
.end method
