.class public Le/k/a/c/l0/t/g;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/p0<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, p3

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p3, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 7
    invoke-virtual {p2, p3, v0, v1, p1}, Le/k/a/b/g;->S(Le/k/a/b/a;[BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    if-lez p3, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    :cond_1
    new-instance p3, Le/k/a/c/n0/e;

    invoke-direct {p3, p1}, Le/k/a/c/n0/e;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 15
    invoke-virtual {p2, v0, p3, p1}, Le/k/a/b/g;->Q(Le/k/a/b/a;Ljava/io/InputStream;I)I

    .line 16
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void
.end method
