.class public Lp3/a/n1/s0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/s0;


# direct methods
.method public constructor <init>(Lp3/a/n1/s0;Lp3/a/n1/s0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp3/a/n1/s0$b;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 2
    iget v1, v0, Lp3/a/n1/s0;->f:I

    .line 3
    iget v0, v0, Lp3/a/n1/s0;->e:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 6
    iget-object v2, v1, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    .line 7
    iget-object v3, v1, Lp3/a/n1/s0;->d:[B

    .line 8
    iget v1, v1, Lp3/a/n1/s0;->e:I

    .line 9
    invoke-virtual {v2, v3, v1, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 10
    iget-object v1, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 11
    iget v2, v1, Lp3/a/n1/s0;->e:I

    add-int/2addr v2, v0

    iput v2, v1, Lp3/a/n1/s0;->e:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x200

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    .line 12
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 13
    iget-object v6, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 14
    iget-object v6, v6, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 15
    sget-object v7, Lp3/a/n1/w;->e:Lp3/a/n1/w$f;

    invoke-virtual {v6, v7, v5, v2, v3}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    .line 16
    iget-object v6, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 17
    iget-object v6, v6, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    .line 18
    invoke-virtual {v6, v2, v3, v5}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr v4, v5

    goto :goto_1

    .line 19
    :cond_1
    iget-object p0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 20
    iget v0, p0, Lp3/a/n1/s0;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lp3/a/n1/s0;->m:I

    return-void
.end method

.method public static b(Lp3/a/n1/s0$b;)Z
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 2
    iget v1, v0, Lp3/a/n1/s0;->f:I

    .line 3
    iget v2, v0, Lp3/a/n1/s0;->e:I

    sub-int/2addr v1, v2

    .line 4
    iget-object v0, v0, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 5
    iget v0, v0, Lp3/a/n1/w;->a:I

    add-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lp3/a/n1/s0$b;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lp3/a/n1/s0$b;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 2
    iget v0, p0, Lp3/a/n1/s0;->f:I

    .line 3
    iget v1, p0, Lp3/a/n1/s0;->e:I

    sub-int/2addr v0, v1

    .line 4
    iget-object p0, p0, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 5
    iget p0, p0, Lp3/a/n1/w;->a:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 2
    iget v1, v0, Lp3/a/n1/s0;->f:I

    .line 3
    iget v2, v0, Lp3/a/n1/s0;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Lp3/a/n1/s0;->d:[B

    .line 5
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 6
    iput v2, v0, Lp3/a/n1/s0;->e:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 8
    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v1

    .line 9
    :goto_0
    iget-object v0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 10
    iget-object v0, v0, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 12
    iget-object v0, p0, Lp3/a/n1/s0$b;->a:Lp3/a/n1/s0;

    .line 13
    iget v2, v0, Lp3/a/n1/s0;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lp3/a/n1/s0;->m:I

    return v1
.end method

.method public final e()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/s0$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lp3/a/n1/s0$b;->d()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
