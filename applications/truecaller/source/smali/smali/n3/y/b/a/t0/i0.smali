.class public Ln3/y/b/a/t0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/i0$a;,
        Ln3/y/b/a/t0/i0$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/w0/b;

.field public final b:I

.field public final c:Ln3/y/b/a/t0/h0;

.field public final d:Ln3/y/b/a/t0/h0$a;

.field public final e:Ln3/y/b/a/x0/m;

.field public f:Ln3/y/b/a/t0/i0$a;

.field public g:Ln3/y/b/a/t0/i0$a;

.field public h:Ln3/y/b/a/t0/i0$a;

.field public i:Landroidx/media2/exoplayer/external/Format;

.field public j:Z

.field public k:Landroidx/media2/exoplayer/external/Format;

.field public l:J

.field public m:J

.field public n:Z

.field public o:Ln3/y/b/a/t0/i0$b;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/i0;->a:Ln3/y/b/a/w0/b;

    .line 3
    check-cast p1, Ln3/y/b/a/w0/l;

    .line 4
    iget p1, p1, Ln3/y/b/a/w0/l;->b:I

    .line 5
    iput p1, p0, Ln3/y/b/a/t0/i0;->b:I

    .line 6
    new-instance v0, Ln3/y/b/a/t0/h0;

    invoke-direct {v0}, Ln3/y/b/a/t0/h0;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 7
    new-instance v0, Ln3/y/b/a/t0/h0$a;

    invoke-direct {v0}, Ln3/y/b/a/t0/h0$a;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->d:Ln3/y/b/a/t0/h0$a;

    .line 8
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    .line 9
    new-instance v0, Ln3/y/b/a/t0/i0$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Ln3/y/b/a/t0/i0$a;-><init>(JI)V

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    .line 10
    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    .line 11
    iput-object v0, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/q0/d;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ln3/y/b/a/t0/i0;->n(I)I

    move-result p2

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-object v1, v0, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    iget-object v1, v1, Ln3/y/b/a/w0/a;->a:[B

    iget-wide v2, p0, Ln3/y/b/a/t0/i0;->m:J

    .line 3
    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/t0/i0$a;->a(J)I

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0, p2}, Ln3/y/b/a/q0/d;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/i0;->m(I)V

    return p1
.end method

