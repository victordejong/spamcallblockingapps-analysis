.class public final Ln3/y/b/a/q0/w/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# instance fields
.field public final a:Ln3/y/b/a/x0/l;

.field public final b:Ln3/y/b/a/x0/m;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ln3/y/b/a/q0/p;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Landroidx/media2/exoplayer/external/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/x0/l;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/d;->a:Ln3/y/b/a/x0/l;

    .line 3
    new-instance v1, Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/l;->a:[B

    invoke-direct {v1, v0}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object v1, p0, Ln3/y/b/a/q0/w/d;->b:Ln3/y/b/a/x0/m;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln3/y/b/a/q0/w/d;->f:I

    .line 5
    iput v0, p0, Ln3/y/b/a/q0/w/d;->g:I

    .line 6
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/d;->h:Z

    .line 7
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/d;->i:Z

    .line 8
    iput-object p1, p0, Ln3/y/b/a/q0/w/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/w/d;->f:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/w/d;->g:I

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/d;->h:Z

    .line 4
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/d;->i:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/w/d;->m:J

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_e

    .line 2
    iget v2, v0, Ln3/y/b/a/q0/w/d;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    iget v3, v0, Ln3/y/b/a/q0/w/d;->l:I

    iget v4, v0, Ln3/y/b/a/q0/w/d;->g:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Ln3/y/b/a/q0/w/d;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v1, v2}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 5
    iget v3, v0, Ln3/y/b/a/q0/w/d;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Ln3/y/b/a/q0/w/d;->g:I

    .line 6
    iget v10, v0, Ln3/y/b/a/q0/w/d;->l:I

    if-ne v3, v10, :cond_0

    .line 7
    iget-object v6, v0, Ln3/y/b/a/q0/w/d;->e:Ln3/y/b/a/q0/p;

    iget-wide v7, v0, Ln3/y/b/a/q0/w/d;->m:J

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 8
    iget-wide v2, v0, Ln3/y/b/a/q0/w/d;->m:J

    iget-wide v6, v0, Ln3/y/b/a/q0/w/d;->j:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Ln3/y/b/a/q0/w/d;->m:J

    .line 9
    iput v5, v0, Ln3/y/b/a/q0/w/d;->f:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 11
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v6

    iget v7, v0, Ln3/y/b/a/q0/w/d;->g:I

    const/16 v8, 0x10

    rsub-int/lit8 v7, v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 12
    iget v7, v0, Ln3/y/b/a/q0/w/d;->g:I

    .line 13
    iget-object v9, v1, Ln3/y/b/a/x0/m;->a:[B

    iget v10, v1, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v9, v10, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, v6

    iput v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 15
    iget v2, v0, Ln3/y/b/a/q0/w/d;->g:I

    add-int/2addr v2, v6

    iput v2, v0, Ln3/y/b/a/q0/w/d;->g:I

    if-ne v2, v8, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 16
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->h(I)V

    .line 17
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->a:Ln3/y/b/a/x0/l;

    invoke-static {v2}, Ln3/y/b/a/n0/b;->b(Ln3/y/b/a/x0/l;)Ln3/y/b/a/n0/b$b;

    move-result-object v2

    .line 18
    iget-object v4, v0, Ln3/y/b/a/q0/w/d;->k:Landroidx/media2/exoplayer/external/Format;

    if-eqz v4, :cond_4

    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->v:I

    if-ne v3, v6, :cond_4

    iget v6, v2, Ln3/y/b/a/n0/b$b;->a:I

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->w:I

    if-ne v6, v7, :cond_4

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v6, "audio/ac4"

    .line 19
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    :cond_4
    iget-object v9, v0, Ln3/y/b/a/q0/w/d;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x2

    iget v15, v2, Ln3/y/b/a/n0/b$b;->a:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v4, v0, Ln3/y/b/a/q0/w/d;->c:Ljava/lang/String;

    const-string v10, "audio/ac4"

    move-object/from16 v19, v4

    .line 21
    invoke-static/range {v9 .. v19}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iput-object v4, v0, Ln3/y/b/a/q0/w/d;->k:Landroidx/media2/exoplayer/external/Format;

    .line 22
    iget-object v6, v0, Ln3/y/b/a/q0/w/d;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v6, v4}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 23
    :cond_5
    iget v4, v2, Ln3/y/b/a/n0/b$b;->b:I

    iput v4, v0, Ln3/y/b/a/q0/w/d;->l:I

    const-wide/32 v6, 0xf4240

    .line 24
    iget v2, v2, Ln3/y/b/a/n0/b$b;->c:I

    int-to-long v9, v2

    mul-long/2addr v9, v6

    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->k:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->w:I

    int-to-long v6, v2

    div-long/2addr v9, v6

    iput-wide v9, v0, Ln3/y/b/a/q0/w/d;->j:J

    .line 25
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 26
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->e:Ln3/y/b/a/q0/p;

    iget-object v4, v0, Ln3/y/b/a/q0/w/d;->b:Ln3/y/b/a/x0/m;

    invoke-interface {v2, v4, v8}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 27
    iput v3, v0, Ln3/y/b/a/q0/w/d;->f:I

    goto/16 :goto_0

    .line 28
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    const/16 v6, 0x41

    const/16 v7, 0x40

    if-lez v2, :cond_c

    .line 29
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/d;->h:Z

    const/16 v8, 0xac

    if-nez v2, :cond_8

    .line 30
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    if-ne v2, v8, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v5

    :goto_3
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/d;->h:Z

    goto :goto_2

    .line 31
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    if-ne v2, v8, :cond_9

    move v8, v4

    goto :goto_4

    :cond_9
    move v8, v5

    .line 32
    :goto_4
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/d;->h:Z

    if-eq v2, v7, :cond_a

    if-ne v2, v6, :cond_6

    :cond_a
    if-ne v2, v6, :cond_b

    move v2, v4

    goto :goto_5

    :cond_b
    move v2, v5

    .line 33
    :goto_5
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/d;->i:Z

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v5

    :goto_6
    if-eqz v2, :cond_0

    .line 34
    iput v4, v0, Ln3/y/b/a/q0/w/d;->f:I

    .line 35
    iget-object v2, v0, Ln3/y/b/a/q0/w/d;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/16 v8, -0x54

    aput-byte v8, v2, v5

    .line 36
    iget-boolean v5, v0, Ln3/y/b/a/q0/w/d;->i:Z

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    move v6, v7

    :goto_7
    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 37
    iput v3, v0, Ln3/y/b/a/q0/w/d;->g:I

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/d;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/d;->e:Ln3/y/b/a/q0/p;

    return-void
.end method
