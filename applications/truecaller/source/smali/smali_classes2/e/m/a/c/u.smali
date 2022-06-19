.class public abstract Le/m/a/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/u0;


# instance fields
.field public final a:I

.field public final b:Le/m/a/c/g0;

.field public c:Le/m/a/c/v0;

.field public d:I

.field public e:I

.field public f:Le/m/a/c/l1/w;

.field public g:[Lcom/google/android/exoplayer2/Format;

.field public h:J

.field public i:J

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/u;->a:I

    .line 3
    new-instance p1, Le/m/a/c/g0;

    invoke-direct {p1}, Le/m/a/c/g0;-><init>()V

    iput-object p1, p0, Le/m/a/c/u;->b:Le/m/a/c/g0;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Le/m/a/c/u;->i:J

    return-void
.end method

.method public static G(Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/f1/e<",
            "*>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    invoke-interface {p0, p1}, Le/m/a/c/f1/e;->b(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public C()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public abstract D([Lcom/google/android/exoplayer2/Format;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation
.end method

.method public final E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    invoke-interface {v0, p1, p2, p3}, Le/m/a/c/l1/w;->d(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Le/m/a/c/u;->i:J

    .line 4
    iget-boolean p1, p0, Le/m/a/c/u;->j:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Le/m/a/c/e1/e;->d:J

    iget-wide v2, p0, Le/m/a/c/u;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Le/m/a/c/e1/e;->d:J

    .line 6
    iget-wide p1, p0, Le/m/a/c/u;->i:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/c/u;->i:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    .line 8
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 9
    iget-wide v2, p0, Le/m/a/c/u;->h:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/Format;->d(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 10
    iput-object p2, p1, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public abstract F(Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation
.end method

.method public H()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/u;->b:Le/m/a/c/g0;

    invoke-virtual {v0}, Le/m/a/c/g0;->a()V

    .line 3
    iput v2, p0, Le/m/a/c/u;->e:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    .line 5
    iput-object v0, p0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-boolean v2, p0, Le/m/a/c/u;->j:Z

    .line 7
    invoke-virtual {p0}, Le/m/a/c/u;->x()V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/m/a/c/u;->d:I

    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/u;->i:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public synthetic g(F)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/t0;->a(Le/m/a/c/u0;F)V

    return-void
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/u;->j:Z

    return v0
.end method

.method public final j()Le/m/a/c/l1/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/u;->i:J

    return-wide v0
.end method

.method public final l(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/u;->j:Z

    .line 2
    iput-wide p1, p0, Le/m/a/c/u;->i:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/m/a/c/u;->z(JZ)V

    return-void
.end method

.method public m()Le/m/a/c/q1/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/u;->j:Z

    return-void
.end method

.method public final o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    invoke-interface {v0}, Le/m/a/c/l1/w;->a()V

    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/u;->a:I

    return v0
.end method

.method public final q()Le/m/a/c/u;
    .locals 0

    return-object p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/u;->b:Le/m/a/c/g0;

    invoke-virtual {v0}, Le/m/a/c/g0;->a()V

    .line 3
    invoke-virtual {p0}, Le/m/a/c/u;->A()V

    return-void
.end method

.method public final s(Le/m/a/c/v0;[Lcom/google/android/exoplayer2/Format;Le/m/a/c/l1/w;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iput-object p1, p0, Le/m/a/c/u;->c:Le/m/a/c/v0;

    .line 3
    iput v1, p0, Le/m/a/c/u;->e:I

    .line 4
    invoke-virtual {p0, p6}, Le/m/a/c/u;->y(Z)V

    .line 5
    iget-boolean p1, p0, Le/m/a/c/u;->j:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Ln3/g0/y;->x(Z)V

    .line 6
    iput-object p3, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    .line 7
    iput-wide p7, p0, Le/m/a/c/u;->i:J

    .line 8
    iput-object p2, p0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 9
    iput-wide p7, p0, Le/m/a/c/u;->h:J

    .line 10
    invoke-virtual {p0, p2, p7, p8}, Le/m/a/c/u;->D([Lcom/google/android/exoplayer2/Format;J)V

    .line 11
    invoke-virtual {p0, p4, p5, p6}, Le/m/a/c/u;->z(JZ)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Le/m/a/c/u;->e:I

    .line 3
    invoke-virtual {p0}, Le/m/a/c/u;->B()V

    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iput v1, p0, Le/m/a/c/u;->e:I

    .line 3
    invoke-virtual {p0}, Le/m/a/c/u;->C()V

    return-void
.end method

.method public final u([Lcom/google/android/exoplayer2/Format;Le/m/a/c/l1/w;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/u;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iput-object p2, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    .line 3
    iput-wide p3, p0, Le/m/a/c/u;->i:J

    .line 4
    iput-object p1, p0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-wide p3, p0, Le/m/a/c/u;->h:J

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Le/m/a/c/u;->D([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method public final v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v1, p0, Le/m/a/c/u;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Le/m/a/c/u;->k:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p2}, Le/m/a/c/u;->F(Lcom/google/android/exoplayer2/Format;)I

    move-result v2
    :try_end_0
    .catch Le/m/a/c/b0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x7

    .line 4
    iput-boolean v1, p0, Le/m/a/c/u;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Le/m/a/c/u;->k:Z

    .line 5
    throw p1

    .line 6
    :catch_0
    iput-boolean v1, p0, Le/m/a/c/u;->k:Z

    :cond_0
    move v2, v0

    .line 7
    :goto_0
    iget v6, p0, Le/m/a/c/u;->d:I

    .line 8
    new-instance v1, Le/m/a/c/b0;

    if-nez p2, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    const/4 v4, 0x1

    move-object v3, v1

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Le/m/a/c/b0;-><init>(ILjava/lang/Throwable;ILcom/google/android/exoplayer2/Format;I)V

    return-object v1
.end method

.method public final w()Le/m/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/u;->b:Le/m/a/c/g0;

    invoke-virtual {v0}, Le/m/a/c/g0;->a()V

    .line 2
    iget-object v0, p0, Le/m/a/c/u;->b:Le/m/a/c/g0;

    return-object v0
.end method

.method public abstract x()V
.end method

.method public y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public abstract z(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation
.end method
