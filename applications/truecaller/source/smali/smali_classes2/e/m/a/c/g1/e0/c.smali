.class public final Le/m/a/c/g1/e0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public final a:Le/m/a/c/g1/e0/d;

.field public final b:Le/m/a/c/q1/t;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/g1/e0/d;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Le/m/a/c/g1/e0/d;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Le/m/a/c/g1/e0/c;->a:Le/m/a/c/g1/e0/d;

    .line 5
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/e0/c;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/g1/e0/c;->c:Z

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/e0/c;->a:Le/m/a/c/g1/e0/d;

    invoke-virtual {p1}, Le/m/a/c/g1/e0/d;->a()V

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
    iget-object p2, p0, Le/m/a/c/g1/e0/c;->b:Le/m/a/c/q1/t;

    iget-object p2, p2, Le/m/a/c/q1/t;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-virtual {p1, p2, v0, v1}, Le/m/a/c/g1/e;->f([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p2, p0, Le/m/a/c/g1/e0/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 3
    iget-object p2, p0, Le/m/a/c/g1/e0/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, p1}, Le/m/a/c/q1/t;->B(I)V

    .line 4
    iget-boolean p1, p0, Le/m/a/c/g1/e0/c;->c:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/c/g1/e0/c;->a:Le/m/a/c/g1/e0/d;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p1, Le/m/a/c/g1/e0/d;->m:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Le/m/a/c/g1/e0/c;->c:Z

    .line 8
    :cond_1
    iget-object p1, p0, Le/m/a/c/g1/e0/c;->a:Le/m/a/c/g1/e0/d;

    iget-object p2, p0, Le/m/a/c/g1/e0/c;->b:Le/m/a/c/q1/t;

    invoke-virtual {p1, p2}, Le/m/a/c/g1/e0/d;->d(Le/m/a/c/q1/t;)V

    return v0
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/c;->a:Le/m/a/c/g1/e0/d;

    new-instance v1, Le/m/a/c/g1/e0/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Le/m/a/c/g1/e0/c0$d;-><init>(III)V

    .line 3
    invoke-virtual {v0, p1, v1}, Le/m/a/c/g1/e0/d;->e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V

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
    .locals 14
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

    move v1, v2

    move v4, v3

    .line 8
    :goto_1
    iget-object v5, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v7, 0x7

    .line 9
    invoke-virtual {p1, v5, v2, v7, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 10
    invoke-virtual {v0, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 11
    invoke-virtual {v0}, Le/m/a/c/q1/t;->v()I

    move-result v5

    const v8, 0xac40

    const v9, 0xac41

    if-eq v5, v8, :cond_1

    if-eq v5, v9, :cond_1

    .line 12
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-virtual {p1, v4, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v1, v8

    const/4 v10, 0x4

    if-lt v1, v10, :cond_2

    return v8

    .line 14
    :cond_2
    iget-object v8, v0, Le/m/a/c/q1/t;->a:[B

    .line 15
    array-length v11, v8

    const/4 v12, -0x1

    if-ge v11, v7, :cond_3

    move v11, v12

    goto :goto_3

    :cond_3
    const/4 v11, 0x2

    .line 16
    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    aget-byte v13, v8, v6

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    const v13, 0xffff

    if-ne v11, v13, :cond_4

    .line 17
    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x5

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    or-int v11, v10, v8

    goto :goto_2

    :cond_4
    move v7, v10

    :goto_2
    if-ne v5, v9, :cond_5

    add-int/lit8 v7, v7, 0x2

    :cond_5
    add-int/2addr v11, v7

    :goto_3
    if-ne v11, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v11, v11, -0x7

    .line 18
    invoke-virtual {p1, v11, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {v0, v6}, Le/m/a/c/q1/t;->D(I)V

    .line 20
    invoke-virtual {v0}, Le/m/a/c/q1/t;->p()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 21
    invoke-virtual {p1, v4, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method
