.class public Le/m/a/c/l1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/l1/u$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/d;

.field public final b:I

.field public final c:Le/m/a/c/q1/t;

.field public d:Le/m/a/c/l1/u$a;

.field public e:Le/m/a/c/l1/u$a;

.field public f:Le/m/a/c/l1/u$a;

.field public g:J


# direct methods
.method public constructor <init>(Le/m/a/c/p1/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/u;->a:Le/m/a/c/p1/d;

    .line 3
    check-cast p1, Le/m/a/c/p1/o;

    .line 4
    iget p1, p1, Le/m/a/c/p1/o;->b:I

    .line 5
    iput p1, p0, Le/m/a/c/l1/u;->b:I

    .line 6
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    .line 7
    new-instance v0, Le/m/a/c/l1/u$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Le/m/a/c/l1/u$a;-><init>(JI)V

    iput-object v0, p0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    .line 8
    iput-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    .line 9
    iput-object v0, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    iget-wide v1, v0, Le/m/a/c/l1/u$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2
    iget-object v1, p0, Le/m/a/c/l1/u;->a:Le/m/a/c/p1/d;

    iget-object v0, v0, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    check-cast v1, Le/m/a/c/p1/o;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Le/m/a/c/p1/o;->c:[Le/m/a/c/p1/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    invoke-virtual {v1, v2}, Le/m/a/c/p1/o;->a([Le/m/a/c/p1/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v1

    .line 7
    iget-object v0, p0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    .line 9
    iget-object v2, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    .line 10
    iput-object v1, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    .line 11
    iput-object v2, p0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1

    throw p1

    .line 13
    :cond_1
    iget-object p1, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide p1, p1, Le/m/a/c/l1/u$a;->a:J

    iget-wide v1, v0, Le/m/a/c/l1/u$a;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 14
    iput-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/l1/u;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/l1/u;->g:J

    .line 2
    iget-object p1, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-wide v2, p1, Le/m/a/c/l1/u$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    iput-object p1, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-boolean v1, v0, Le/m/a/c/l1/u$a;->c:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Le/m/a/c/l1/u;->a:Le/m/a/c/p1/d;

    .line 3
    check-cast v1, Le/m/a/c/p1/o;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget v2, v1, Le/m/a/c/p1/o;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Le/m/a/c/p1/o;->e:I

    .line 6
    iget v2, v1, Le/m/a/c/p1/o;->f:I

    if-lez v2, :cond_0

    .line 7
    iget-object v4, v1, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Le/m/a/c/p1/o;->f:I

    aget-object v5, v4, v2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v4, v2

    goto :goto_0

    .line 9
    :cond_0
    new-instance v5, Le/m/a/c/p1/c;

    iget v2, v1, Le/m/a/c/p1/o;->b:I

    new-array v2, v2, [B

    const/4 v4, 0x0

    invoke-direct {v5, v2, v4}, Le/m/a/c/p1/c;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit v1

    .line 11
    new-instance v1, Le/m/a/c/l1/u$a;

    iget-object v2, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-wide v6, v2, Le/m/a/c/l1/u$a;->b:J

    iget v2, p0, Le/m/a/c/l1/u;->b:I

    invoke-direct {v1, v6, v7, v2}, Le/m/a/c/l1/u$a;-><init>(JI)V

    .line 12
    iput-object v5, v0, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    .line 13
    iput-object v1, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    .line 14
    iput-boolean v3, v0, Le/m/a/c/l1/u$a;->c:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v1

    throw p1

    .line 16
    :cond_1
    :goto_1
    iget-object v0, p0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-wide v0, v0, Le/m/a/c/l1/u$a;->b:J

    iget-wide v2, p0, Le/m/a/c/l1/u;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final d(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v1, v0, Le/m/a/c/l1/u$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    iput-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v0, v0, Le/m/a/c/l1/u$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-object v2, v1, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    .line 5
    iget-object v2, v2, Le/m/a/c/p1/c;->a:[B

    invoke-virtual {v1, p1, p2}, Le/m/a/c/l1/u$a;->a(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 6
    iget-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v1, v0, Le/m/a/c/l1/u$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 7
    iget-object v0, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    iput-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e(J[BI)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v1, v0, Le/m/a/c/l1/u$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    iput-object v0, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 3
    iget-object v1, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v1, v1, Le/m/a/c/l1/u$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-object v3, v2, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    .line 5
    iget-object v3, v3, Le/m/a/c/p1/c;->a:[B

    .line 6
    invoke-virtual {v2, p1, p2}, Le/m/a/c/l1/u$a;->a(J)I

    move-result v2

    sub-int v4, p4, v0

    .line 7
    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 8
    iget-object v1, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    iget-wide v2, v1, Le/m/a/c/l1/u$a;->b:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 9
    iget-object v1, v1, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    iput-object v1, p0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    goto :goto_1

    :cond_2
    return-void
.end method
