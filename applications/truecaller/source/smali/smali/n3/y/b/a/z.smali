.class public final Ln3/y/b/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/y/b/a/t0/s;

.field public final b:Ljava/lang/Object;

.field public final c:[Ln3/y/b/a/t0/j0;

.field public d:Z

.field public e:Z

.field public f:Ln3/y/b/a/a0;

.field public final g:[Z

.field public final h:[Ln3/y/b/a/b;

.field public final i:Ln3/y/b/a/v0/g;

.field public final j:Ln3/y/b/a/t0/t;

.field public k:Ln3/y/b/a/z;

.field public l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public m:Ln3/y/b/a/v0/h;

.field public n:J


# direct methods
.method public constructor <init>([Ln3/y/b/a/b;JLn3/y/b/a/v0/g;Ln3/y/b/a/w0/b;Ln3/y/b/a/t0/t;Ln3/y/b/a/a0;Ln3/y/b/a/v0/h;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    .line 3
    iput-wide p2, p0, Ln3/y/b/a/z;->n:J

    .line 4
    iput-object p4, p0, Ln3/y/b/a/z;->i:Ln3/y/b/a/v0/g;

    .line 5
    iput-object p6, p0, Ln3/y/b/a/z;->j:Ln3/y/b/a/t0/t;

    .line 6
    iget-object p2, p7, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-object p3, p2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    .line 8
    sget-object p3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object p3, p0, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 9
    iput-object p8, p0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 10
    array-length p3, p1

    new-array p3, p3, [Ln3/y/b/a/t0/j0;

    iput-object p3, p0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    .line 11
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Ln3/y/b/a/z;->g:[Z

    .line 12
    iget-wide p3, p7, Ln3/y/b/a/a0;->b:J

    iget-wide v5, p7, Ln3/y/b/a/a0;->d:J

    .line 13
    invoke-interface {p6, p2, p5, p3, p4}, Ln3/y/b/a/t0/t;->e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;

    move-result-object v1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p1, v5, p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Ln3/y/b/a/t0/d;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/t0/d;-><init>(Ln3/y/b/a/t0/s;ZJJ)V

    move-object v1, p1

    .line 15
    :cond_0
    iput-object v1, p0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/v0/h;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    iget v4, v1, Ln3/y/b/a/v0/h;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Ln3/y/b/a/z;->g:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 3
    invoke-virtual {v1, v6, v3}, Ln3/y/b/a/v0/h;->a(Ln3/y/b/a/v0/h;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    move v4, v2

    .line 5
    :goto_2
    iget-object v6, v0, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    array-length v7, v6

    const/4 v8, 0x6

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v6, v6, v4

    .line 7
    iget v6, v6, Ln3/y/b/a/b;->a:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/z;->b()V

    .line 10
    iput-object v1, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 11
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/z;->c()V

    .line 12
    iget-object v3, v1, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 13
    iget-object v9, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    .line 14
    invoke-virtual {v3}, Ln3/y/b/a/v0/f;->a()[Ln3/y/b/a/v0/e;

    move-result-object v10

    iget-object v11, v0, Ln3/y/b/a/z;->g:[Z

    iget-object v12, v0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 15
    invoke-interface/range {v9 .. v15}, Ln3/y/b/a/t0/s;->r([Ln3/y/b/a/v0/e;[Z[Ln3/y/b/a/t0/j0;[ZJ)J

    move-result-wide v6

    .line 16
    iget-object v4, v0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    move v9, v2

    .line 17
    :goto_3
    iget-object v10, v0, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    array-length v11, v10

    if-ge v9, v11, :cond_5

    .line 18
    aget-object v10, v10, v9

    .line 19
    iget v10, v10, Ln3/y/b/a/b;->a:I

    if-ne v10, v8, :cond_4

    .line 20
    iget-object v10, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 21
    invoke-virtual {v10, v9}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 22
    new-instance v10, Ln3/y/b/a/t0/m;

    invoke-direct {v10}, Ln3/y/b/a/t0/m;-><init>()V

    aput-object v10, v4, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 23
    :cond_5
    iput-boolean v2, v0, Ln3/y/b/a/z;->e:Z

    move v4, v2

    .line 24
    :goto_4
    iget-object v9, v0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    array-length v10, v9

    if-ge v4, v10, :cond_9

    .line 25
    aget-object v9, v9, v4

    if-eqz v9, :cond_6

    .line 26
    invoke-virtual {v1, v4}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v9

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 27
    iget-object v9, v0, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    aget-object v9, v9, v4

    .line 28
    iget v9, v9, Ln3/y/b/a/b;->a:I

    if-eq v9, v8, :cond_8

    .line 29
    iput-boolean v5, v0, Ln3/y/b/a/z;->e:Z

    goto :goto_6

    .line 30
    :cond_6
    iget-object v9, v3, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v9, v9, v4

    if-nez v9, :cond_7

    move v9, v5

    goto :goto_5

    :cond_7
    move v9, v2

    .line 31
    :goto_5
    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-wide v6
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/z;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    iget v2, v1, Ln3/y/b/a/v0/h;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    iget-object v2, v2, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 5
    iget-object v2, v2, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ln3/y/b/a/v0/e;->a()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/z;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    iget v2, v1, Ln3/y/b/a/v0/h;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    iget-object v2, v2, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 5
    iget-object v2, v2, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ln3/y/b/a/v0/e;->b()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/z;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v0, v0, Ln3/y/b/a/a0;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/y/b/a/z;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v0}, Ln3/y/b/a/t0/s;->b()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v3, v0, Ln3/y/b/a/a0;->e:J

    :cond_2
    return-wide v3
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/z;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ln3/y/b/a/z;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    .line 2
    invoke-interface {v0}, Ln3/y/b/a/t0/s;->b()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/z;->b()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v0, v0, Ln3/y/b/a/a0;->d:J

    iget-object v2, p0, Ln3/y/b/a/z;->j:Ln3/y/b/a/t0/t;

    iget-object v3, p0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    check-cast v3, Ln3/y/b/a/t0/d;

    iget-object v0, v3, Ln3/y/b/a/t0/d;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v2, v0}, Ln3/y/b/a/t0/t;->c(Ln3/y/b/a/t0/s;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v2, v3}, Ln3/y/b/a/t0/t;->c(Ln3/y/b/a/t0/s;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public h(FLn3/y/b/a/l0;)Ln3/y/b/a/v0/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/z;->i:Ln3/y/b/a/v0/g;

    iget-object v1, p0, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    .line 2
    iget-object v2, p0, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 3
    iget-object v3, p0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v3, v3, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Ln3/y/b/a/v0/g;->b([Ln3/y/b/a/b;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/t0/t$a;Ln3/y/b/a/l0;)Ln3/y/b/a/v0/h;

    move-result-object p2

    .line 4
    iget-object v0, p2, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    invoke-virtual {v0}, Ln3/y/b/a/v0/f;->a()[Ln3/y/b/a/v0/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3, p1}, Ln3/y/b/a/v0/e;->i(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
