.class public abstract Le/m/a/c/m1/c;
.super Le/m/a/c/e1/g;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/m1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/c/e1/g<",
        "Le/m/a/c/m1/i;",
        "Le/m/a/c/m1/j;",
        "Le/m/a/c/m1/g;",
        ">;",
        "Le/m/a/c/m1/f;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x2

    new-array v0, p1, [Le/m/a/c/m1/i;

    new-array p1, p1, [Le/m/a/c/m1/j;

    .line 1
    invoke-direct {p0, v0, p1}, Le/m/a/c/e1/g;-><init>([Le/m/a/c/e1/e;[Le/m/a/c/e1/f;)V

    .line 2
    iget p1, p0, Le/m/a/c/e1/g;->g:I

    iget-object v0, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ln3/g0/y;->x(Z)V

    .line 3
    iget-object p1, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/16 v3, 0x400

    .line 4
    invoke-virtual {v2, v3}, Le/m/a/c/e1/e;->g(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    return-void
.end method

.method public e(Le/m/a/c/e1/e;Le/m/a/c/e1/f;Z)Ljava/lang/Exception;
    .locals 6

    .line 1
    check-cast p1, Le/m/a/c/m1/i;

    check-cast p2, Le/m/a/c/m1/j;

    .line 2
    :try_start_0
    iget-object v0, p1, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Le/m/a/c/m1/c;->j([BIZ)Le/m/a/c/m1/e;

    move-result-object p3

    .line 5
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    iget-wide v2, p1, Le/m/a/c/m1/i;->g:J

    .line 6
    iput-wide v0, p2, Le/m/a/c/e1/f;->timeUs:J

    .line 7
    iput-object p3, p2, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 8
    :goto_0
    iput-wide v0, p2, Le/m/a/c/m1/j;->b:J

    const/high16 p1, -0x80000000

    .line 9
    invoke-virtual {p2, p1}, Le/m/a/c/e1/a;->clearFlag(I)V
    :try_end_0
    .catch Le/m/a/c/m1/g; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-object p1
.end method

.method public abstract j([BIZ)Le/m/a/c/m1/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m1/g;
        }
    .end annotation
.end method
