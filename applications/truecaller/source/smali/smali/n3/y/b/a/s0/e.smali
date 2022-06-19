.class public final Ln3/y/b/a/s0/e;
.super Ln3/y/b/a/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final j:Ln3/y/b/a/s0/b;

.field public final k:Ln3/y/b/a/s0/d;

.field public final l:Landroid/os/Handler;

.field public final m:Ln3/y/b/a/x;

.field public final n:Ln3/y/b/a/s0/c;

.field public final o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public final p:[J

.field public q:I

.field public r:I

.field public s:Ln3/y/b/a/s0/a;

.field public t:Z

.field public u:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/s0/d;Landroid/os/Looper;Ln3/y/b/a/s0/b;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Ln3/y/b/a/b;-><init>(I)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/y/b/a/s0/e;->k:Ln3/y/b/a/s0/d;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Ln3/y/b/a/x0/x;->a:I

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    :goto_0
    iput-object p1, p0, Ln3/y/b/a/s0/e;->l:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Ln3/y/b/a/s0/e;->j:Ln3/y/b/a/s0/b;

    .line 8
    new-instance p1, Ln3/y/b/a/x;

    invoke-direct {p1}, Ln3/y/b/a/x;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/s0/e;->m:Ln3/y/b/a/x;

    .line 9
    new-instance p1, Ln3/y/b/a/s0/c;

    invoke-direct {p1}, Ln3/y/b/a/s0/c;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    const/4 p1, 0x5

    new-array p2, p1, [Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 10
    iput-object p2, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array p1, p1, [J

    .line 11
    iput-object p1, p0, Ln3/y/b/a/s0/e;->p:[J

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

    .line 1
    iget-object p2, p0, Ln3/y/b/a/s0/e;->j:Ln3/y/b/a/s0/b;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Ln3/y/b/a/s0/b;->a(Landroidx/media2/exoplayer/external/Format;)Ln3/y/b/a/s0/a;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/s0/e;->s:Ln3/y/b/a/s0/a;

    return-void
.end method

.method public D(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/s0/e;->j:Ln3/y/b/a/s0/b;

    invoke-interface {v0, p1}, Ln3/y/b/a/s0/b;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, p1}, Ln3/y/b/a/b;->E(Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final G(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;->q()Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Ln3/y/b/a/s0/e;->j:Ln3/y/b/a/s0/b;

    invoke-interface {v2, v1}, Ln3/y/b/a/s0/b;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Ln3/y/b/a/s0/e;->j:Ln3/y/b/a/s0/b;

    .line 6
    invoke-interface {v2, v1}, Ln3/y/b/a/s0/b;->a(Landroidx/media2/exoplayer/external/Format;)Ln3/y/b/a/s0/a;

    move-result-object v1

    .line 7
    iget-object v2, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v2, v2, v0

    .line 8
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;->j()[B

    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {v3}, Ln3/y/b/a/o0/c;->a()V

    .line 11
    iget-object v3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ln3/y/b/a/o0/c;->c(I)V

    .line 12
    iget-object v3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    iget-object v3, v3, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {v2}, Ln3/y/b/a/o0/c;->d()V

    .line 14
    iget-object v2, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-interface {v1, v2}, Ln3/y/b/a/s0/a;->a(Ln3/y/b/a/s0/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v1, p2}, Ln3/y/b/a/s0/e;->G(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v1, v1, v0

    .line 17
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
    iget-boolean v0, p0, Ln3/y/b/a/s0/e;->t:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/s0/e;->k:Ln3/y/b/a/s0/d;

    invoke-interface {v0, p1}, Ln3/y/b/a/s0/d;->x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Ln3/y/b/a/s0/e;->t:Z

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p3, :cond_3

    iget p3, p0, Ln3/y/b/a/s0/e;->r:I

    if-ge p3, v0, :cond_3

    .line 2
    iget-object p3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->a()V

    .line 3
    iget-object p3, p0, Ln3/y/b/a/s0/e;->m:Ln3/y/b/a/x;

    iget-object v2, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {p0, p3, v2, p4}, Ln3/y/b/a/b;->C(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I

    move-result p3

    const/4 v2, -0x4

    if-ne p3, v2, :cond_2

    .line 4
    iget-object p3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    iput-boolean v1, p0, Ln3/y/b/a/s0/e;->t:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->f()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    iget-wide v2, p0, Ln3/y/b/a/s0/e;->u:J

    iput-wide v2, p3, Ln3/y/b/a/s0/c;->g:J

    .line 8
    invoke-virtual {p3}, Ln3/y/b/a/o0/c;->d()V

    .line 9
    iget-object p3, p0, Ln3/y/b/a/s0/e;->s:Ln3/y/b/a/s0/a;

    iget-object v2, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    invoke-interface {p3, v2}, Ln3/y/b/a/s0/a;->a(Ln3/y/b/a/s0/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    iget-object v3, p3, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v3, v3

    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {p0, p3, v2}, Ln3/y/b/a/s0/e;->G(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    new-instance p3, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p3, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 16
    iget v2, p0, Ln3/y/b/a/s0/e;->q:I

    iget v3, p0, Ln3/y/b/a/s0/e;->r:I

    add-int/2addr v2, v3

    rem-int/2addr v2, v0

    .line 17
    iget-object v4, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aput-object p3, v4, v2

    .line 18
    iget-object p3, p0, Ln3/y/b/a/s0/e;->p:[J

    iget-object v4, p0, Ln3/y/b/a/s0/e;->n:Ln3/y/b/a/s0/c;

    iget-wide v4, v4, Ln3/y/b/a/o0/c;->d:J

    aput-wide v4, p3, v2

    add-int/2addr v3, v1

    .line 19
    iput v3, p0, Ln3/y/b/a/s0/e;->r:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne p3, v2, :cond_3

    .line 20
    iget-object p3, p0, Ln3/y/b/a/s0/e;->m:Ln3/y/b/a/x;

    iget-object p3, p3, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    iget-wide v2, p3, Landroidx/media2/exoplayer/external/Format;->m:J

    iput-wide v2, p0, Ln3/y/b/a/s0/e;->u:J

    .line 21
    :cond_3
    :goto_0
    iget p3, p0, Ln3/y/b/a/s0/e;->r:I

    if-lez p3, :cond_5

    iget-object p3, p0, Ln3/y/b/a/s0/e;->p:[J

    iget v2, p0, Ln3/y/b/a/s0/e;->q:I

    aget-wide v3, p3, v2

    cmp-long p1, v3, p1

    if-gtz p1, :cond_5

    .line 22
    iget-object p1, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aget-object p1, p1, v2

    .line 23
    iget-object p2, p0, Ln3/y/b/a/s0/e;->l:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p2, p0, Ln3/y/b/a/s0/e;->k:Ln3/y/b/a/s0/d;

    invoke-interface {p2, p1}, Ln3/y/b/a/s0/d;->x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 26
    :goto_1
    iget-object p1, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget p2, p0, Ln3/y/b/a/s0/e;->q:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v1

    .line 27
    rem-int/2addr p2, v0

    iput p2, p0, Ln3/y/b/a/s0/e;->q:I

    .line 28
    iget p1, p0, Ln3/y/b/a/s0/e;->r:I

    sub-int/2addr p1, v1

    iput p1, p0, Ln3/y/b/a/s0/e;->r:I

    :cond_5
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/b/a/s0/e;->q:I

    .line 3
    iput v0, p0, Ln3/y/b/a/s0/e;->r:I

    .line 4
    iput-object v1, p0, Ln3/y/b/a/s0/e;->s:Ln3/y/b/a/s0/a;

    return-void
.end method

.method public x(JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/s0/e;->o:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln3/y/b/a/s0/e;->q:I

    .line 3
    iput p1, p0, Ln3/y/b/a/s0/e;->r:I

    .line 4
    iput-boolean p1, p0, Ln3/y/b/a/s0/e;->t:Z

    return-void
.end method
