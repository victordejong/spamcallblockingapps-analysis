.class public Ln3/y/c/b1;
.super Ln3/y/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/b1$b;,
        Ln3/y/c/b1$c;
    }
.end annotation


# instance fields
.field public final j:Ln3/y/c/b1$c;

.field public final k:Landroid/os/Handler;

.field public final l:Ln3/y/b/a/x0/m;

.field public final m:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field public final n:Ln3/y/b/a/x;

.field public final o:Ln3/y/b/a/u0/a;

.field public final p:Ln3/y/c/b1$b;

.field public final q:Ln3/y/c/b1$b;

.field public final r:[I

.field public final s:Ln3/y/b/a/x0/m;

.field public t:Z

.field public u:Z

.field public v:[Z

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Ln3/y/c/b1$c;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Ln3/y/b/a/b;-><init>(I)V

    .line 2
    iput-object p1, p0, Ln3/y/c/b1;->j:Ln3/y/c/b1$c;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ln3/y/c/b1;->k:Landroid/os/Handler;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    .line 5
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    .line 6
    new-instance p1, Ln3/y/b/a/x;

    invoke-direct {p1}, Ln3/y/b/a/x;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->n:Ln3/y/b/a/x;

    .line 7
    new-instance p1, Ln3/y/b/a/u0/a;

    invoke-direct {p1}, Ln3/y/b/a/u0/a;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    .line 8
    new-instance p1, Ln3/y/c/b1$b;

    invoke-direct {p1}, Ln3/y/c/b1$b;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    .line 9
    new-instance p1, Ln3/y/c/b1$b;

    invoke-direct {p1}, Ln3/y/c/b1$b;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Ln3/y/c/b1;->r:[I

    .line 11
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Ln3/y/c/b1;->w:I

    .line 13
    iput p1, p0, Ln3/y/c/b1;->x:I

    return-void
.end method


# virtual methods
.method public B([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/16 p1, 0x80

    new-array p1, p1, [Z

    .line 1
    iput-object p1, p0, Ln3/y/c/b1;->v:[Z

    return-void
.end method

.method public D(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v0, "application/cea-608"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/vtt"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public declared-synchronized G()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v0}, Ln3/y/c/b1;->K(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final H(J)V
    .locals 10

    .line 1
    iget v0, p0, Ln3/y/c/b1;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Ln3/y/c/b1;->x:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [B

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v9, v1

    :goto_0
    move-wide v5, v2

    .line 2
    iget-object v1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    array-length v4, v9

    .line 7
    array-length v5, v1

    add-int/2addr v5, v4

    invoke-static {v9, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 8
    array-length v5, v1

    invoke-static {v1, v0, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    array-length p1, v9

    if-lez p1, :cond_3

    .line 11
    iget-object p1, p0, Ln3/y/c/b1;->j:Ln3/y/c/b1$c;

    check-cast p1, Ln3/y/c/j0$a;

    .line 12
    iget-object p1, p1, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 13
    iget-object p2, p1, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ln3/y/c/d1;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 15
    iget-object p1, p1, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    new-instance v1, Landroidx/media2/common/SubtitleData;

    const-wide/16 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroidx/media2/common/SubtitleData;-><init>(JJ[B)V

    check-cast p1, Ln3/y/c/m;

    .line 16
    new-instance v2, Ln3/y/c/y;

    invoke-direct {v2, p1, v0, p2, v1}, Ln3/y/c/y;-><init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {p1, v2}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final I(Ln3/y/c/b1$b;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    iget-object v1, p1, Ln3/y/c/b1$b;->a:[B

    iget v2, p1, Ln3/y/c/b1$b;->b:I

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/x0/m;->x([BI)V

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Ln3/y/c/b1$b;->b:I

    .line 3
    iget-object p1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_0

    const/16 p1, 0x40

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    .line 5
    iget v1, v1, Ln3/y/b/a/x0/m;->c:I

    const/4 v2, 0x2

    mul-int/2addr p1, v2

    if-eq v1, p1, :cond_1

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    if-lt p1, v2, :cond_5

    .line 7
    iget-object p1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    and-int/lit16 v1, p1, 0xe0

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 8
    iget-object v1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {v1}, Ln3/y/b/a/x0/m;->o()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    if-ge v1, v3, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v3, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->a()I

    move-result v3

    if-ge v3, p1, :cond_3

    return-void

    :cond_3
    if-lez p1, :cond_1

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p0, v3, v1}, Ln3/y/c/b1;->J(II)V

    .line 11
    iget v4, p0, Ln3/y/c/b1;->w:I

    if-ne v4, v3, :cond_4

    iget v3, p0, Ln3/y/c/b1;->x:I

    if-ne v3, v1, :cond_4

    .line 12
    new-array v1, p1, [B

    .line 13
    iget-object v3, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    .line 14
    iget-object v4, v3, Ln3/y/b/a/x0/m;->a:[B

    iget v5, v3, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v4, v5, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget v4, v3, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v4, p1

    iput v4, v3, Ln3/y/b/a/x0/m;->b:I

    .line 16
    iget-object p1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_4
    iget-object v1, p0, Ln3/y/c/b1;->s:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, p1}, Ln3/y/b/a/x0/m;->A(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final J(II)V
    .locals 3

    shl-int/lit8 v0, p1, 0x6

    add-int/2addr v0, p2

    .line 1
    iget-object v1, p0, Ln3/y/c/b1;->v:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 2
    aput-boolean v2, v1, v0

    .line 3
    iget-object v0, p0, Ln3/y/c/b1;->k:Landroid/os/Handler;

    new-instance v1, Ln3/y/c/b1$a;

    invoke-direct {v1, p0, p1, p2}, Ln3/y/c/b1$a;-><init>(Ln3/y/c/b1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized K(II)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Ln3/y/c/b1;->w:I

    .line 2
    iput p2, p0, Ln3/y/c/b1;->x:I

    .line 3
    iget-object p1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    .line 4
    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    const/4 p2, 0x0

    .line 5
    iput p2, p1, Ln3/y/c/b1$b;->b:I

    .line 6
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    .line 7
    iput p2, p1, Ln3/y/c/b1$b;->b:I

    .line 8
    iput-boolean p2, p0, Ln3/y/c/b1;->u:Z

    .line 9
    iput-boolean p2, p0, Ln3/y/c/b1;->t:Z
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

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/c/b1;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized i(JJ)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget p3, p0, Ln3/y/b/a/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ln3/y/c/b1;->H(J)V

    .line 4
    iget-boolean p3, p0, Ln3/y/c/b1;->t:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_4

    .line 5
    iget-object p3, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->a()V

    .line 6
    iget-object p3, p0, Ln3/y/c/b1;->n:Ln3/y/b/a/x;

    iget-object v2, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    invoke-virtual {p0, p3, v2, v1}, Ln3/y/b/a/b;->C(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I

    move-result p3

    const/4 v2, -0x3

    if-eq p3, v2, :cond_3

    const/4 v2, -0x5

    if-ne p3, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->g()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iput-boolean v0, p0, Ln3/y/c/b1;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Ln3/y/c/b1;->t:Z

    .line 11
    iget-object p3, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 13
    :cond_4
    :goto_1
    :try_start_3
    iget-object p3, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    iget-wide v2, p3, Ln3/y/b/a/o0/c;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x1adb0

    cmp-long p1, v2, p1

    if-lez p1, :cond_5

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_5
    :try_start_4
    iput-boolean v1, p0, Ln3/y/c/b1;->t:Z

    .line 16
    iget-object p1, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    iget-object p2, p3, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object p3, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    iget-object p3, p3, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 17
    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    .line 18
    iput v1, p1, Ln3/y/c/b1$b;->b:I

    .line 19
    :cond_6
    :goto_2
    iget-object p1, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_13

    .line 20
    iget-object p1, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    int-to-byte p1, p1

    .line 21
    iget-object p3, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {p3}, Ln3/y/b/a/x0/m;->o()I

    move-result p3

    int-to-byte p3, p3

    .line 22
    iget-object v2, p0, Ln3/y/c/b1;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    int-to-byte v2, v2

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    and-int/lit8 v4, p1, 0x3

    if-eqz v3, :cond_11

    if-ne v4, p2, :cond_9

    .line 23
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    invoke-virtual {p1}, Ln3/y/c/b1$b;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    iget-object p2, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    iget-wide v3, p2, Ln3/y/b/a/o0/c;->d:J

    invoke-virtual {p0, p1, v3, v4}, Ln3/y/c/b1;->I(Ln3/y/c/b1$b;J)V

    .line 25
    :cond_8
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    invoke-virtual {p1, p3, v2}, Ln3/y/c/b1$b;->a(BB)V

    goto :goto_2

    .line 26
    :cond_9
    iget-object v3, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    iget v5, v3, Ln3/y/c/b1$b;->b:I

    if-lez v5, :cond_a

    if-ne v4, p4, :cond_a

    .line 27
    invoke-virtual {v3, p3, v2}, Ln3/y/c/b1$b;->a(BB)V

    goto :goto_2

    :cond_a
    if-eqz v4, :cond_b

    if-ne v4, v0, :cond_6

    :cond_b
    and-int/lit8 p3, p3, 0x7f

    int-to-byte p3, p3

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    const/16 v3, 0x10

    if-ge p3, v3, :cond_c

    if-ge v2, v3, :cond_c

    goto :goto_2

    :cond_c
    if-lt p3, v3, :cond_f

    const/16 v3, 0x1f

    if-gt p3, v3, :cond_f

    const/16 v3, 0x18

    if-lt p3, v3, :cond_d

    move v3, v0

    goto :goto_4

    :cond_d
    move v3, v1

    :goto_4
    if-eqz p1, :cond_e

    move p1, p4

    goto :goto_5

    :cond_e
    move p1, v1

    :goto_5
    add-int/2addr v3, p1

    .line 28
    iget-object p1, p0, Ln3/y/c/b1;->r:[I

    aput v3, p1, v4

    .line 29
    invoke-virtual {p0, v1, v3}, Ln3/y/c/b1;->J(II)V

    .line 30
    :cond_f
    iget p1, p0, Ln3/y/c/b1;->w:I

    if-nez p1, :cond_6

    iget p1, p0, Ln3/y/c/b1;->x:I

    iget-object v3, p0, Ln3/y/c/b1;->r:[I

    aget v3, v3, v4

    if-ne p1, v3, :cond_6

    .line 31
    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    int-to-byte v3, v4

    .line 32
    iget v4, p1, Ln3/y/c/b1$b;->b:I

    add-int/2addr v4, p2

    iget-object p2, p1, Ln3/y/c/b1$b;->a:[B

    array-length v5, p2

    if-le v4, v5, :cond_10

    .line 33
    array-length v4, p2

    mul-int/2addr v4, p4

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p1, Ln3/y/c/b1$b;->a:[B

    .line 34
    :cond_10
    iget-object p2, p1, Ln3/y/c/b1$b;->a:[B

    iget v4, p1, Ln3/y/c/b1$b;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Ln3/y/c/b1$b;->b:I

    aput-byte v3, p2, v4

    add-int/lit8 v3, v5, 0x1

    .line 35
    iput v3, p1, Ln3/y/c/b1$b;->b:I

    aput-byte p3, p2, v5

    add-int/lit8 p3, v3, 0x1

    .line 36
    iput p3, p1, Ln3/y/c/b1$b;->b:I

    aput-byte v2, p2, v3

    goto/16 :goto_2

    :cond_11
    if-eq v4, p2, :cond_12

    if-ne v4, p4, :cond_6

    .line 37
    :cond_12
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    invoke-virtual {p1}, Ln3/y/c/b1$b;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    iget-object p2, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    iget-wide p2, p2, Ln3/y/b/a/o0/c;->d:J

    invoke-virtual {p0, p1, p2, p3}, Ln3/y/c/b1;->I(Ln3/y/c/b1$b;J)V

    goto/16 :goto_2

    .line 39
    :cond_13
    iget p1, p0, Ln3/y/c/b1;->w:I

    if-nez p1, :cond_14

    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    invoke-virtual {p1}, Ln3/y/c/b1$b;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 40
    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    iget-object p2, p0, Ln3/y/c/b1;->o:Ln3/y/b/a/u0/a;

    iget-wide p2, p2, Ln3/y/b/a/o0/c;->d:J

    .line 41
    iget-object p4, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p1, Ln3/y/c/b1$b;->a:[B

    iget v0, p1, Ln3/y/c/b1$b;->b:I

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput v1, p1, Ln3/y/c/b1$b;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :cond_14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized x(JZ)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Ln3/y/c/b1;->m:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    .line 2
    iget-object p1, p0, Ln3/y/c/b1;->p:Ln3/y/c/b1$b;

    const/4 p2, 0x0

    .line 3
    iput p2, p1, Ln3/y/c/b1$b;->b:I

    .line 4
    iget-object p1, p0, Ln3/y/c/b1;->q:Ln3/y/c/b1$b;

    .line 5
    iput p2, p1, Ln3/y/c/b1$b;->b:I

    .line 6
    iput-boolean p2, p0, Ln3/y/c/b1;->u:Z

    .line 7
    iput-boolean p2, p0, Ln3/y/c/b1;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
