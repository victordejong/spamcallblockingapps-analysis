.class public final Le/m/a/c/g1/y/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/y/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/m;

.field public final b:I

.field public final c:Le/m/a/c/g1/k$a;


# direct methods
.method public constructor <init>(Le/m/a/c/q1/m;ILe/m/a/c/g1/y/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/y/b$b;->a:Le/m/a/c/q1/m;

    .line 3
    iput p2, p0, Le/m/a/c/g1/y/b$b;->b:I

    .line 4
    new-instance p1, Le/m/a/c/g1/k$a;

    invoke-direct {p1}, Le/m/a/c/g1/k$a;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/y/b$b;->c:Le/m/a/c/g1/k$a;

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/g1/b;->a(Le/m/a/c/g1/a$f;)V

    return-void
.end method

.method public b(Le/m/a/c/g1/e;J)Le/m/a/c/g1/a$e;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Le/m/a/c/g1/e;->d:J

    .line 2
    invoke-virtual {p0, p1}, Le/m/a/c/g1/y/b$b;->c(Le/m/a/c/g1/e;)J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v4

    .line 4
    iget-object v6, p0, Le/m/a/c/g1/y/b$b;->a:Le/m/a/c/q1/m;

    iget v6, v6, Le/m/a/c/q1/m;->c:I

    const/4 v7, 0x6

    .line 5
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    .line 6
    invoke-virtual {p1, v6, v7}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 7
    invoke-virtual {p0, p1}, Le/m/a/c/g1/y/b$b;->c(Le/m/a/c/g1/e;)J

    move-result-wide v6

    .line 8
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_0

    cmp-long p1, v6, p2

    if-lez p1, :cond_0

    .line 9
    invoke-static {v4, v5}, Le/m/a/c/g1/a$e;->b(J)Le/m/a/c/g1/a$e;

    move-result-object p1

    return-object p1

    :cond_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_1

    .line 10
    invoke-static {v6, v7, v8, v9}, Le/m/a/c/g1/a$e;->c(JJ)Le/m/a/c/g1/a$e;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-static {v2, v3, v0, v1}, Le/m/a/c/g1/a$e;->a(JJ)Le/m/a/c/g1/a$e;

    move-result-object p1

    return-object p1
.end method

.method public final c(Le/m/a/c/g1/e;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Le/m/a/c/g1/e;->c:J

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/y/b$b;->a:Le/m/a/c/q1/m;

    iget v2, p0, Le/m/a/c/g1/y/b$b;->b:I

    iget-object v3, p0, Le/m/a/c/g1/y/b$b;->c:Le/m/a/c/g1/k$a;

    .line 4
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v6

    const/4 v8, 0x2

    new-array v9, v8, [B

    .line 5
    invoke-virtual {p1, v9, v1, v8, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 6
    aget-byte v10, v9, v1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    if-eq v10, v2, :cond_0

    .line 7
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 8
    iget-wide v2, p1, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 9
    invoke-virtual {p1, v0, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    move v0, v1

    goto :goto_1

    .line 10
    :cond_0
    new-instance v10, Le/m/a/c/q1/t;

    const/16 v12, 0x10

    invoke-direct {v10, v12}, Le/m/a/c/q1/t;-><init>(I)V

    .line 11
    iget-object v12, v10, Le/m/a/c/q1/t;->a:[B

    invoke-static {v9, v1, v12, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v9, v10, Le/m/a/c/q1/t;->a:[B

    const/16 v12, 0xe

    .line 13
    invoke-static {p1, v9, v8, v12}, Ln3/g0/y;->B1(Le/m/a/c/g1/e;[BII)I

    move-result v8

    .line 14
    invoke-virtual {v10, v8}, Le/m/a/c/q1/t;->B(I)V

    .line 15
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 16
    iget-wide v8, p1, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    .line 17
    invoke-virtual {p1, v6, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 18
    invoke-static {v10, v0, v2, v3}, Le/m/a/c/g1/k;->b(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ILe/m/a/c/g1/k$a;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p1, v11, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v2

    .line 21
    iget-wide v6, p1, Le/m/a/c/g1/e;->c:J

    sub-long v4, v6, v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v2

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 23
    invoke-virtual {p1, v0, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 24
    iget-object p1, p0, Le/m/a/c/g1/y/b$b;->a:Le/m/a/c/q1/m;

    iget-wide v0, p1, Le/m/a/c/q1/m;->j:J

    return-wide v0

    .line 25
    :cond_2
    iget-object p1, p0, Le/m/a/c/g1/y/b$b;->c:Le/m/a/c/g1/k$a;

    iget-wide v0, p1, Le/m/a/c/g1/k$a;->a:J

    return-wide v0
.end method
