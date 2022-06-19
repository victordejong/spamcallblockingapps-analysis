.class public final Ln3/y/b/a/t0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/s;
.implements Ln3/y/b/a/t0/s$a;


# instance fields
.field public final a:Ln3/y/b/a/t0/t;

.field public final b:Ln3/y/b/a/t0/t$a;

.field public final c:Ln3/y/b/a/w0/b;

.field public d:Ln3/y/b/a/t0/s;

.field public e:Ln3/y/b/a/t0/s$a;

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/t;Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/q;->b:Ln3/y/b/a/t0/t$a;

    .line 3
    iput-object p3, p0, Ln3/y/b/a/t0/q;->c:Ln3/y/b/a/w0/b;

    .line 4
    iput-object p1, p0, Ln3/y/b/a/t0/q;->a:Ln3/y/b/a/t0/t;

    .line 5
    iput-wide p4, p0, Ln3/y/b/a/t0/q;->f:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Ln3/y/b/a/t0/q;->g:J

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ln3/y/b/a/t0/s;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/y/b/a/t0/s;->c(J)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/y/b/a/t0/s;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ln3/y/b/a/t0/t$a;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/q;->f:J

    .line 2
    iget-wide v2, p0, Ln3/y/b/a/t0/q;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    iget-object v2, p0, Ln3/y/b/a/t0/q;->a:Ln3/y/b/a/t0/t;

    iget-object v3, p0, Ln3/y/b/a/t0/q;->c:Ln3/y/b/a/w0/b;

    invoke-interface {v2, p1, v3, v0, v1}, Ln3/y/b/a/t0/t;->e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 4
    iget-object v2, p0, Ln3/y/b/a/t0/q;->e:Ln3/y/b/a/t0/s$a;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, p0, v0, v1}, Ln3/y/b/a/t0/s;->o(Ln3/y/b/a/t0/s$a;J)V

    :cond_1
    return-void
.end method

.method public h()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->h()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public i(Ln3/y/b/a/t0/s;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/q;->e:Ln3/y/b/a/t0/s$a;

    .line 2
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {p1, p0}, Ln3/y/b/a/t0/s$a;->i(Ln3/y/b/a/t0/s;)V

    return-void
.end method

.method public j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->j()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/q;->a:Ln3/y/b/a/t0/t;

    invoke-interface {v0}, Ln3/y/b/a/t0/t;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    throw v0
.end method

.method public k(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ln3/y/b/a/t0/s;->k(JZ)V

    return-void
.end method

.method public l(Ln3/y/b/a/t0/k0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/q;->e:Ln3/y/b/a/t0/s$a;

    .line 2
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {p1, p0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    return-void
.end method

.method public n(JLn3/y/b/a/j0;)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ln3/y/b/a/t0/s;->n(JLn3/y/b/a/j0;)J

    move-result-wide p1

    return-wide p1
.end method

.method public o(Ln3/y/b/a/t0/s$a;J)V
    .locals 4

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/q;->e:Ln3/y/b/a/t0/s$a;

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    if-eqz p1, :cond_1

    .line 3
    iget-wide p2, p0, Ln3/y/b/a/t0/q;->f:J

    .line 4
    iget-wide v0, p0, Ln3/y/b/a/t0/q;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p2, v0

    .line 5
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Ln3/y/b/a/t0/s;->o(Ln3/y/b/a/t0/s$a;J)V

    :cond_1
    return-void
.end method

.method public r([Ln3/y/b/a/v0/e;[Z[Ln3/y/b/a/t0/j0;[ZJ)J
    .locals 13

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ln3/y/b/a/t0/q;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Ln3/y/b/a/t0/q;->f:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    .line 2
    iput-wide v3, v0, Ln3/y/b/a/t0/q;->g:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    .line 3
    :goto_0
    iget-object v6, v0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    .line 4
    sget v1, Ln3/y/b/a/x0/x;->a:I

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 5
    invoke-interface/range {v6 .. v12}, Ln3/y/b/a/t0/s;->r([Ln3/y/b/a/v0/e;[Z[Ln3/y/b/a/t0/j0;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method
