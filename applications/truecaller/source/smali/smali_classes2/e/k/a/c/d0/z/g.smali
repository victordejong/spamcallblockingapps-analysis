.class public Le/k/a/c/d0/z/g;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p2, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 3
    invoke-virtual {p1, p2}, Le/k/a/b/j;->I(Le/k/a/b/a;)[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 2
    new-instance v0, Le/k/a/c/n0/f;

    invoke-direct {v0, p3}, Le/k/a/c/n0/f;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p2}, Le/k/a/c/g;->A()Le/k/a/b/a;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Le/k/a/b/j;->r2(Le/k/a/b/a;Ljava/io/OutputStream;)I

    .line 4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p3
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->k:Le/k/a/c/m0/f;

    return-object v0
.end method
