.class public final Ln3/y/b/a/q0/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# instance fields
.field public a:Ln3/y/b/a/q0/h;

.field public b:Ln3/y/b/a/q0/p;

.field public c:Ln3/y/b/a/q0/x/b;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Ln3/y/b/a/q0/x/a;->e:I

    return-void
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/x/a;->a:Ln3/y/b/a/q0/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/x/a;->b:Ln3/y/b/a/q0/p;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    .line 4
    invoke-interface {p1}, Ln3/y/b/a/q0/h;->g()V

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->g1(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/x/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    if-nez v2, :cond_1

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/MediaSessionCompat;->g1(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/x/b;

    move-result-object v2

    iput-object v2, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3
    iget v9, v2, Ln3/y/b/a/q0/x/b;->b:I

    iget v4, v2, Ln3/y/b/a/q0/x/b;->e:I

    mul-int/2addr v4, v9

    iget v8, v2, Ln3/y/b/a/q0/x/b;->a:I

    mul-int v6, v4, v8

    const v7, 0x8000

    .line 4
    iget v10, v2, Ln3/y/b/a/q0/x/b;->f:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "audio/raw"

    .line 5
    invoke-static/range {v3 .. v14}, Landroidx/media2/exoplayer/external/Format;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 6
    iget-object v3, v0, Ln3/y/b/a/q0/x/a;->b:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 7
    iget-object v2, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    .line 8
    iget v2, v2, Ln3/y/b/a/q0/x/b;->d:I

    .line 9
    iput v2, v0, Ln3/y/b/a/q0/x/a;->d:I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Unsupported or unrecognized wav header."

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v2, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    .line 12
    iget v3, v2, Ln3/y/b/a/q0/x/b;->g:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const-wide/16 v7, -0x1

    if-nez v6, :cond_7

    .line 13
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput v4, v1, Ln3/y/b/a/q0/d;->f:I

    .line 16
    new-instance v3, Ln3/y/b/a/x0/m;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ln3/y/b/a/x0/m;-><init>(I)V

    .line 17
    invoke-static {v1, v3}, Ln3/y/b/a/q0/x/c;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/x0/m;)Ln3/y/b/a/q0/x/c;

    move-result-object v6

    .line 18
    :goto_2
    iget v11, v6, Ln3/y/b/a/q0/x/c;->a:I

    const v12, 0x64617461

    if-eq v11, v12, :cond_5

    const v12, 0x52494646

    const-wide/16 v13, 0x8

    .line 19
    iget-wide v9, v6, Ln3/y/b/a/q0/x/c;->b:J

    add-long/2addr v9, v13

    if-ne v11, v12, :cond_3

    const-wide/16 v9, 0xc

    :cond_3
    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v9, v11

    if-gtz v11, :cond_4

    long-to-int v6, v9

    .line 20
    invoke-virtual {v1, v6}, Ln3/y/b/a/q0/d;->h(I)V

    .line 21
    invoke-static {v1, v3}, Ln3/y/b/a/q0/x/c;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/x0/m;)Ln3/y/b/a/q0/x/c;

    move-result-object v6

    goto :goto_2

    .line 22
    :cond_4
    new-instance v1, Ln3/y/b/a/c0;

    iget v2, v6, Ln3/y/b/a/q0/x/c;->a:I

    const/16 v3, 0x33

    const-string v4, "Chunk is too large (~2GB+) to skip; id: "

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5
    invoke-virtual {v1, v4}, Ln3/y/b/a/q0/d;->h(I)V

    .line 24
    iget-wide v3, v1, Ln3/y/b/a/q0/d;->d:J

    long-to-int v3, v3

    int-to-long v9, v3

    .line 25
    iget-wide v11, v6, Ln3/y/b/a/q0/x/c;->b:J

    add-long/2addr v9, v11

    .line 26
    iget-wide v11, v1, Ln3/y/b/a/q0/d;->c:J

    cmp-long v4, v11, v7

    if-eqz v4, :cond_6

    cmp-long v4, v9, v11

    if-lez v4, :cond_6

    move-wide v9, v11

    .line 27
    :cond_6
    iput v3, v2, Ln3/y/b/a/q0/x/b;->g:I

    .line 28
    iput-wide v9, v2, Ln3/y/b/a/q0/x/b;->h:J

    .line 29
    iget-object v2, v0, Ln3/y/b/a/q0/x/a;->a:Ln3/y/b/a/q0/h;

    iget-object v3, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    invoke-interface {v2, v3}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_3

    .line 30
    :cond_7
    iget-wide v9, v1, Ln3/y/b/a/q0/d;->d:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-nez v2, :cond_8

    .line 31
    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    .line 32
    :cond_8
    :goto_3
    iget-object v2, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    .line 33
    iget-wide v2, v2, Ln3/y/b/a/q0/x/b;->h:J

    cmp-long v4, v2, v7

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    .line 34
    :goto_4
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 35
    iget-wide v6, v1, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_a

    return v5

    :cond_a
    const v4, 0x8000

    .line 36
    iget v6, v0, Ln3/y/b/a/q0/x/a;->e:I

    sub-int/2addr v4, v6

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 37
    iget-object v3, v0, Ln3/y/b/a/q0/x/a;->b:Ln3/y/b/a/q0/p;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v2, v4}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v2

    if-eq v2, v5, :cond_b

    .line 38
    iget v3, v0, Ln3/y/b/a/q0/x/a;->e:I

    add-int/2addr v3, v2

    iput v3, v0, Ln3/y/b/a/q0/x/a;->e:I

    .line 39
    :cond_b
    iget v3, v0, Ln3/y/b/a/q0/x/a;->e:I

    iget v4, v0, Ln3/y/b/a/q0/x/a;->d:I

    div-int v4, v3, v4

    if-lez v4, :cond_c

    .line 40
    iget-object v6, v0, Ln3/y/b/a/q0/x/a;->c:Ln3/y/b/a/q0/x/b;

    .line 41
    iget-wide v7, v1, Ln3/y/b/a/q0/d;->d:J

    int-to-long v9, v3

    sub-long/2addr v7, v9

    .line 42
    invoke-virtual {v6, v7, v8}, Ln3/y/b/a/q0/x/b;->f(J)J

    move-result-wide v10

    .line 43
    iget v1, v0, Ln3/y/b/a/q0/x/a;->d:I

    mul-int v13, v4, v1

    .line 44
    iget v1, v0, Ln3/y/b/a/q0/x/a;->e:I

    sub-int v14, v1, v13

    iput v14, v0, Ln3/y/b/a/q0/x/a;->e:I

    .line 45
    iget-object v9, v0, Ln3/y/b/a/q0/x/a;->b:Ln3/y/b/a/q0/p;

    const/4 v12, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    :cond_c
    if-ne v2, v5, :cond_d

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    return v5
.end method

.method public release()V
    .locals 0

    return-void
.end method
