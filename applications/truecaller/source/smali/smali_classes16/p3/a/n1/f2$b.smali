.class public Lp3/a/n1/f2$b;
.super Lp3/a/n1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lp3/a/n1/c;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "offset must be >= 0"

    .line 2
    invoke-static {v2, v3}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "length must be >= 0"

    .line 3
    invoke-static {v2, v3}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    .line 4
    array-length v2, p1

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    const-string v0, "bytes"

    .line 5
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lp3/a/n1/f2$b;->c:[B

    .line 6
    iput p2, p0, Lp3/a/n1/f2$b;->a:I

    .line 7
    iput p3, p0, Lp3/a/n1/f2$b;->b:I

    return-void
.end method


# virtual methods
.method public D(I)Lp3/a/n1/e2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/f2$b;->f()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2
    iget v0, p0, Lp3/a/n1/f2$b;->a:I

    add-int v1, v0, p1

    .line 3
    iput v1, p0, Lp3/a/n1/f2$b;->a:I

    .line 4
    new-instance v1, Lp3/a/n1/f2$b;

    iget-object v2, p0, Lp3/a/n1/f2$b;->c:[B

    invoke-direct {v1, v2, v0, p1}, Lp3/a/n1/f2$b;-><init>([BII)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public c0(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "dest"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lp3/a/n1/c;->b(I)V

    .line 4
    iget-object v1, p0, Lp3/a/n1/f2$b;->c:[B

    iget v2, p0, Lp3/a/n1/f2$b;->a:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 5
    iget p1, p0, Lp3/a/n1/f2$b;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lp3/a/n1/f2$b;->a:I

    return-void
.end method

.method public c2(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/f2$b;->f()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/f2$b;->c:[B

    iget v1, p0, Lp3/a/n1/f2$b;->a:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iget p1, p0, Lp3/a/n1/f2$b;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lp3/a/n1/f2$b;->a:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public f()I
    .locals 2

    .line 1
    iget v0, p0, Lp3/a/n1/f2$b;->b:I

    iget v1, p0, Lp3/a/n1/f2$b;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public r0([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/f2$b;->c:[B

    iget v1, p0, Lp3/a/n1/f2$b;->a:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lp3/a/n1/f2$b;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lp3/a/n1/f2$b;->a:I

    return-void
.end method

.method public readUnsignedByte()I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lp3/a/n1/c;->b(I)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/f2$b;->c:[B

    iget v1, p0, Lp3/a/n1/f2$b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lp3/a/n1/f2$b;->a:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public skipBytes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/f2$b;->f()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2
    iget v0, p0, Lp3/a/n1/f2$b;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lp3/a/n1/f2$b;->a:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
