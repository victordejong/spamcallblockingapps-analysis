.class public final Le/m/a/c/i1/f;
.super Le/m/a/c/u;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final l:Le/m/a/c/i1/c;

.field public final m:Le/m/a/c/i1/e;

.field public final n:Landroid/os/Handler;

.field public final o:Le/m/a/c/i1/d;

.field public final p:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final q:[J

.field public r:I

.field public s:I

.field public t:Le/m/a/c/i1/b;

.field public u:Z

.field public v:J


# direct methods
.method public constructor <init>(Le/m/a/c/i1/e;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Le/m/a/c/i1/c;->a:Le/m/a/c/i1/c;

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v1}, Le/m/a/c/u;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/m/a/c/i1/f;->m:Le/m/a/c/i1/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Le/m/a/c/q1/d0;->a:I

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    :goto_0
    iput-object p1, p0, Le/m/a/c/i1/f;->n:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Le/m/a/c/i1/f;->l:Le/m/a/c/i1/c;

    .line 9
    new-instance p1, Le/m/a/c/i1/d;

    invoke-direct {p1}, Le/m/a/c/i1/d;-><init>()V

    iput-object p1, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    const/4 p1, 0x5

    new-array p2, p1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 10
    iput-object p2, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p1, p1, [J

    .line 11
    iput-object p1, p0, Le/m/a/c/i1/f;->q:[J

    return-void
.end method


# virtual methods
.method public D([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/m/a/c/i1/f;->l:Le/m/a/c/i1/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Le/m/a/c/i1/c;->b(Lcom/google/android/exoplayer2/Format;)Le/m/a/c/i1/b;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/i1/f;->t:Le/m/a/c/i1/b;

    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/i1/f;->l:Le/m/a/c/i1/c;

    invoke-interface {v0, p1}, Le/m/a/c/i1/c;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    invoke-static {v0, p1}, Le/m/a/c/u;->G(Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v1

    or-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method public final I(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->q()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/m/a/c/i1/f;->l:Le/m/a/c/i1/c;

    invoke-interface {v2, v1}, Le/m/a/c/i1/c;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Le/m/a/c/i1/f;->l:Le/m/a/c/i1/c;

    .line 6
    invoke-interface {v2, v1}, Le/m/a/c/i1/c;->b(Lcom/google/android/exoplayer2/Format;)Le/m/a/c/i1/b;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v2, v2, v0

    .line 8
    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->j()[B

    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {v3}, Le/m/a/c/e1/e;->clear()V

    .line 11
    iget-object v3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    array-length v4, v2

    invoke-virtual {v3, v4}, Le/m/a/c/e1/e;->g(I)V

    .line 12
    iget-object v3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    iget-object v3, v3, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 13
    sget v4, Le/m/a/c/q1/d0;->a:I

    .line 14
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v2, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {v2}, Le/m/a/c/e1/e;->h()V

    .line 16
    iget-object v2, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-interface {v1, v2}, Le/m/a/c/i1/b;->a(Le/m/a/c/i1/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0, v1, p2}, Le/m/a/c/i1/f;->I(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v1, v1, v0

    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/i1/f;->u:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    iget-object v0, p0, Le/m/a/c/i1/f;->m:Le/m/a/c/i1/e;

    invoke-interface {v0, p1}, Le/m/a/c/i1/e;->m(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i(JJ)V
    .locals 6

    .line 1
    iget-boolean p3, p0, Le/m/a/c/i1/f;->u:Z

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p3, :cond_3

    iget p3, p0, Le/m/a/c/i1/f;->s:I

    if-ge p3, v0, :cond_3

    .line 2
    iget-object p3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {p3}, Le/m/a/c/e1/e;->clear()V

    .line 3
    invoke-virtual {p0}, Le/m/a/c/u;->w()Le/m/a/c/g0;

    move-result-object p3

    .line 4
    iget-object v2, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {p0, p3, v2, p4}, Le/m/a/c/u;->E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    .line 5
    iget-object p3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {p3}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iput-boolean v1, p0, Le/m/a/c/i1/f;->u:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-virtual {p3}, Le/m/a/c/e1/a;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p3, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    iget-wide v2, p0, Le/m/a/c/i1/f;->v:J

    iput-wide v2, p3, Le/m/a/c/i1/d;->g:J

    .line 9
    invoke-virtual {p3}, Le/m/a/c/e1/e;->h()V

    .line 10
    iget-object p3, p0, Le/m/a/c/i1/f;->t:Le/m/a/c/i1/b;

    .line 11
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 12
    iget-object v2, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    invoke-interface {p3, v2}, Le/m/a/c/i1/b;->a(Le/m/a/c/i1/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    iget-object v3, p3, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v3, v3

    .line 15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {p0, p3, v2}, Le/m/a/c/i1/f;->I(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 18
    new-instance p3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p3, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 19
    iget v2, p0, Le/m/a/c/i1/f;->r:I

    iget v3, p0, Le/m/a/c/i1/f;->s:I

    add-int/2addr v2, v3

    rem-int/2addr v2, v0

    .line 20
    iget-object v4, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aput-object p3, v4, v2

    .line 21
    iget-object p3, p0, Le/m/a/c/i1/f;->q:[J

    iget-object v4, p0, Le/m/a/c/i1/f;->o:Le/m/a/c/i1/d;

    iget-wide v4, v4, Le/m/a/c/e1/e;->d:J

    aput-wide v4, p3, v2

    add-int/2addr v3, v1

    .line 22
    iput v3, p0, Le/m/a/c/i1/f;->s:I

    goto :goto_0

    :cond_2
    const/4 v3, -0x5

    if-ne v2, v3, :cond_3

    .line 23
    iget-object p3, p3, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    .line 24
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v2, p3, Lcom/google/android/exoplayer2/Format;->m:J

    iput-wide v2, p0, Le/m/a/c/i1/f;->v:J

    .line 26
    :cond_3
    :goto_0
    iget p3, p0, Le/m/a/c/i1/f;->s:I

    if-lez p3, :cond_5

    iget-object p3, p0, Le/m/a/c/i1/f;->q:[J

    iget v2, p0, Le/m/a/c/i1/f;->r:I

    aget-wide v3, p3, v2

    cmp-long p1, v3, p1

    if-gtz p1, :cond_5

    .line 27
    iget-object p1, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aget-object p1, p1, v2

    .line 28
    sget p2, Le/m/a/c/q1/d0;->a:I

    .line 29
    iget-object p2, p0, Le/m/a/c/i1/f;->n:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 30
    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 31
    :cond_4
    iget-object p2, p0, Le/m/a/c/i1/f;->m:Le/m/a/c/i1/e;

    invoke-interface {p2, p1}, Le/m/a/c/i1/e;->m(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 32
    :goto_1
    iget-object p1, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Le/m/a/c/i1/f;->r:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v1

    .line 33
    rem-int/2addr p2, v0

    iput p2, p0, Le/m/a/c/i1/f;->r:I

    .line 34
    iget p1, p0, Le/m/a/c/i1/f;->s:I

    sub-int/2addr p1, v1

    iput p1, p0, Le/m/a/c/i1/f;->s:I

    :cond_5
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/c/i1/f;->r:I

    .line 3
    iput v0, p0, Le/m/a/c/i1/f;->s:I

    .line 4
    iput-object v1, p0, Le/m/a/c/i1/f;->t:Le/m/a/c/i1/b;

    return-void
.end method

.method public z(JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/c/i1/f;->p:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/m/a/c/i1/f;->r:I

    .line 3
    iput p1, p0, Le/m/a/c/i1/f;->s:I

    .line 4
    iput-boolean p1, p0, Le/m/a/c/i1/f;->u:Z

    return-void
.end method
