.class public final Le/m/a/c/q1/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[J

.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Le/m/a/c/q1/b0;->a:[J

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/m/a/c/q1/b0;->d:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Le/m/a/c/q1/b0;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Le/m/a/c/q1/b0;->a:[J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/m/a/c/q1/b0;->b()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/q1/b0;->c()V

    .line 6
    iget v0, p0, Le/m/a/c/q1/b0;->c:I

    iget v1, p0, Le/m/a/c/q1/b0;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 7
    iget-object v3, p0, Le/m/a/c/q1/b0;->a:[J

    aput-wide p1, v3, v0

    .line 8
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Le/m/a/c/q1/b0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Le/m/a/c/q1/b0;->c:I

    .line 2
    iput v0, p0, Le/m/a/c/q1/b0;->d:I

    .line 3
    iget-object v0, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2
    iget v1, p0, Le/m/a/c/q1/b0;->d:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 3
    new-array v2, v1, [J

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    iget v3, p0, Le/m/a/c/q1/b0;->c:I

    sub-int/2addr v0, v3

    .line 6
    iget-object v4, p0, Le/m/a/c/q1/b0;->a:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v3, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    iget v4, p0, Le/m/a/c/q1/b0;->c:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Le/m/a/c/q1/b0;->c:I

    if-lez v3, :cond_1

    .line 9
    iget-object v4, p0, Le/m/a/c/q1/b0;->a:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v3, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    iget v4, p0, Le/m/a/c/q1/b0;->c:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_1
    iput-object v2, p0, Le/m/a/c/q1/b0;->a:[J

    .line 12
    iput-object v1, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    .line 13
    iput v5, p0, Le/m/a/c/q1/b0;->c:I

    return-void
.end method

.method public final d(JZ)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-object v3, v0

    .line 1
    :goto_0
    iget v4, p0, Le/m/a/c/q1/b0;->d:I

    if-lez v4, :cond_1

    .line 2
    iget-object v5, p0, Le/m/a/c/q1/b0;->a:[J

    iget v6, p0, Le/m/a/c/q1/b0;->c:I

    aget-wide v7, v5, v6

    sub-long v7, p1, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v9, v7

    cmp-long v1, v9, v1

    if-ltz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Le/m/a/c/q1/b0;->b:[Ljava/lang/Object;

    aget-object v3, v1, v6

    .line 4
    aput-object v0, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 5
    array-length v1, v1

    rem-int/2addr v6, v1

    iput v6, p0, Le/m/a/c/q1/b0;->c:I

    add-int/lit8 v4, v4, -0x1

    .line 6
    iput v4, p0, Le/m/a/c/q1/b0;->d:I

    move-wide v1, v7

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public declared-synchronized e(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Le/m/a/c/q1/b0;->d(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
