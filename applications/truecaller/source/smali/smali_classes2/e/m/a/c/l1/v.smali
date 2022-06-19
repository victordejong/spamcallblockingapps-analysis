.class public Le/m/a/c/l1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/l1/v$a;,
        Le/m/a/c/l1/v$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/l1/u;

.field public final b:Le/m/a/c/l1/v$a;

.field public final c:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Le/m/a/c/l1/v$b;

.field public e:Lcom/google/android/exoplayer2/Format;

.field public f:Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/c<",
            "*>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:[I

.field public i:[J

.field public j:[I

.field public k:[I

.field public l:[J

.field public m:[Le/m/a/c/g1/s$a;

.field public n:[Lcom/google/android/exoplayer2/Format;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:J

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lcom/google/android/exoplayer2/Format;

.field public y:Lcom/google/android/exoplayer2/Format;

.field public z:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/d;Le/m/a/c/f1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/p1/d;",
            "Le/m/a/c/f1/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/l1/u;

    invoke-direct {v0, p1}, Le/m/a/c/l1/u;-><init>(Le/m/a/c/p1/d;)V

    iput-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 3
    iput-object p2, p0, Le/m/a/c/l1/v;->c:Le/m/a/c/f1/e;

    .line 4
    new-instance p1, Le/m/a/c/l1/v$a;

    invoke-direct {p1}, Le/m/a/c/l1/v$a;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/v;->b:Le/m/a/c/l1/v$a;

    const/16 p1, 0x3e8

    .line 5
    iput p1, p0, Le/m/a/c/l1/v;->g:I

    new-array p2, p1, [I

    .line 6
    iput-object p2, p0, Le/m/a/c/l1/v;->h:[I

    new-array p2, p1, [J

    .line 7
    iput-object p2, p0, Le/m/a/c/l1/v;->i:[J

    new-array p2, p1, [J

    .line 8
    iput-object p2, p0, Le/m/a/c/l1/v;->l:[J

    new-array p2, p1, [I

    .line 9
    iput-object p2, p0, Le/m/a/c/l1/v;->k:[I

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Le/m/a/c/l1/v;->j:[I

    new-array p2, p1, [Le/m/a/c/g1/s$a;

    .line 11
    iput-object p2, p0, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    .line 12
    iput-object p1, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 p1, -0x8000000000000000L

    .line 13
    iput-wide p1, p0, Le/m/a/c/l1/v;->s:J

    .line 14
    iput-wide p1, p0, Le/m/a/c/l1/v;->t:J

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Le/m/a/c/l1/v;->w:Z

    .line 16
    iput-boolean p1, p0, Le/m/a/c/l1/v;->v:Z

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/q1/t;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-lez p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Le/m/a/c/l1/u;->c(I)I

    move-result v1

    .line 4
    iget-object v2, v0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-object v3, v2, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    iget-object v3, v3, Le/m/a/c/p1/c;->a:[B

    iget-wide v4, v0, Le/m/a/c/l1/u;->g:J

    .line 5
    invoke-virtual {v2, v4, v5}, Le/m/a/c/l1/u$a;->a(J)I

    move-result v2

    .line 6
    invoke-virtual {p1, v3, v2, v1}, Le/m/a/c/q1/t;->d([BII)V

    sub-int/2addr p2, v1

    .line 7
    invoke-virtual {v0, v1}, Le/m/a/c/l1/u;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/m/a/c/l1/v;->z:Lcom/google/android/exoplayer2/Format;

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Le/m/a/c/l1/v;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    iput-boolean v0, p0, Le/m/a/c/l1/v;->w:Z

    .line 6
    iget-object v2, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    monitor-exit p0

    goto :goto_1

    .line 8
    :cond_1
    :try_start_2
    iget-object v0, p0, Le/m/a/c/l1/v;->y:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Le/m/a/c/l1/v;->y:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    goto :goto_0

    .line 11
    :cond_2
    :try_start_3
    iput-object p1, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit p0

    :goto_0
    move v0, v1

    .line 13
    :goto_1
    iget-object p1, p0, Le/m/a/c/l1/v;->d:Le/m/a/c/l1/v$b;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Le/m/a/c/l1/s;

    .line 15
    iget-object v0, p1, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    iget-object p1, p1, Le/m/a/c/l1/s;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1
.end method

.method public final c(JIIILe/m/a/c/g1/s$a;)V
    .locals 6

    const-wide/16 v0, 0x0

    add-long/2addr p1, v0

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 2
    iget-wide v0, v0, Le/m/a/c/l1/u;->g:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    int-to-long v2, p5

    sub-long/2addr v0, v2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean p5, p0, Le/m/a/c/l1/v;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    and-int/lit8 p5, p3, 0x1

    if-nez p5, :cond_0

    .line 5
    monitor-exit p0

    goto/16 :goto_2

    .line 6
    :cond_0
    :try_start_1
    iput-boolean v2, p0, Le/m/a/c/l1/v;->v:Z

    .line 7
    :cond_1
    iget-boolean p5, p0, Le/m/a/c/l1/v;->w:Z

    const/4 v3, 0x1

    if-nez p5, :cond_2

    move p5, v3

    goto :goto_0

    :cond_2
    move p5, v2

    :goto_0
    invoke-static {p5}, Ln3/g0/y;->x(Z)V

    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_3

    move p5, v3

    goto :goto_1

    :cond_3
    move p5, v2

    .line 8
    :goto_1
    iput-boolean p5, p0, Le/m/a/c/l1/v;->u:Z

    .line 9
    iget-wide v4, p0, Le/m/a/c/l1/v;->t:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Le/m/a/c/l1/v;->t:J

    .line 10
    iget p5, p0, Le/m/a/c/l1/v;->o:I

    invoke-virtual {p0, p5}, Le/m/a/c/l1/v;->j(I)I

    move-result p5

    .line 11
    iget-object v4, p0, Le/m/a/c/l1/v;->l:[J

    aput-wide p1, v4, p5

    .line 12
    iget-object p1, p0, Le/m/a/c/l1/v;->i:[J

    aput-wide v0, p1, p5

    .line 13
    iget-object p2, p0, Le/m/a/c/l1/v;->j:[I

    aput p4, p2, p5

    .line 14
    iget-object p2, p0, Le/m/a/c/l1/v;->k:[I

    aput p3, p2, p5

    .line 15
    iget-object p2, p0, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    aput-object p6, p2, p5

    .line 16
    iget-object p2, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    iget-object p3, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;

    aput-object p3, p2, p5

    .line 17
    iget-object p2, p0, Le/m/a/c/l1/v;->h:[I

    aput v2, p2, p5

    .line 18
    iput-object p3, p0, Le/m/a/c/l1/v;->y:Lcom/google/android/exoplayer2/Format;

    .line 19
    iget p2, p0, Le/m/a/c/l1/v;->o:I

    add-int/2addr p2, v3

    iput p2, p0, Le/m/a/c/l1/v;->o:I

    .line 20
    iget p3, p0, Le/m/a/c/l1/v;->g:I

    if-ne p2, p3, :cond_4

    add-int/lit16 p2, p3, 0x3e8

    .line 21
    new-array p4, p2, [I

    .line 22
    new-array p5, p2, [J

    .line 23
    new-array p6, p2, [J

    .line 24
    new-array v0, p2, [I

    .line 25
    new-array v1, p2, [I

    .line 26
    new-array v3, p2, [Le/m/a/c/g1/s$a;

    .line 27
    new-array v4, p2, [Lcom/google/android/exoplayer2/Format;

    .line 28
    iget v5, p0, Le/m/a/c/l1/v;->q:I

    sub-int/2addr p3, v5

    .line 29
    invoke-static {p1, v5, p5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object p1, p0, Le/m/a/c/l1/v;->l:[J

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, p6, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object p1, p0, Le/m/a/c/l1/v;->k:[I

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object p1, p0, Le/m/a/c/l1/v;->j:[I

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object p1, p0, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object p1, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, v4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object p1, p0, Le/m/a/c/l1/v;->h:[I

    iget v5, p0, Le/m/a/c/l1/v;->q:I

    invoke-static {p1, v5, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget p1, p0, Le/m/a/c/l1/v;->q:I

    .line 37
    iget-object v5, p0, Le/m/a/c/l1/v;->i:[J

    invoke-static {v5, v2, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v5, p0, Le/m/a/c/l1/v;->l:[J

    invoke-static {v5, v2, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v5, p0, Le/m/a/c/l1/v;->k:[I

    invoke-static {v5, v2, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v5, p0, Le/m/a/c/l1/v;->j:[I

    invoke-static {v5, v2, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v5, p0, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    invoke-static {v5, v2, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v5, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v5, v2, v4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v5, p0, Le/m/a/c/l1/v;->h:[I

    invoke-static {v5, v2, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object p5, p0, Le/m/a/c/l1/v;->i:[J

    .line 45
    iput-object p6, p0, Le/m/a/c/l1/v;->l:[J

    .line 46
    iput-object v0, p0, Le/m/a/c/l1/v;->k:[I

    .line 47
    iput-object v1, p0, Le/m/a/c/l1/v;->j:[I

    .line 48
    iput-object v3, p0, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    .line 49
    iput-object v4, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    .line 50
    iput-object p4, p0, Le/m/a/c/l1/v;->h:[I

    .line 51
    iput v2, p0, Le/m/a/c/l1/v;->q:I

    .line 52
    iput p2, p0, Le/m/a/c/l1/v;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_4
    monitor-exit p0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Le/m/a/c/g1/e;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 2
    invoke-virtual {v0, p2}, Le/m/a/c/l1/u;->c(I)I

    move-result p2

    .line 3
    iget-object v1, v0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-object v2, v1, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    iget-object v2, v2, Le/m/a/c/p1/c;->a:[B

    iget-wide v3, v0, Le/m/a/c/l1/u;->g:J

    .line 4
    invoke-virtual {v1, v3, v4}, Le/m/a/c/l1/u$a;->a(J)I

    move-result v1

    .line 5
    invoke-virtual {p1, v2, v1, p2}, Le/m/a/c/g1/e;->f([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    move p1, p2

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_1
    invoke-virtual {v0, p1}, Le/m/a/c/l1/u;->b(I)V

    :goto_0
    return p1
.end method

.method public final e(I)J
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/l1/v;->s:J

    .line 2
    invoke-virtual {p0, p1}, Le/m/a/c/l1/v;->i(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/c/l1/v;->s:J

    .line 3
    iget v0, p0, Le/m/a/c/l1/v;->o:I

    sub-int/2addr v0, p1

    iput v0, p0, Le/m/a/c/l1/v;->o:I

    .line 4
    iget v1, p0, Le/m/a/c/l1/v;->p:I

    add-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/l1/v;->p:I

    .line 5
    iget v1, p0, Le/m/a/c/l1/v;->q:I

    add-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/l1/v;->q:I

    .line 6
    iget v2, p0, Le/m/a/c/l1/v;->g:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 7
    iput v1, p0, Le/m/a/c/l1/v;->q:I

    .line 8
    :cond_0
    iget v1, p0, Le/m/a/c/l1/v;->r:I

    sub-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/l1/v;->r:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Le/m/a/c/l1/v;->r:I

    :cond_1
    if-nez v0, :cond_3

    .line 10
    iget p1, p0, Le/m/a/c/l1/v;->q:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 11
    iget-object p1, p0, Le/m/a/c/l1/v;->i:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Le/m/a/c/l1/v;->j:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 12
    :cond_3
    iget-object p1, p0, Le/m/a/c/l1/v;->i:[J

    iget v0, p0, Le/m/a/c/l1/v;->q:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v1, p0, Le/m/a/c/l1/v;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 4
    monitor-exit p0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Le/m/a/c/l1/v;->e(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 6
    :goto_0
    invoke-virtual {v0, v1, v2}, Le/m/a/c/l1/u;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public final g(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1
    iget-object v3, p0, Le/m/a/c/l1/v;->l:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 2
    iget-object v3, p0, Le/m/a/c/l1/v;->k:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3
    iget v3, p0, Le/m/a/c/l1/v;->g:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final declared-synchronized h()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Le/m/a/c/l1/v;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1
    invoke-virtual {p0, v2}, Le/m/a/c/l1/v;->j(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 2
    iget-object v4, p0, Le/m/a/c/l1/v;->l:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    iget-object v4, p0, Le/m/a/c/l1/v;->k:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 4
    iget v2, p0, Le/m/a/c/l1/v;->g:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final j(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/l1/v;->q:I

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Le/m/a/c/l1/v;->g:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public final declared-synchronized k()Lcom/google/android/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/m/a/c/l1/v;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/l1/v;->r:I

    iget v1, p0, Le/m/a/c/l1/v;->o:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized m(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/l1/v;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Le/m/a/c/l1/v;->u:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 3
    :cond_2
    :try_start_1
    iget p1, p0, Le/m/a/c/l1/v;->r:I

    invoke-virtual {p0, p1}, Le/m/a/c/l1/v;->j(I)I

    move-result p1

    .line 4
    iget-object v0, p0, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget-object v2, p0, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_3

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Le/m/a/c/l1/v;->n(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->c:Le/m/a/c/f1/e;

    sget-object v1, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Le/m/a/c/f1/c;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/m/a/c/l1/v;->k:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    .line 4
    invoke-interface {p1}, Le/m/a/c/f1/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final o(Lcom/google/android/exoplayer2/Format;Le/m/a/c/g0;)V
    .locals 5

    .line 1
    iput-object p1, p2, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 4
    :goto_1
    iput-object p1, p0, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    .line 5
    iget-object v3, p0, Le/m/a/c/l1/v;->c:Le/m/a/c/f1/e;

    sget-object v4, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    if-ne v3, v4, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 7
    iput-boolean v1, p2, Le/m/a/c/g0;->a:Z

    .line 8
    iget-object v1, p0, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    iput-object v1, p2, Le/m/a/c/g0;->b:Le/m/a/c/f1/c;

    if-nez v2, :cond_3

    .line 9
    invoke-static {v0, v3}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 13
    iget-object p1, p0, Le/m/a/c/l1/v;->c:Le/m/a/c/f1/e;

    .line 14
    invoke-interface {p1, v1, v3}, Le/m/a/c/f1/e;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Le/m/a/c/f1/c;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Le/m/a/c/l1/v;->c:Le/m/a/c/f1/e;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Le/m/a/c/q1/q;->e(Ljava/lang/String;)I

    move-result p1

    .line 16
    invoke-interface {v2, v1, p1}, Le/m/a/c/f1/e;->c(Landroid/os/Looper;I)Le/m/a/c/f1/c;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    .line 17
    iput-object p1, p2, Le/m/a/c/g0;->b:Le/m/a/c/f1/c;

    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Le/m/a/c/f1/c;->release()V

    :cond_5
    return-void
.end method

.method public p(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 2
    iget-object v1, v0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    .line 3
    iget-boolean v2, v1, Le/m/a/c/l1/u$a;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, v0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    iget-boolean v5, v2, Le/m/a/c/l1/u$a;->c:Z

    iget-wide v6, v2, Le/m/a/c/l1/u$a;->a:J

    iget-wide v8, v1, Le/m/a/c/l1/u$a;->a:J

    sub-long/2addr v6, v8

    long-to-int v2, v6

    iget v6, v0, Le/m/a/c/l1/u;->b:I

    div-int/2addr v2, v6

    add-int/2addr v2, v5

    .line 5
    new-array v5, v2, [Le/m/a/c/p1/c;

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_1

    .line 6
    iget-object v7, v1, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    aput-object v7, v5, v6

    .line 7
    iput-object v3, v1, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    .line 8
    iget-object v7, v1, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    .line 9
    iput-object v3, v1, Le/m/a/c/l1/u$a;->e:Le/m/a/c/l1/u$a;

    add-int/lit8 v6, v6, 0x1

    move-object v1, v7

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v0, Le/m/a/c/l1/u;->a:Le/m/a/c/p1/d;

    check-cast v1, Le/m/a/c/p1/o;

    invoke-virtual {v1, v5}, Le/m/a/c/p1/o;->a([Le/m/a/c/p1/c;)V

    .line 11
    :goto_1
    new-instance v1, Le/m/a/c/l1/u$a;

    iget v2, v0, Le/m/a/c/l1/u;->b:I

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6, v2}, Le/m/a/c/l1/u$a;-><init>(JI)V

    iput-object v1, v0, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    .line 12
    iput-object v1, v0, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;

    .line 13
    iput-object v1, v0, Le/m/a/c/l1/u;->f:Le/m/a/c/l1/u$a;

    .line 14
    iput-wide v5, v0, Le/m/a/c/l1/u;->g:J

    .line 15
    iget-object v0, v0, Le/m/a/c/l1/u;->a:Le/m/a/c/p1/d;

    check-cast v0, Le/m/a/c/p1/o;

    invoke-virtual {v0}, Le/m/a/c/p1/o;->c()V

    .line 16
    iput v4, p0, Le/m/a/c/l1/v;->o:I

    .line 17
    iput v4, p0, Le/m/a/c/l1/v;->p:I

    .line 18
    iput v4, p0, Le/m/a/c/l1/v;->q:I

    .line 19
    iput v4, p0, Le/m/a/c/l1/v;->r:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Le/m/a/c/l1/v;->v:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 21
    iput-wide v1, p0, Le/m/a/c/l1/v;->s:J

    .line 22
    iput-wide v1, p0, Le/m/a/c/l1/v;->t:J

    .line 23
    iput-boolean v4, p0, Le/m/a/c/l1/v;->u:Z

    .line 24
    iput-object v3, p0, Le/m/a/c/l1/v;->y:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_2

    .line 25
    iput-object v3, p0, Le/m/a/c/l1/v;->z:Lcom/google/android/exoplayer2/Format;

    .line 26
    iput-object v3, p0, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;

    .line 27
    iput-boolean v0, p0, Le/m/a/c/l1/v;->w:Z

    :cond_2
    return-void
.end method

.method public final declared-synchronized q(JZ)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2
    :try_start_1
    iput v0, p0, Le/m/a/c/l1/v;->r:I

    .line 3
    iget-object v1, p0, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 4
    iget-object v2, v1, Le/m/a/c/l1/u;->d:Le/m/a/c/l1/u$a;

    iput-object v2, v1, Le/m/a/c/l1/u;->e:Le/m/a/c/l1/u$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    monitor-exit p0

    .line 6
    invoke-virtual {p0, v0}, Le/m/a/c/l1/v;->j(I)I

    move-result v4

    .line 7
    invoke-virtual {p0}, Le/m/a/c/l1/v;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/m/a/c/l1/v;->l:[J

    aget-wide v2, v1, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    iget-wide v1, p0, Le/m/a/c/l1/v;->t:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget p3, p0, Le/m/a/c/l1/v;->o:I

    iget v1, p0, Le/m/a/c/l1/v;->r:I

    sub-int v5, p3, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v6, p1

    .line 9
    invoke-virtual/range {v3 .. v8}, Le/m/a/c/l1/v;->g(IIJZ)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 10
    monitor-exit p0

    return v0

    .line 11
    :cond_1
    :try_start_3
    iget p2, p0, Le/m/a/c/l1/v;->r:I

    add-int/2addr p2, p1

    iput p2, p0, Le/m/a/c/l1/v;->r:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    .line 12
    monitor-exit p0

    return p1

    .line 13
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
