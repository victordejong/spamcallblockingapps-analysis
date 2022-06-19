.class public abstract Lu/i/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/h$a;,
        Lu/i/h$c;,
        Lu/i/h$d;,
        Lu/i/h$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public static A([B)Lu/i/h;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lu/i/h;->C([BII)Lu/i/h;

    move-result-object p0

    return-object p0
.end method

.method public static C([BII)Lu/i/h;
    .locals 1

    .line 1
    new-instance v0, Lu/i/h$a;

    invoke-direct {v0, p0, p1, p2}, Lu/i/h$a;-><init>([BII)V

    return-object v0
.end method

.method public static D(Ljava/nio/ByteBuffer;)Lu/i/h;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v1, v0, p0}, Lu/i/h;->C([BII)Lu/i/h;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lu/i/h$b;

    invoke-direct {v0, p0}, Lu/i/h$b;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lu/i/h$d;

    invoke-direct {v0, p0}, Lu/i/h$d;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method a([BII)I
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 2
    array-length p1, p1

    sub-int/2addr p1, p2

    if-gt p3, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract available()I
.end method

.method abstract b(I)Ljava/lang/String;
.end method

.method abstract c()I
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method abstract e()B
.end method

.method abstract f(I)[B
.end method

.method final g(I)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lu/i/h;->y(I)V

    .line 2
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lu/i/h;->e()B

    move-result v3

    add-int/lit8 v4, v2, 0x0

    .line 4
    sget-object v5, Lu/i/a;->a:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 5
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hex field greater than 32 chars long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract i()J
.end method

.method abstract j()J
.end method

.method final l(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lu/i/h;->y(I)V

    const/16 v0, 0x100

    if-le p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lu/i/h;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p1}, Lu/i/h;->z([CI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lu/i/h;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mark(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final o()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 2
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v1

    and-int/lit16 v2, v1, 0xf0

    if-nez v2, :cond_4

    shl-int/lit8 v1, v1, 0x1c

    goto :goto_0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Greater than 32-bit varint at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final r()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    and-int/lit8 v1, v0, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-gez v0, :cond_3

    const/16 v0, 0xa

    if-ge v4, v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    and-int/lit16 v5, v0, 0xf0

    if-nez v5, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Greater than 64-bit varint at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    mul-int/lit8 v7, v4, 0x7

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public final read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lu/i/h;->e()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method final readByte()B
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lu/i/h;->y(I)V

    .line 2
    invoke-virtual {p0}, Lu/i/h;->e()B

    move-result v0

    return v0
.end method

.method abstract readInt()I
.end method

.method abstract readShort()S
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract skip(J)J
.end method

.method final y(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated: length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > bytes available "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract z([CI)Z
.end method
