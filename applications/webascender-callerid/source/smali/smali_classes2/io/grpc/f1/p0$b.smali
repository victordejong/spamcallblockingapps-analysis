.class Lio/grpc/f1/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/p0;


# direct methods
.method private constructor <init>(Lio/grpc/f1/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/p0;Lio/grpc/f1/p0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/p0$b;-><init>(Lio/grpc/f1/p0;)V

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/p0$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/p0$b;->l(I)V

    return-void
.end method

.method static synthetic b(Lio/grpc/f1/p0$b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lio/grpc/f1/p0$b;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lio/grpc/f1/p0$b;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->k()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lio/grpc/f1/p0$b;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->j()I

    move-result p0

    return p0
.end method

.method static synthetic f(Lio/grpc/f1/p0$b;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->h()I

    move-result p0

    return p0
.end method

.method private g()Z
    .locals 1

    .line 1
    :cond_0
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->k()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0}, Lio/grpc/f1/p0;->a(Lio/grpc/f1/p0;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1}, Lio/grpc/f1/p0;->b(Lio/grpc/f1/p0;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0}, Lio/grpc/f1/p0;->e(Lio/grpc/f1/p0;)[B

    move-result-object v0

    iget-object v2, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v2}, Lio/grpc/f1/p0;->b(Lio/grpc/f1/p0;)I

    move-result v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 3
    iget-object v2, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v2, v1}, Lio/grpc/f1/p0;->c(Lio/grpc/f1/p0;I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0}, Lio/grpc/f1/p0;->f(Lio/grpc/f1/p0;)Lio/grpc/f1/u;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/u;->readUnsignedByte()I

    move-result v0

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v2}, Lio/grpc/f1/p0;->g(Lio/grpc/f1/p0;)Ljava/util/zip/CRC32;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 6
    iget-object v2, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v2, v1}, Lio/grpc/f1/p0;->i(Lio/grpc/f1/p0;I)I

    return v0
.end method

.method private i()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->j()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->j()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private j()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/p0$b;->h()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/f1/p0$b;->h()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0}, Lio/grpc/f1/p0;->a(Lio/grpc/f1/p0;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1}, Lio/grpc/f1/p0;->b(Lio/grpc/f1/p0;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1}, Lio/grpc/f1/p0;->f(Lio/grpc/f1/p0;)Lio/grpc/f1/u;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/f1/u;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private l(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0}, Lio/grpc/f1/p0;->a(Lio/grpc/f1/p0;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1}, Lio/grpc/f1/p0;->b(Lio/grpc/f1/p0;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1}, Lio/grpc/f1/p0;->g(Lio/grpc/f1/p0;)Ljava/util/zip/CRC32;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v2}, Lio/grpc/f1/p0;->e(Lio/grpc/f1/p0;)[B

    move-result-object v2

    iget-object v3, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v3}, Lio/grpc/f1/p0;->b(Lio/grpc/f1/p0;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    iget-object v1, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v1, v0}, Lio/grpc/f1/p0;->c(Lio/grpc/f1/p0;I)I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x200

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    .line 5
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    iget-object v6, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v6}, Lio/grpc/f1/p0;->f(Lio/grpc/f1/p0;)Lio/grpc/f1/u;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v5}, Lio/grpc/f1/u;->w0([BII)V

    .line 7
    iget-object v6, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v6}, Lio/grpc/f1/p0;->g(Lio/grpc/f1/p0;)Ljava/util/zip/CRC32;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v5}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr v4, v5

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/p0$b;->a:Lio/grpc/f1/p0;

    invoke-static {v0, p1}, Lio/grpc/f1/p0;->i(Lio/grpc/f1/p0;I)I

    return-void
.end method
