.class public final Le/m/a/c/m1/l;
.super Le/m/a/c/u;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final l:Landroid/os/Handler;

.field public final m:Le/m/a/c/m1/k;

.field public final n:Le/m/a/c/m1/h;

.field public final o:Le/m/a/c/g0;

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Lcom/google/android/exoplayer2/Format;

.field public t:Le/m/a/c/m1/f;

.field public u:Le/m/a/c/m1/i;

.field public v:Le/m/a/c/m1/j;

.field public w:Le/m/a/c/m1/j;

.field public x:I


# direct methods
.method public constructor <init>(Le/m/a/c/m1/k;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Le/m/a/c/m1/h;->a:Le/m/a/c/m1/h;

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Le/m/a/c/u;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/m/a/c/m1/l;->m:Le/m/a/c/m1/k;

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
    iput-object p1, p0, Le/m/a/c/m1/l;->l:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Le/m/a/c/m1/l;->n:Le/m/a/c/m1/h;

    .line 9
    new-instance p1, Le/m/a/c/g0;

    invoke-direct {p1}, Le/m/a/c/g0;-><init>()V

    iput-object p1, p0, Le/m/a/c/m1/l;->o:Le/m/a/c/g0;

    return-void
.end method


# virtual methods
.method public D([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Le/m/a/c/m1/l;->s:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p2, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Le/m/a/c/m1/l;->r:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/m/a/c/m1/l;->n:Le/m/a/c/m1/h;

    check-cast p2, Le/m/a/c/m1/h$a;

    invoke-virtual {p2, p1}, Le/m/a/c/m1/h$a;->a(Lcom/google/android/exoplayer2/Format;)Le/m/a/c/m1/f;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    :goto_0
    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/Format;)I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/l;->n:Le/m/a/c/m1/h;

    check-cast v0, Le/m/a/c/m1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v1, "text/vtt"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "text/x-ssa"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/ttml+xml"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-mp4-vtt"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-subrip"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-quicktime-tx3g"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/cea-608"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-mp4-cea-608"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/cea-708"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/dvbsubs"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/pgs"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 16
    invoke-static {v0, p1}, Le/m/a/c/u;->G(Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v3

    return p1

    .line 17
    :cond_3
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Le/m/a/c/q1/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public final I()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/a/c/m1/l;->l:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/m/a/c/m1/l;->m:Le/m/a/c/m1/k;

    invoke-interface {v1, v0}, Le/m/a/c/m1/k;->j(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final J()J
    .locals 5

    .line 1
    iget v0, p0, Le/m/a/c/m1/l;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    .line 2
    iget-object v1, v1, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Le/m/a/c/m1/e;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    iget v1, p0, Le/m/a/c/m1/l;->x:I

    .line 6
    iget-object v2, v0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v2, v1}, Le/m/a/c/m1/e;->a(I)J

    move-result-wide v1

    iget-wide v3, v0, Le/m/a/c/m1/j;->b:J

    add-long/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_1
    return-wide v1
.end method

.method public final K(Le/m/a/c/m1/g;)V
    .locals 2

    const-string v0, "Subtitle decoding failed. streamFormat="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/m1/l;->s:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/m/a/c/m1/l;->I()V

    .line 4
    iget p1, p0, Le/m/a/c/m1/l;->r:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Le/m/a/c/m1/l;->M()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/m1/l;->L()V

    .line 7
    iget-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {p1}, Le/m/a/c/e1/c;->flush()V

    :goto_0
    return-void
.end method

.method public final L()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Le/m/a/c/m1/l;->x:I

    .line 3
    iget-object v1, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Le/m/a/c/e1/f;->release()V

    .line 5
    iput-object v0, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    .line 6
    :cond_0
    iget-object v1, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Le/m/a/c/e1/f;->release()V

    .line 8
    iput-object v0, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    :cond_1
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/m1/l;->L()V

    .line 2
    iget-object v0, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {v0}, Le/m/a/c/e1/c;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/m/a/c/m1/l;->r:I

    .line 5
    iget-object v0, p0, Le/m/a/c/m1/l;->n:Le/m/a/c/m1/h;

    iget-object v1, p0, Le/m/a/c/m1/l;->s:Lcom/google/android/exoplayer2/Format;

    check-cast v0, Le/m/a/c/m1/h$a;

    invoke-virtual {v0, v1}, Le/m/a/c/m1/h$a;->a(Lcom/google/android/exoplayer2/Format;)Le/m/a/c/m1/f;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

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
    iget-boolean v0, p0, Le/m/a/c/m1/l;->q:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object v0, p0, Le/m/a/c/m1/l;->m:Le/m/a/c/m1/k;

    invoke-interface {v0, p1}, Le/m/a/c/m1/k;->j(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i(JJ)V
    .locals 8

    .line 1
    iget-boolean p3, p0, Le/m/a/c/m1/l;->q:Z

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    if-nez p3, :cond_1

    .line 3
    iget-object p3, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {p3, p1, p2}, Le/m/a/c/m1/f;->b(J)V

    .line 4
    :try_start_0
    iget-object p3, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {p3}, Le/m/a/c/e1/c;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/c/m1/j;

    iput-object p3, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;
    :try_end_0
    .catch Le/m/a/c/m1/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1}, Le/m/a/c/m1/l;->K(Le/m/a/c/m1/g;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget p3, p0, Le/m/a/c/u;->e:I

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p3, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p0}, Le/m/a/c/m1/l;->J()J

    move-result-wide v2

    move p3, v0

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    .line 9
    iget p3, p0, Le/m/a/c/m1/l;->x:I

    add-int/2addr p3, v1

    iput p3, p0, Le/m/a/c/m1/l;->x:I

    .line 10
    invoke-virtual {p0}, Le/m/a/c/m1/l;->J()J

    move-result-wide v2

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 11
    :cond_4
    iget-object v2, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 12
    invoke-virtual {v2}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 13
    invoke-virtual {p0}, Le/m/a/c/m1/l;->J()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 14
    iget v2, p0, Le/m/a/c/m1/l;->r:I

    if-ne v2, p4, :cond_5

    .line 15
    invoke-virtual {p0}, Le/m/a/c/m1/l;->M()V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p0}, Le/m/a/c/m1/l;->L()V

    .line 17
    iput-boolean v1, p0, Le/m/a/c/m1/l;->q:Z

    goto :goto_2

    .line 18
    :cond_6
    iget-object v2, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    iget-wide v4, v2, Le/m/a/c/e1/f;->timeUs:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 19
    iget-object p3, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    if-eqz p3, :cond_7

    .line 20
    invoke-virtual {p3}, Le/m/a/c/e1/f;->release()V

    .line 21
    :cond_7
    iget-object p3, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    iput-object p3, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    .line 22
    iput-object v3, p0, Le/m/a/c/m1/l;->w:Le/m/a/c/m1/j;

    .line 23
    iget-object v2, p3, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v4, p3, Le/m/a/c/m1/j;->b:J

    sub-long v4, p1, v4

    invoke-interface {v2, v4, v5}, Le/m/a/c/m1/e;->d(J)I

    move-result p3

    .line 26
    iput p3, p0, Le/m/a/c/m1/l;->x:I

    move p3, v1

    :cond_8
    :goto_2
    if-eqz p3, :cond_a

    .line 27
    iget-object p3, p0, Le/m/a/c/m1/l;->v:Le/m/a/c/m1/j;

    .line 28
    iget-object v2, p3, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-wide v4, p3, Le/m/a/c/m1/j;->b:J

    sub-long/2addr p1, v4

    invoke-interface {v2, p1, p2}, Le/m/a/c/m1/e;->e(J)Ljava/util/List;

    move-result-object p1

    .line 31
    iget-object p2, p0, Le/m/a/c/m1/l;->l:Landroid/os/Handler;

    if-eqz p2, :cond_9

    .line 32
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 33
    :cond_9
    iget-object p2, p0, Le/m/a/c/m1/l;->m:Le/m/a/c/m1/k;

    invoke-interface {p2, p1}, Le/m/a/c/m1/k;->j(Ljava/util/List;)V

    .line 34
    :cond_a
    :goto_3
    iget p1, p0, Le/m/a/c/m1/l;->r:I

    if-ne p1, p4, :cond_b

    return-void

    .line 35
    :cond_b
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Le/m/a/c/m1/l;->p:Z

    if-nez p1, :cond_10

    .line 36
    iget-object p1, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    if-nez p1, :cond_c

    .line 37
    iget-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {p1}, Le/m/a/c/e1/c;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/m1/i;

    iput-object p1, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    if-nez p1, :cond_c

    return-void

    .line 38
    :cond_c
    iget p1, p0, Le/m/a/c/m1/l;->r:I

    if-ne p1, v1, :cond_d

    .line 39
    iget-object p1, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Le/m/a/c/e1/a;->setFlags(I)V

    .line 40
    iget-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    iget-object p2, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    invoke-interface {p1, p2}, Le/m/a/c/e1/c;->d(Ljava/lang/Object;)V

    .line 41
    iput-object v3, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    .line 42
    iput p4, p0, Le/m/a/c/m1/l;->r:I

    return-void

    .line 43
    :cond_d
    iget-object p1, p0, Le/m/a/c/m1/l;->o:Le/m/a/c/g0;

    iget-object p2, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    invoke-virtual {p0, p1, p2, v0}, Le/m/a/c/u;->E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_f

    .line 44
    iget-object p1, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    invoke-virtual {p1}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 45
    iput-boolean v1, p0, Le/m/a/c/m1/l;->p:Z

    goto :goto_5

    .line 46
    :cond_e
    iget-object p1, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    iget-object p2, p0, Le/m/a/c/m1/l;->o:Le/m/a/c/g0;

    iget-object p2, p2, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->m:J

    iput-wide p2, p1, Le/m/a/c/m1/i;->g:J

    .line 47
    invoke-virtual {p1}, Le/m/a/c/e1/e;->h()V

    .line 48
    :goto_5
    iget-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    iget-object p2, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;

    invoke-interface {p1, p2}, Le/m/a/c/e1/c;->d(Ljava/lang/Object;)V

    .line 49
    iput-object v3, p0, Le/m/a/c/m1/l;->u:Le/m/a/c/m1/i;
    :try_end_1
    .catch Le/m/a/c/m1/g; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_f
    const/4 p2, -0x3

    if-ne p1, p2, :cond_b

    :cond_10
    return-void

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p0, p1}, Le/m/a/c/m1/l;->K(Le/m/a/c/m1/g;)V

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/m1/l;->s:Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-virtual {p0}, Le/m/a/c/m1/l;->I()V

    .line 3
    invoke-virtual {p0}, Le/m/a/c/m1/l;->L()V

    .line 4
    iget-object v1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {v1}, Le/m/a/c/e1/c;->release()V

    .line 5
    iput-object v0, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Le/m/a/c/m1/l;->r:I

    return-void
.end method

.method public z(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/m1/l;->p:Z

    .line 2
    iput-boolean p1, p0, Le/m/a/c/m1/l;->q:Z

    .line 3
    invoke-virtual {p0}, Le/m/a/c/m1/l;->I()V

    .line 4
    iget p1, p0, Le/m/a/c/m1/l;->r:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Le/m/a/c/m1/l;->M()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/m1/l;->L()V

    .line 7
    iget-object p1, p0, Le/m/a/c/m1/l;->t:Le/m/a/c/m1/f;

    invoke-interface {p1}, Le/m/a/c/e1/c;->flush()V

    :goto_0
    return-void
.end method
