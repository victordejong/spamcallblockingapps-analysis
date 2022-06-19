.class public final Le/m/a/c/c1/s;
.super Le/m/a/c/c1/r;
.source "SourceFile"


# instance fields
.field public i:[I

.field public j:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/c1/r;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/s;->j:[I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    .line 5
    iget-object v4, p0, Le/m/a/c/c1/r;->b:Le/m/a/c/c1/l$a;

    iget v4, v4, Le/m/a/c/c1/l$a;->d:I

    div-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Le/m/a/c/c1/r;->c:Le/m/a/c/c1/l$a;

    iget v4, v4, Le/m/a/c/c1/l$a;->d:I

    mul-int/2addr v3, v4

    .line 7
    invoke-virtual {p0, v3}, Le/m/a/c/c1/r;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 8
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v0, v5

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 9
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v4, p0, Le/m/a/c/c1/r;->b:Le/m/a/c/c1/l$a;

    iget v4, v4, Le/m/a/c/c1/l$a;->d:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public g(Le/m/a/c/c1/l$a;)Le/m/a/c/c1/l$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/l$b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/s;->i:[I

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/m/a/c/c1/l$a;->e:Le/m/a/c/c1/l$a;

    return-object p1

    .line 3
    :cond_0
    iget v1, p1, Le/m/a/c/c1/l$a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 4
    iget v1, p1, Le/m/a/c/c1/l$a;->b:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    move v3, v5

    .line 5
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 6
    aget v6, v0, v3

    .line 7
    iget v7, p1, Le/m/a/c/c1/l$a;->b:I

    if-ge v6, v7, :cond_3

    if-eq v6, v3, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Le/m/a/c/c1/l$b;

    invoke-direct {v0, p1}, Le/m/a/c/c1/l$b;-><init>(Le/m/a/c/c1/l$a;)V

    throw v0

    :cond_4
    if-eqz v1, :cond_5

    .line 9
    new-instance v1, Le/m/a/c/c1/l$a;

    iget p1, p1, Le/m/a/c/c1/l$a;->a:I

    array-length v0, v0

    invoke-direct {v1, p1, v0, v2}, Le/m/a/c/c1/l$a;-><init>(III)V

    goto :goto_3

    :cond_5
    sget-object v1, Le/m/a/c/c1/l$a;->e:Le/m/a/c/c1/l$a;

    :goto_3
    return-object v1

    .line 10
    :cond_6
    new-instance v0, Le/m/a/c/c1/l$b;

    invoke-direct {v0, p1}, Le/m/a/c/c1/l$b;-><init>(Le/m/a/c/c1/l$a;)V

    throw v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/s;->i:[I

    iput-object v0, p0, Le/m/a/c/c1/s;->j:[I

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/c1/s;->j:[I

    .line 2
    iput-object v0, p0, Le/m/a/c/c1/s;->i:[I

    return-void
.end method
