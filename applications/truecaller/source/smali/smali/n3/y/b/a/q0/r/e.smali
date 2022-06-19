.class public final Ln3/y/b/a/q0/r/e;
.super Ln3/y/b/a/q0/r/d;
.source "SourceFile"


# instance fields
.field public final b:Ln3/y/b/a/x0/m;

.field public final c:Ln3/y/b/a/x0/m;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/p;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/q0/r/d;-><init>(Ln3/y/b/a/q0/p;)V

    .line 2
    new-instance p1, Ln3/y/b/a/x0/m;

    sget-object v0, Ln3/y/b/a/x0/k;->a:[B

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/r/e;->b:Ln3/y/b/a/x0/m;

    .line 3
    new-instance p1, Ln3/y/b/a/x0/m;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/r/e;->c:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public b(Ln3/y/b/a/x0/m;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/q0/r/d$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/r/e;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Ln3/y/b/a/q0/r/d$a;

    const/16 v1, 0x27

    const-string v2, "Video format not supported: "

    invoke-static {v1, v2, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ln3/y/b/a/q0/r/d$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ln3/y/b/a/x0/m;J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    .line 2
    iget-object v3, v1, Ln3/y/b/a/x0/m;->a:[B

    iget v4, v1, Ln3/y/b/a/x0/m;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Ln3/y/b/a/x0/m;->b:I

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Ln3/y/b/a/x0/m;->b:I

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, v1, Ln3/y/b/a/x0/m;->b:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long v6, v3, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3
    iget-boolean v5, v0, Ln3/y/b/a/q0/r/e;->e:Z

    if-nez v5, :cond_0

    .line 4
    new-instance v2, Ln3/y/b/a/x0/m;

    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v2, v5}, Ln3/y/b/a/x0/m;-><init>([B)V

    .line 5
    iget-object v5, v2, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 6
    invoke-static {v2}, Ln3/y/b/a/y0/a;->b(Ln3/y/b/a/x0/m;)Ln3/y/b/a/y0/a;

    move-result-object v1

    .line 7
    iget v2, v1, Ln3/y/b/a/y0/a;->b:I

    iput v2, v0, Ln3/y/b/a/q0/r/e;->d:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 8
    iget v10, v1, Ln3/y/b/a/y0/a;->c:I

    iget v11, v1, Ln3/y/b/a/y0/a;->d:I

    const/high16 v12, -0x40800000    # -1.0f

    iget-object v13, v1, Ln3/y/b/a/y0/a;->a:Ljava/util/List;

    const/4 v14, -0x1

    iget v15, v1, Ln3/y/b/a/y0/a;->e:F

    const/16 v16, 0x0

    const-string v6, "video/avc"

    invoke-static/range {v5 .. v16}, Landroidx/media2/exoplayer/external/Format;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 9
    iget-object v2, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 10
    iput-boolean v3, v0, Ln3/y/b/a/q0/r/e;->e:Z

    return v4

    :cond_0
    if-ne v2, v3, :cond_4

    .line 11
    iget-boolean v2, v0, Ln3/y/b/a/q0/r/e;->e:Z

    if-eqz v2, :cond_4

    .line 12
    iget v2, v0, Ln3/y/b/a/q0/r/e;->g:I

    if-ne v2, v3, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    .line 13
    :goto_0
    iget-boolean v2, v0, Ln3/y/b/a/q0/r/e;->f:Z

    if-nez v2, :cond_2

    if-nez v8, :cond_2

    return v4

    .line 14
    :cond_2
    iget-object v2, v0, Ln3/y/b/a/q0/r/e;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 15
    aput-byte v4, v2, v4

    .line 16
    aput-byte v4, v2, v3

    const/4 v5, 0x2

    .line 17
    aput-byte v4, v2, v5

    .line 18
    iget v2, v0, Ln3/y/b/a/q0/r/e;->d:I

    const/4 v5, 0x4

    rsub-int/lit8 v2, v2, 0x4

    move v9, v4

    .line 19
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v10

    if-lez v10, :cond_3

    .line 20
    iget-object v10, v0, Ln3/y/b/a/q0/r/e;->c:Ln3/y/b/a/x0/m;

    iget-object v10, v10, Ln3/y/b/a/x0/m;->a:[B

    iget v11, v0, Ln3/y/b/a/q0/r/e;->d:I

    invoke-virtual {v1, v10, v2, v11}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 21
    iget-object v10, v0, Ln3/y/b/a/q0/r/e;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v10, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 22
    iget-object v10, v0, Ln3/y/b/a/q0/r/e;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->r()I

    move-result v10

    .line 23
    iget-object v11, v0, Ln3/y/b/a/q0/r/e;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v11, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 24
    iget-object v11, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    iget-object v12, v0, Ln3/y/b/a/q0/r/e;->b:Ln3/y/b/a/x0/m;

    invoke-interface {v11, v12, v5}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    add-int/lit8 v9, v9, 0x4

    .line 25
    iget-object v11, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v11, v1, v10}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    add-int/2addr v9, v10

    goto :goto_1

    .line 26
    :cond_3
    iget-object v5, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 27
    iput-boolean v3, v0, Ln3/y/b/a/q0/r/e;->f:Z

    return v3

    :cond_4
    return v4
.end method
