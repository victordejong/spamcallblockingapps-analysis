.class public final Le/m/a/c/g1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/q1/t;I)V
    .locals 1

    .line 1
    iget v0, p1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Le/m/a/c/q1/t;->C(I)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public c(JIIILe/m/a/c/g1/s$a;)V
    .locals 0

    return-void
.end method

.method public d(Le/m/a/c/g1/e;IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p1, Le/m/a/c/g1/e;->g:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Le/m/a/c/g1/e;->j(I)V

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p1, Le/m/a/c/g1/e;->a:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Le/m/a/c/g1/e;->g([BIIIZ)I

    move-result v0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Le/m/a/c/g1/e;->b(I)V

    const/4 p1, -0x1

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return v0
.end method
