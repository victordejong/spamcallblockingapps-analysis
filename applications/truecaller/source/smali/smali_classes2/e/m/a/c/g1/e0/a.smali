.class public final Le/m/a/c/g1/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public final a:Le/m/a/c/g1/e0/b;

.field public final b:Le/m/a/c/q1/t;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/g1/e0/b;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Le/m/a/c/g1/e0/b;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Le/m/a/c/g1/e0/a;->a:Le/m/a/c/g1/e0/b;

    .line 5
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/e0/a;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/g1/e0/a;->c:Z

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/e0/a;->a:Le/m/a/c/g1/e0/b;

    invoke-virtual {p1}, Le/m/a/c/g1/e0/b;->a()V

    return-void
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/m/a/c/g1/e0/a;->b:Le/m/a/c/q1/t;

    iget-object p2, p2, Le/m/a/c/q1/t;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-virtual {p1, p2, v0, v1}, Le/m/a/c/g1/e;->f([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p2, p0, Le/m/a/c/g1/e0/a;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 3
    iget-object p2, p0, Le/m/a/c/g1/e0/a;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, p1}, Le/m/a/c/q1/t;->B(I)V

    .line 4
    iget-boolean p1, p0, Le/m/a/c/g1/e0/a;->c:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/c/g1/e0/a;->a:Le/m/a/c/g1/e0/b;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p1, Le/m/a/c/g1/e0/b;->l:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Le/m/a/c/g1/e0/a;->c:Z

    .line 8
    :cond_1
    iget-object p1, p0, Le/m/a/c/g1/e0/a;->a:Le/m/a/c/g1/e0/b;

    iget-object p2, p0, Le/m/a/c/g1/e0/a;->b:Le/m/a/c/q1/t;

    invoke-virtual {p1, p2}, Le/m/a/c/g1/e0/b;->d(Le/m/a/c/q1/t;)V

    return v0
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/a;->a:Le/m/a/c/g1/e0/b;

    new-instance v1, Le/m/a/c/g1/e0/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Le/m/a/c/g1/e0/c0$d;-><init>(III)V

    .line 3
    invoke-virtual {v0, p1, v1}, Le/m/a/c/g1/e0/b;->e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V

    .line 4
    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    .line 5
    new-instance v0, Le/m/a/c/g1/q$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 7
    invoke-interface {p1, v0}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, v0, Le/m/a/c/q1/t;->a:[B

    .line 3
    invoke-virtual {p1, v4, v2, v1, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 4
    invoke-virtual {v0, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 5
    invoke-virtual {v0}, Le/m/a/c/q1/t;->s()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_7

    .line 6
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    .line 7
    invoke-virtual {p1, v3, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    move v4, v2

    move v5, v3

    .line 8
    :goto_1
    iget-object v7, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v8, 0x6

    .line 9
    invoke-virtual {p1, v7, v2, v8, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 10
    invoke-virtual {v0, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 11
    invoke-virtual {v0}, Le/m/a/c/q1/t;->v()I

    move-result v7

    const/16 v9, 0xb77

    if-eq v7, v9, :cond_1

    .line 12
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    add-int/lit8 v5, v5, 0x1

    sub-int v4, v5, v3

    const/16 v7, 0x2000

    if-lt v4, v7, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-virtual {p1, v5, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v9, 0x4

    if-lt v4, v9, :cond_2

    return v7

    .line 14
    :cond_2
    iget-object v10, v0, Le/m/a/c/q1/t;->a:[B

    .line 15
    array-length v11, v10

    const/4 v12, -0x1

    if-ge v11, v8, :cond_3

    move v9, v12

    goto :goto_3

    :cond_3
    const/4 v11, 0x5

    .line 16
    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xf8

    shr-int/2addr v11, v6

    if-le v11, v1, :cond_4

    move v11, v7

    goto :goto_2

    :cond_4
    move v11, v2

    :goto_2
    if-eqz v11, :cond_5

    const/4 v8, 0x2

    .line 17
    aget-byte v9, v10, v8

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x8

    .line 18
    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    goto :goto_3

    .line 19
    :cond_5
    aget-byte v7, v10, v9

    and-int/lit16 v7, v7, 0xc0

    shr-int/2addr v7, v8

    .line 20
    aget-byte v8, v10, v9

    and-int/lit8 v8, v8, 0x3f

    .line 21
    invoke-static {v7, v8}, Le/m/a/c/c1/g;->a(II)I

    move-result v9

    :goto_3
    if-ne v9, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v9, v9, -0x6

    .line 22
    invoke-virtual {p1, v9, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {v0, v6}, Le/m/a/c/q1/t;->D(I)V

    .line 24
    invoke-virtual {v0}, Le/m/a/c/q1/t;->p()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 25
    invoke-virtual {p1, v4, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method
