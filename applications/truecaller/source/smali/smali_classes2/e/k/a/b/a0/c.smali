.class public final Le/k/a/b/a0/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public final a:Le/k/a/b/a0/a;

.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:[B

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Le/k/a/b/a0/c;->f:[B

    return-void
.end method

.method public constructor <init>(Le/k/a/b/a0/a;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    .line 3
    iput-object p1, p0, Le/k/a/b/a0/c;->a:Le/k/a/b/a0/a;

    const/high16 v0, 0x20000

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    new-array p1, p2, [B

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Le/k/a/b/a0/a;->a(I)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/k/a/b/a0/c;->d:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/k/a/b/a0/c;->a:Le/k/a/b/a0/a;

    .line 8
    iput-object p1, p0, Le/k/a/b/a0/c;->d:[B

    .line 9
    iput p2, p0, Le/k/a/b/a0/c;->e:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Le/k/a/b/a0/c;->c:I

    iget-object v1, p0, Le/k/a/b/a0/c;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2
    iput v0, p0, Le/k/a/b/a0/c;->c:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    move v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Le/k/a/b/a0/c;->d:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Le/k/a/b/a0/c;->d:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Le/k/a/b/a0/c;->e:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget v0, p0, Le/k/a/b/a0/c;->e:I

    iget-object v1, p0, Le/k/a/b/a0/c;->d:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/a0/c;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/a0/c;->d:[B

    iget v1, p0, Le/k/a/b/a0/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/a0/c;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 4

    .line 1
    iget v0, p0, Le/k/a/b/a0/c;->e:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Le/k/a/b/a0/c;->d:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Le/k/a/b/a0/c;->e:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 3
    iput v0, p0, Le/k/a/b/a0/c;->e:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 4
    iput v1, p0, Le/k/a/b/a0/c;->e:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x10

    .line 5
    invoke-virtual {p0, v0}, Le/k/a/b/a0/c;->d(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 6
    invoke-virtual {p0, v0}, Le/k/a/b/a0/c;->d(I)V

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/b/a0/c;->d(I)V

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iget v0, p0, Le/k/a/b/a0/c;->e:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Le/k/a/b/a0/c;->d:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Le/k/a/b/a0/c;->e:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 3
    iput v0, p0, Le/k/a/b/a0/c;->e:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/b/a0/c;->d(I)V

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/b/a0/c;->d(I)V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/k/a/b/a0/c;->c:I

    .line 2
    iput v0, p0, Le/k/a/b/a0/c;->e:I

    .line 3
    iget-object v0, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public q()[B
    .locals 7

    .line 1
    iget v0, p0, Le/k/a/b/a0/c;->c:I

    iget v1, p0, Le/k/a/b/a0/c;->e:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/b/a0/c;->f:[B

    return-object v0

    .line 3
    :cond_0
    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 5
    array-length v6, v5

    .line 6
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Le/k/a/b/a0/c;->d:[B

    iget v5, p0, Le/k/a/b/a0/c;->e:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v2, p0, Le/k/a/b/a0/c;->e:I

    add-int/2addr v4, v2

    if-ne v4, v0, :cond_3

    .line 9
    iget-object v0, p0, Le/k/a/b/a0/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Le/k/a/b/a0/c;->l()V

    :cond_2
    return-object v1

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error: total len assumed to be "

    const-string v3, ", copied "

    const-string v5, " bytes"

    invoke-static {v2, v0, v3, v4, v5}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/b/a0/c;->d(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/k/a/b/a0/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 2
    :goto_0
    iget-object v0, p0, Le/k/a/b/a0/c;->d:[B

    array-length v0, v0

    iget v1, p0, Le/k/a/b/a0/c;->e:I

    sub-int/2addr v0, v1

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Le/k/a/b/a0/c;->d:[B

    iget v2, p0, Le/k/a/b/a0/c;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 5
    iget v1, p0, Le/k/a/b/a0/c;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Le/k/a/b/a0/c;->e:I

    sub-int/2addr p3, v0

    :cond_0
    if-gtz p3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/a0/c;->b()V

    goto :goto_0
.end method
