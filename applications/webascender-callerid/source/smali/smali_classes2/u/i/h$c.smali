.class abstract Lu/i/h$c;
.super Lu/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final f:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/i/h;-><init>()V

    .line 2
    iput-object p1, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method final b(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/i/h$c;->f(I)[B

    move-result-object p1

    sget-object v1, Lu/i/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method final e()B
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method final f(I)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lu/i/h;->y(I)V

    .line 2
    new-array p1, p1, [B

    .line 3
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public read([BII)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/i/h$c;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu/i/h;->a([BII)I

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public skip(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/i/h$c;->available()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget-object p2, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    int-to-long p1, p1

    return-wide p1
.end method

.method z([CI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 2
    iget-object v2, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, p0, Lu/i/h$c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/ByteBuffer;

    return v0

    :cond_0
    int-to-char v2, v2

    .line 4
    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
