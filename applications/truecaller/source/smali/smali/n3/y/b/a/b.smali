.class public abstract Ln3/y/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/h0;


# instance fields
.field public final a:I

.field public b:Ln3/y/b/a/i0;

.field public c:I

.field public d:I

.field public e:Ln3/y/b/a/t0/j0;

.field public f:[Landroidx/media2/exoplayer/external/Format;

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/b;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Ln3/y/b/a/b;->h:J

    return-void
.end method

.method public static E(Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/p0/c<",
            "*>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
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
    invoke-interface {p0, p1}, Ln3/y/b/a/p0/c;->b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public abstract B([Landroidx/media2/exoplayer/external/Format;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation
.end method

.method public final C(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    invoke-interface {v0, p1, p2, p3}, Ln3/y/b/a/t0/j0;->d(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/o0/c;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Ln3/y/b/a/b;->h:J

    .line 4
    iget-boolean p1, p0, Ln3/y/b/a/b;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Ln3/y/b/a/o0/c;->d:J

    iget-wide v2, p0, Ln3/y/b/a/b;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Ln3/y/b/a/o0/c;->d:J

    .line 6
    iget-wide p1, p0, Ln3/y/b/a/b;->h:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ln3/y/b/a/b;->h:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 8
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 9
    iget-wide v2, p0, Ln3/y/b/a/b;->g:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Format;->f(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 10
    iput-object p2, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public abstract D(Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation
.end method

.method public F()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput v2, p0, Ln3/y/b/a/b;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    .line 4
    iput-object v0, p0, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 5
    iput-boolean v2, p0, Ln3/y/b/a/b;->i:Z

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/b;->v()V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/y/b/a/b;->c:I

    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/b;->h:J

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
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public g(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/b;->i:Z

    return v0
.end method

.method public final j()Ln3/y/b/a/t0/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/b;->h:J

    return-wide v0
.end method

.method public final l(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/b;->i:Z

    .line 2
    iput-wide p1, p0, Ln3/y/b/a/b;->h:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ln3/y/b/a/b;->x(JZ)V

    return-void
.end method

.method public m()Ln3/y/b/a/x0/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/b;->i:Z

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
    iget-object v0, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    invoke-interface {v0}, Ln3/y/b/a/t0/j0;->a()V

    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->a:I

    return v0
.end method

.method public final q()Ln3/y/b/a/b;
    .locals 0

    return-object p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/b;->y()V

    return-void
.end method

.method public final s(Ln3/y/b/a/i0;[Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/j0;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/b;->b:Ln3/y/b/a/i0;

    .line 3
    iput v1, p0, Ln3/y/b/a/b;->d:I

    .line 4
    invoke-virtual {p0, p6}, Ln3/y/b/a/b;->w(Z)V

    .line 5
    iget-boolean p1, p0, Ln3/y/b/a/b;->i:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 6
    iput-object p3, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    .line 7
    iput-wide p7, p0, Ln3/y/b/a/b;->h:J

    .line 8
    iput-object p2, p0, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 9
    iput-wide p7, p0, Ln3/y/b/a/b;->g:J

    .line 10
    invoke-virtual {p0, p2, p7, p8}, Ln3/y/b/a/b;->B([Landroidx/media2/exoplayer/external/Format;J)V

    .line 11
    invoke-virtual {p0, p4, p5, p6}, Ln3/y/b/a/b;->x(JZ)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ln3/y/b/a/b;->d:I

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/b;->z()V

    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput v1, p0, Ln3/y/b/a/b;->d:I

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/b;->A()V

    return-void
.end method

.method public final t([Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/j0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/b;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    .line 3
    iput-wide p3, p0, Ln3/y/b/a/b;->h:J

    .line 4
    iput-object p1, p0, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 5
    iput-wide p3, p0, Ln3/y/b/a/b;->g:J

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Ln3/y/b/a/b;->B([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public abstract x(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method
