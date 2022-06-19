.class public final Ln3/y/b/a/q0/w/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# instance fields
.field public final a:Ln3/y/b/a/x0/m;

.field public final b:Ln3/y/b/a/q0/l;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ln3/y/b/a/q0/p;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/w/p;->f:I

    .line 3
    new-instance v1, Ln3/y/b/a/x0/m;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v1, p0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    .line 4
    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 5
    new-instance v0, Ln3/y/b/a/q0/l;

    invoke-direct {v0}, Ln3/y/b/a/q0/l;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/p;->b:Ln3/y/b/a/q0/l;

    .line 6
    iput-object p1, p0, Ln3/y/b/a/q0/w/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/w/p;->f:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/w/p;->g:I

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/p;->i:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/w/p;->l:J

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_b

    .line 2
    iget v2, v0, Ln3/y/b/a/q0/w/p;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    iget v4, v0, Ln3/y/b/a/q0/w/p;->k:I

    iget v5, v0, Ln3/y/b/a/q0/w/p;->g:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v4, v0, Ln3/y/b/a/q0/w/p;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v4, v1, v2}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 5
    iget v4, v0, Ln3/y/b/a/q0/w/p;->g:I

    add-int/2addr v4, v2

    iput v4, v0, Ln3/y/b/a/q0/w/p;->g:I

    .line 6
    iget v9, v0, Ln3/y/b/a/q0/w/p;->k:I

    if-ge v4, v9, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, v0, Ln3/y/b/a/q0/w/p;->e:Ln3/y/b/a/q0/p;

    iget-wide v6, v0, Ln3/y/b/a/q0/w/p;->l:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 8
    iget-wide v4, v0, Ln3/y/b/a/q0/w/p;->l:J

    iget-wide v6, v0, Ln3/y/b/a/q0/w/p;->j:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Ln3/y/b/a/q0/w/p;->l:J

    .line 9
    iput v3, v0, Ln3/y/b/a/q0/w/p;->g:I

    .line 10
    iput v3, v0, Ln3/y/b/a/q0/w/p;->f:I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    iget v6, v0, Ln3/y/b/a/q0/w/p;->g:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 13
    iget-object v6, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    iget-object v6, v6, Ln3/y/b/a/x0/m;->a:[B

    iget v8, v0, Ln3/y/b/a/q0/w/p;->g:I

    invoke-virtual {v1, v6, v8, v2}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 14
    iget v6, v0, Ln3/y/b/a/q0/w/p;->g:I

    add-int/2addr v6, v2

    iput v6, v0, Ln3/y/b/a/q0/w/p;->g:I

    if-ge v6, v7, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 16
    iget-object v2, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    iget-object v6, v0, Ln3/y/b/a/q0/w/p;->b:Ln3/y/b/a/q0/l;

    invoke-static {v2, v6}, Ln3/y/b/a/q0/l;->b(ILn3/y/b/a/q0/l;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    iput v3, v0, Ln3/y/b/a/q0/w/p;->g:I

    .line 18
    iput v5, v0, Ln3/y/b/a/q0/w/p;->f:I

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, v0, Ln3/y/b/a/q0/w/p;->b:Ln3/y/b/a/q0/l;

    iget v6, v2, Ln3/y/b/a/q0/l;->c:I

    iput v6, v0, Ln3/y/b/a/q0/w/p;->k:I

    .line 20
    iget-boolean v6, v0, Ln3/y/b/a/q0/w/p;->h:Z

    if-nez v6, :cond_5

    const-wide/32 v8, 0xf4240

    .line 21
    iget v6, v2, Ln3/y/b/a/q0/l;->g:I

    int-to-long v10, v6

    mul-long/2addr v10, v8

    iget v6, v2, Ln3/y/b/a/q0/l;->d:I

    int-to-long v8, v6

    div-long/2addr v10, v8

    iput-wide v10, v0, Ln3/y/b/a/q0/w/p;->j:J

    .line 22
    iget-object v12, v0, Ln3/y/b/a/q0/w/p;->d:Ljava/lang/String;

    iget-object v13, v2, Ln3/y/b/a/q0/l;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x1000

    iget v2, v2, Ln3/y/b/a/q0/l;->e:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Ln3/y/b/a/q0/w/p;->c:Ljava/lang/String;

    move/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v22, v8

    invoke-static/range {v12 .. v22}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 23
    iget-object v6, v0, Ln3/y/b/a/q0/w/p;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v6, v2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 24
    iput-boolean v5, v0, Ln3/y/b/a/q0/w/p;->h:Z

    .line 25
    :cond_5
    iget-object v2, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 26
    iget-object v2, v0, Ln3/y/b/a/q0/w/p;->e:Ln3/y/b/a/q0/p;

    iget-object v3, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    invoke-interface {v2, v3, v7}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 27
    iput v4, v0, Ln3/y/b/a/q0/w/p;->f:I

    goto/16 :goto_0

    .line 28
    :cond_6
    iget-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 29
    iget v6, v1, Ln3/y/b/a/x0/m;->b:I

    .line 30
    iget v7, v1, Ln3/y/b/a/x0/m;->c:I

    :goto_1
    if-ge v6, v7, :cond_a

    .line 31
    aget-byte v8, v2, v6

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v3

    .line 32
    :goto_2
    iget-boolean v9, v0, Ln3/y/b/a/q0/w/p;->i:Z

    if-eqz v9, :cond_8

    aget-byte v9, v2, v6

    const/16 v10, 0xe0

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    move v9, v5

    goto :goto_3

    :cond_8
    move v9, v3

    .line 33
    :goto_3
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/p;->i:Z

    if-eqz v9, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 34
    invoke-virtual {v1, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 35
    iput-boolean v3, v0, Ln3/y/b/a/q0/w/p;->i:Z

    .line 36
    iget-object v3, v0, Ln3/y/b/a/q0/w/p;->a:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v2, v2, v6

    aput-byte v2, v3, v5

    .line 37
    iput v4, v0, Ln3/y/b/a/q0/w/p;->g:I

    .line 38
    iput v5, v0, Ln3/y/b/a/q0/w/p;->f:I

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 39
    :cond_a
    invoke-virtual {v1, v7}, Ln3/y/b/a/x0/m;->z(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/p;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/p;->e:Ln3/y/b/a/q0/p;

    return-void
.end method