.method public b(JIIILn3/y/b/a/q0/p$a;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/i0;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->k:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/i0;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 3
    :cond_0
    iget-wide v0, p0, Ln3/y/b/a/t0/i0;->l:J

    add-long/2addr p1, v0

    .line 4
    iget-boolean v0, p0, Ln3/y/b/a/t0/i0;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v3, v0, Ln3/y/b/a/t0/h0;->i:I

    if-nez v3, :cond_2

    .line 8
    iget-wide v3, v0, Ln3/y/b/a/t0/h0;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    monitor-exit v0

    goto :goto_2

    .line 9
    :cond_2
    :try_start_1
    iget-wide v3, v0, Ln3/y/b/a/t0/h0;->m:J

    iget v5, v0, Ln3/y/b/a/t0/h0;->l:I

    .line 10
    invoke-virtual {v0, v5}, Ln3/y/b/a/t0/h0;->d(I)J

    move-result-wide v5

    .line 11
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v3, p1

    if-ltz v3, :cond_3

    .line 12
    monitor-exit v0

    move v3, v1

    goto :goto_2

    .line 13
    :cond_3
    :try_start_2
    iget v3, v0, Ln3/y/b/a/t0/h0;->i:I

    add-int/lit8 v4, v3, -0x1

    .line 14
    invoke-virtual {v0, v4}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v4

    .line 15
    :cond_4
    :goto_1
    iget v5, v0, Ln3/y/b/a/t0/h0;->l:I

    if-le v3, v5, :cond_5

    iget-object v5, v0, Ln3/y/b/a/t0/h0;->f:[J

    aget-wide v6, v5, v4

    cmp-long v5, v6, p1

    if-ltz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 16
    iget v4, v0, Ln3/y/b/a/t0/h0;->a:I

    sub-int/2addr v4, v2

    goto :goto_1

    .line 17
    :cond_5
    iget v4, v0, Ln3/y/b/a/t0/h0;->j:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ln3/y/b/a/t0/h0;->b(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit v0

    move v3, v2

    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    iput-boolean v1, p0, Ln3/y/b/a/t0/i0;->n:Z

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    :cond_7
    :goto_3
    return-void

    .line 21
    :cond_8
    :goto_4
    iget-wide v3, p0, Ln3/y/b/a/t0/i0;->m:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    .line 22
    iget-object p5, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 23
    monitor-enter p5

    .line 24
    :try_start_3
    iget-boolean v0, p5, Ln3/y/b/a/t0/h0;->p:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_a

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_9

    .line 25
    monitor-exit p5

    goto/16 :goto_7

    .line 26
    :cond_9
    :try_start_4
    iput-boolean v1, p5, Ln3/y/b/a/t0/h0;->p:Z

    .line 27
    :cond_a
    iget-boolean v0, p5, Ln3/y/b/a/t0/h0;->q:Z

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    .line 28
    :goto_6
    iput-boolean v0, p5, Ln3/y/b/a/t0/h0;->o:Z

    .line 29
    iget-wide v5, p5, Ln3/y/b/a/t0/h0;->n:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p5, Ln3/y/b/a/t0/h0;->n:J

    .line 30
    iget v0, p5, Ln3/y/b/a/t0/h0;->i:I

    invoke-virtual {p5, v0}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v0

    .line 31
    iget-object v5, p5, Ln3/y/b/a/t0/h0;->f:[J

    aput-wide p1, v5, v0

    .line 32
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->c:[J

    aput-wide v3, p1, v0

    .line 33
    iget-object p2, p5, Ln3/y/b/a/t0/h0;->d:[I

    aput p4, p2, v0

    .line 34
    iget-object p2, p5, Ln3/y/b/a/t0/h0;->e:[I

    aput p3, p2, v0

    .line 35
    iget-object p2, p5, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    aput-object p6, p2, v0

    .line 36
    iget-object p2, p5, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    iget-object p3, p5, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;

    aput-object p3, p2, v0

    .line 37
    iget-object p2, p5, Ln3/y/b/a/t0/h0;->b:[I

    iget p4, p5, Ln3/y/b/a/t0/h0;->t:I

    aput p4, p2, v0

    .line 38
    iput-object p3, p5, Ln3/y/b/a/t0/h0;->s:Landroidx/media2/exoplayer/external/Format;

    .line 39
    iget p2, p5, Ln3/y/b/a/t0/h0;->i:I

    add-int/2addr p2, v2

    iput p2, p5, Ln3/y/b/a/t0/h0;->i:I

    .line 40
    iget p3, p5, Ln3/y/b/a/t0/h0;->a:I

    if-ne p2, p3, :cond_d

    add-int/lit16 p2, p3, 0x3e8

    .line 41
    new-array p4, p2, [I

    .line 42
    new-array p6, p2, [J

    .line 43
    new-array v0, p2, [J

    .line 44
    new-array v2, p2, [I

    .line 45
    new-array v3, p2, [I

    .line 46
    new-array v4, p2, [Ln3/y/b/a/q0/p$a;

    .line 47
    new-array v5, p2, [Landroidx/media2/exoplayer/external/Format;

    .line 48
    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    sub-int/2addr p3, v6

    .line 49
    invoke-static {p1, v6, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->f:[J

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->e:[I

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->d:[I

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, v5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object p1, p5, Ln3/y/b/a/t0/h0;->b:[I

    iget v6, p5, Ln3/y/b/a/t0/h0;->k:I

    invoke-static {p1, v6, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget p1, p5, Ln3/y/b/a/t0/h0;->k:I

    .line 57
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->c:[J

    invoke-static {v6, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->f:[J

    invoke-static {v6, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->e:[I

    invoke-static {v6, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->d:[I

    invoke-static {v6, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    invoke-static {v6, v1, v4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v6, v1, v5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v6, p5, Ln3/y/b/a/t0/h0;->b:[I

    invoke-static {v6, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object p6, p5, Ln3/y/b/a/t0/h0;->c:[J

    .line 65
    iput-object v0, p5, Ln3/y/b/a/t0/h0;->f:[J

    .line 66
    iput-object v2, p5, Ln3/y/b/a/t0/h0;->e:[I

    .line 67
    iput-object v3, p5, Ln3/y/b/a/t0/h0;->d:[I

    .line 68
    iput-object v4, p5, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    .line 69
    iput-object v5, p5, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    .line 70
    iput-object p4, p5, Ln3/y/b/a/t0/h0;->b:[I

    .line 71
    iput v1, p5, Ln3/y/b/a/t0/h0;->k:I

    .line 72
    iget p1, p5, Ln3/y/b/a/t0/h0;->a:I

    iput p1, p5, Ln3/y/b/a/t0/h0;->i:I

    .line 73
    iput p2, p5, Ln3/y/b/a/t0/h0;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :cond_d
    monitor-exit p5

    :goto_7
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p5

    throw p1
.end method

.method public c(Landroidx/media2/exoplayer/external/Format;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/i0;->l:J

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 2
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/Format;->m:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v2, v0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->f(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 4
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 5
    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 6
    :try_start_0
    iput-boolean v2, v1, Ln3/y/b/a/t0/h0;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    :goto_1
    move v2, v3

    goto :goto_2

    .line 8
    :cond_2
    :try_start_1
    iput-boolean v3, v1, Ln3/y/b/a/t0/h0;->q:Z

    .line 9
    iget-object v4, v1, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v0, v4}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 10
    monitor-exit v1

    goto :goto_1

    .line 11
    :cond_3
    :try_start_2
    iget-object v4, v1, Ln3/y/b/a/t0/h0;->s:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v0, v4}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v4, v1, Ln3/y/b/a/t0/h0;->s:Landroidx/media2/exoplayer/external/Format;

    iput-object v4, v1, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit v1

    goto :goto_2

    .line 14
    :cond_4
    :try_start_3
    iput-object v0, v1, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit v1

    .line 16
    :goto_2
    iput-object p1, p0, Ln3/y/b/a/t0/i0;->k:Landroidx/media2/exoplayer/external/Format;

    .line 17
    iput-boolean v3, p0, Ln3/y/b/a/t0/i0;->j:Z

    .line 18
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->o:Ln3/y/b/a/t0/i0$b;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {p1, v0}, Ln3/y/b/a/t0/i0$b;->p(Landroidx/media2/exoplayer/external/Format;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1

    throw p1
.end method

.method public d(Ln3/y/b/a/x0/m;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Ln3/y/b/a/t0/i0;->n(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-object v2, v1, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    iget-object v2, v2, Ln3/y/b/a/w0/a;->a:[B

    iget-wide v3, p0, Ln3/y/b/a/t0/i0;->m:J

    .line 3
    invoke-virtual {v1, v3, v4}, Ln3/y/b/a/t0/i0$a;->a(J)I

    move-result v1

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Ln3/y/b/a/x0/m;->c([BII)V

    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/i0;->m(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(JZZ)I
    .locals 8

    .line 1
    iget-object v6, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    iget v0, v6, Ln3/y/b/a/t0/h0;->l:I

    invoke-virtual {v6, v0}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v1

    .line 4
    invoke-virtual {v6}, Ln3/y/b/a/t0/h0;->f()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v6, Ln3/y/b/a/t0/h0;->f:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v2, v6, Ln3/y/b/a/t0/h0;->n:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p4, v6, Ln3/y/b/a/t0/h0;->i:I

    iget v0, v6, Ln3/y/b/a/t0/h0;->l:I

    sub-int v2, p4, v0

    move-object v0, v6

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/t0/h0;->c(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    .line 6
    monitor-exit v6

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    iget p2, v6, Ln3/y/b/a/t0/h0;->l:I

    add-int/2addr p2, p1

    iput p2, v6, Ln3/y/b/a/t0/h0;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v6

    move v7, p1

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    monitor-exit v6

    :goto_1
    return v7

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Ln3/y/b/a/t0/h0;->i:I

    iget v2, v0, Ln3/y/b/a/t0/h0;->l:I

    sub-int v2, v1, v2

    .line 4
    iput v1, v0, Ln3/y/b/a/t0/h0;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    iget-wide v1, v0, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->a:Ln3/y/b/a/w0/b;

    iget-object v0, v0, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    check-cast v1, Ln3/y/b/a/w0/l;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Ln3/y/b/a/w0/l;->c:[Ln3/y/b/a/w0/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    invoke-virtual {v1, v2}, Ln3/y/b/a/w0/l;->a([Ln3/y/b/a/w0/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v1

    .line 7
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    .line 9
    iget-object v2, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    .line 10
    iput-object v1, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    .line 11
    iput-object v2, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1

    throw p1

    .line 13
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide p1, p1, Ln3/y/b/a/t0/i0$a;->a:J

    iget-wide v1, v0, Ln3/y/b/a/t0/i0$a;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 14
    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    :cond_2
    return-void
.end method

.method public h(JZZ)V
    .locals 9

    .line 1
    iget-object v6, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    iget v0, v6, Ln3/y/b/a/t0/h0;->i:I

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_3

    iget-object v1, v6, Ln3/y/b/a/t0/h0;->f:[J

    iget v2, v6, Ln3/y/b/a/t0/h0;->k:I

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget p4, v6, Ln3/y/b/a/t0/h0;->l:I

    if-eq p4, v0, :cond_1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    move-object v0, v6

    move v1, v2

    move v2, p4

    move-wide v3, p1

    move v5, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/t0/h0;->c(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 6
    monitor-exit v6

    goto :goto_2

    .line 7
    :cond_2
    :try_start_1
    invoke-virtual {v6, p1}, Ln3/y/b/a/t0/h0;->a(I)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    monitor-exit v6

    .line 9
    :goto_2
    invoke-virtual {p0, v7, v8}, Ln3/y/b/a/t0/i0;->g(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v6

    throw p1
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Ln3/y/b/a/t0/h0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/h0;->a(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 6
    :goto_0
    invoke-virtual {p0, v1, v2}, Ln3/y/b/a/t0/i0;->g(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method

.method public j()J
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, v0, Ln3/y/b/a/t0/h0;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public k()Landroidx/media2/exoplayer/external/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Ln3/y/b/a/t0/h0;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public l()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    iget v1, v0, Ln3/y/b/a/t0/h0;->l:I

    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/t0/h0;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Ln3/y/b/a/t0/h0;->b:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Ln3/y/b/a/t0/h0;->t:I

    :goto_0
    return v0
.end method

.method public final m(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/i0;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln3/y/b/a/t0/i0;->m:J

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-wide v2, p1, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    iput-object p1, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    :cond_0
    return-void
.end method

.method public final n(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-boolean v1, v0, Ln3/y/b/a/t0/i0$a;->c:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->a:Ln3/y/b/a/w0/b;

    check-cast v1, Ln3/y/b/a/w0/l;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget v2, v1, Ln3/y/b/a/w0/l;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Ln3/y/b/a/w0/l;->e:I

    .line 5
    iget v2, v1, Ln3/y/b/a/w0/l;->f:I

    if-lez v2, :cond_0

    .line 6
    iget-object v4, v1, Ln3/y/b/a/w0/l;->g:[Ln3/y/b/a/w0/a;

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ln3/y/b/a/w0/l;->f:I

    aget-object v5, v4, v2

    const/4 v6, 0x0

    .line 7
    aput-object v6, v4, v2

    goto :goto_0

    .line 8
    :cond_0
    new-instance v5, Ln3/y/b/a/w0/a;

    iget v2, v1, Ln3/y/b/a/w0/l;->b:I

    new-array v2, v2, [B

    const/4 v4, 0x0

    invoke-direct {v5, v2, v4}, Ln3/y/b/a/w0/a;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit v1

    .line 10
    new-instance v1, Ln3/y/b/a/t0/i0$a;

    iget-object v2, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-wide v6, v2, Ln3/y/b/a/t0/i0$a;->b:J

    iget v2, p0, Ln3/y/b/a/t0/i0;->b:I

    invoke-direct {v1, v6, v7, v2}, Ln3/y/b/a/t0/i0$a;-><init>(JI)V

    .line 11
    iput-object v5, v0, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    .line 12
    iput-object v1, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    .line 13
    iput-boolean v3, v0, Ln3/y/b/a/t0/i0$a;->c:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1

    throw p1

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/i0$a;->b:J

    iget-wide v2, p0, Ln3/y/b/a/t0/i0;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final o(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v1, v0, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 2
    iget-object v0, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/i0$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-object v2, v1, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    .line 5
    iget-object v2, v2, Ln3/y/b/a/w0/a;->a:[B

    invoke-virtual {v1, p1, p2}, Ln3/y/b/a/t0/i0$a;->a(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 6
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v1, v0, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 7
    iget-object v0, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final p(J[BI)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v1, v0, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 2
    iget-object v0, v0, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 3
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v1, v1, Ln3/y/b/a/t0/i0$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-object v3, v2, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    .line 5
    iget-object v3, v3, Ln3/y/b/a/w0/a;->a:[B

    invoke-virtual {v2, p1, p2}, Ln3/y/b/a/t0/i0$a;->a(J)I

    move-result v2

    sub-int v4, p4, v0

    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 6
    iget-object v1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    iget-wide v2, v1, Ln3/y/b/a/t0/i0$a;->b:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 7
    iget-object v1, v1, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    iput-object v1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public q(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Ln3/y/b/a/t0/h0;->i:I

    .line 3
    iput v1, v0, Ln3/y/b/a/t0/h0;->j:I

    .line 4
    iput v1, v0, Ln3/y/b/a/t0/h0;->k:I

    .line 5
    iput v1, v0, Ln3/y/b/a/t0/h0;->l:I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Ln3/y/b/a/t0/h0;->p:Z

    const-wide/high16 v3, -0x8000000000000000L

    .line 7
    iput-wide v3, v0, Ln3/y/b/a/t0/h0;->m:J

    .line 8
    iput-wide v3, v0, Ln3/y/b/a/t0/h0;->n:J

    .line 9
    iput-boolean v1, v0, Ln3/y/b/a/t0/h0;->o:Z

    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Ln3/y/b/a/t0/h0;->s:Landroidx/media2/exoplayer/external/Format;

    if-eqz p1, :cond_0

    .line 11
    iput-object v3, v0, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;

    .line 12
    iput-boolean v2, v0, Ln3/y/b/a/t0/h0;->q:Z

    .line 13
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    .line 14
    iget-boolean v0, p1, Ln3/y/b/a/t0/i0$a;->c:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    iget-boolean v2, v0, Ln3/y/b/a/t0/i0$a;->c:Z

    iget-wide v4, v0, Ln3/y/b/a/t0/i0$a;->a:J

    iget-wide v6, p1, Ln3/y/b/a/t0/i0$a;->a:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iget v4, p0, Ln3/y/b/a/t0/i0;->b:I

    div-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 16
    new-array v2, v0, [Ln3/y/b/a/w0/a;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 17
    iget-object v4, p1, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    aput-object v4, v2, v1

    .line 18
    iput-object v3, p1, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    .line 19
    iget-object v4, p1, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    .line 20
    iput-object v3, p1, Ln3/y/b/a/t0/i0$a;->e:Ln3/y/b/a/t0/i0$a;

    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->a:Ln3/y/b/a/w0/b;

    check-cast p1, Ln3/y/b/a/w0/l;

    invoke-virtual {p1, v2}, Ln3/y/b/a/w0/l;->a([Ln3/y/b/a/w0/a;)V

    .line 22
    :goto_1
    new-instance p1, Ln3/y/b/a/t0/i0$a;

    iget v0, p0, Ln3/y/b/a/t0/i0;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Ln3/y/b/a/t0/i0$a;-><init>(JI)V

    iput-object p1, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    .line 23
    iput-object p1, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    .line 24
    iput-object p1, p0, Ln3/y/b/a/t0/i0;->h:Ln3/y/b/a/t0/i0$a;

    .line 25
    iput-wide v1, p0, Ln3/y/b/a/t0/i0;->m:J

    .line 26
    iget-object p1, p0, Ln3/y/b/a/t0/i0;->a:Ln3/y/b/a/w0/b;

    check-cast p1, Ln3/y/b/a/w0/l;

    invoke-virtual {p1}, Ln3/y/b/a/w0/l;->c()V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput v1, v0, Ln3/y/b/a/t0/h0;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/i0;->f:Ln3/y/b/a/t0/i0$a;

    iput-object v0, p0, Ln3/y/b/a/t0/i0;->g:Ln3/y/b/a/t0/i0$a;

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method
