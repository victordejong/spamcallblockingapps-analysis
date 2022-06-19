.class public final Ln3/y/c/f;
.super Ln3/y/b/a/w0/e;
.source "SourceFile"


# instance fields
.field public final e:Ln3/y/a/b;

.field public f:Landroid/net/Uri;

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(Ln3/y/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ln3/y/b/a/w0/e;-><init>(Z)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/y/c/f;->e:Ln3/y/a/b;

    return-void
.end method


# virtual methods
.method public b(Ln3/y/b/a/w0/k;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    iput-object v0, p0, Ln3/y/c/f;->f:Landroid/net/Uri;

    .line 2
    iget-wide v0, p1, Ln3/y/b/a/w0/k;->f:J

    iput-wide v0, p0, Ln3/y/c/f;->g:J

    .line 3
    invoke-virtual {p0, p1}, Ln3/y/b/a/w0/e;->f(Ln3/y/b/a/w0/k;)V

    .line 4
    iget-object v0, p0, Ln3/y/c/f;->e:Ln3/y/a/b;

    invoke-virtual {v0}, Ln3/y/a/b;->b()J

    move-result-wide v0

    .line 5
    iget-wide v2, p1, Ln3/y/b/a/w0/k;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 6
    iput-wide v2, p0, Ln3/y/c/f;->h:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 7
    iget-wide v2, p0, Ln3/y/c/f;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ln3/y/c/f;->h:J

    goto :goto_0

    .line 8
    :cond_1
    iput-wide v4, p0, Ln3/y/c/f;->h:J

    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ln3/y/c/f;->i:Z

    .line 10
    invoke-virtual {p0, p1}, Ln3/y/b/a/w0/e;->g(Ln3/y/b/a/w0/k;)V

    .line 11
    iget-wide v0, p0, Ln3/y/c/f;->h:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/y/c/f;->f:Landroid/net/Uri;

    .line 2
    iget-boolean v0, p0, Ln3/y/c/f;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/y/c/f;->i:Z

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/w0/e;->e()V

    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/f;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Ln3/y/c/f;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    .line 2
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    move v11, p3

    .line 3
    iget-object v6, p0, Ln3/y/c/f;->e:Ln3/y/a/b;

    iget-wide v7, p0, Ln3/y/c/f;->g:J

    move-object v9, p1

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Ln3/y/a/b;->d(J[BII)I

    move-result p1

    if-gez p1, :cond_4

    .line 4
    iget-wide p1, p0, Ln3/y/c/f;->h:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 5
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_4
    iget-wide p2, p0, Ln3/y/c/f;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ln3/y/c/f;->g:J

    .line 7
    iget-wide p2, p0, Ln3/y/c/f;->h:J

    cmp-long v2, p2, v4

    if-eqz v2, :cond_5

    sub-long/2addr p2, v0

    .line 8
    iput-wide p2, p0, Ln3/y/c/f;->h:J

    .line 9
    :cond_5
    invoke-virtual {p0, p1}, Ln3/y/b/a/w0/e;->d(I)V

    return p1
.end method
