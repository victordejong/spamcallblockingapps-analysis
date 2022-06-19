.class public final Lu/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:[B

.field e:[B

.field f:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lu/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/f$a;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lu/f;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/f$a;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lu/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/f$a;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lu/f;->i:[B

    iput-object v0, p0, Lu/f$a;->d:[B

    .line 6
    iget-object v0, p1, Lu/f;->j:[B

    iput-object v0, p0, Lu/f$a;->e:[B

    .line 7
    iget p1, p1, Lu/f;->k:I

    iput p1, p0, Lu/f$a;->f:I

    return-void
.end method

.method static i(II[C)I
    .locals 3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lu/i/a;->a:[C

    aget-char p0, v0, p0

    aput-char p0, p2, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    add-int/2addr p1, v0

    move v0, p1

    :goto_1
    if-eqz p0, :cond_2

    .line 2
    rem-int/lit8 v1, p0, 0xa

    add-int/lit8 v0, v0, -0x1

    .line 3
    sget-object v2, Lu/i/a;->a:[C

    aget-char v1, v2, v1

    aput-char v1, p2, v0

    .line 4
    div-int/lit8 p0, p0, 0xa

    goto :goto_1

    :cond_2
    return p1
.end method

.method static j([B)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v1, v0}, Lu/f$a;->i(II[C)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2e

    .line 3
    aput-char v4, v0, v2

    const/4 v2, 0x1

    .line 4
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3, v0}, Lu/f$a;->i(II[C)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 5
    aput-char v4, v0, v2

    const/4 v2, 0x2

    .line 6
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3, v0}, Lu/f$a;->i(II[C)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 7
    aput-char v4, v0, v2

    const/4 v2, 0x3

    .line 8
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0, v3, v0}, Lu/f$a;->i(II[C)I

    move-result p0

    .line 9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method


# virtual methods
.method public a()Lu/f;
    .locals 1

    .line 1
    new-instance v0, Lu/f;

    invoke-direct {v0, p0}, Lu/f;-><init>(Lu/f$a;)V

    return-object v0
.end method

.method public b(Ljava/net/InetAddress;)Lu/f$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/f$a;->e(Ljava/net/InetAddress;)Z

    return-object p0
.end method

.method c([B)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 1
    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0xc

    .line 3
    aget-byte v1, p1, v1

    const/16 v2, 0xd

    aget-byte v2, p1, v2

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    const/16 v4, 0xf

    aget-byte p1, p1, v4

    const/4 v4, 0x1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-ne p1, v4, :cond_3

    return v0

    .line 4
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v2, 0xff

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v3, 0xff

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v6, p1, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lu/f$a;->b:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [B

    aput-byte v1, v5, v0

    aput-byte v2, v5, v4

    const/4 v0, 0x2

    aput-byte v3, v5, v0

    const/4 v0, 0x3

    aput-byte p1, v5, v0

    .line 5
    iput-object v5, p0, Lu/f$a;->d:[B

    return v4
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lu/f;->a(Ljava/lang/String;)Lu/f$b;

    move-result-object v1

    .line 3
    sget-object v2, Lu/f$b;->IPv4:Lu/f$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iput-object p1, p0, Lu/f$a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lu/f;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lu/f$a;->d:[B

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lu/f$b;->IPv4Embedded:Lu/f$b;

    if-ne v1, v2, :cond_2

    const/16 v0, 0x3a

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/f$a;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lu/f;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lu/f$a;->d:[B

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lu/f$b;->IPv6:Lu/f$b;

    if-ne v1, v2, :cond_4

    .line 10
    invoke-static {p1}, Lu/f;->o(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 11
    :cond_3
    invoke-static {p1}, Lu/f;->q([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/f$a;->c:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lu/f$a;->e:[B

    :goto_0
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public final e(Ljava/net/InetAddress;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/f$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lu/f$a;->d:[B

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lu/f$a;->c([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {p1}, Lu/f;->q([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/f$a;->c:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lu/f$a;->e:[B

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final f([B)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2
    iput-object p1, p0, Lu/f$a;->d:[B

    .line 3
    invoke-static {p1}, Lu/f$a;->j([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/f$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lu/f$a;->c([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lu/f;->q([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/f$a;->c:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lu/f$a;->e:[B

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public g(I)Lu/f$a;
    .locals 3

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Lu/f$a;->f:I

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)Lu/f$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lu/f$a;->a:Ljava/lang/String;

    return-object p0
.end method
