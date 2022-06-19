.class public final Ln3/y/b/a/q0/r/a;
.super Ln3/y/b/a/q0/r/d;
.source "SourceFile"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln3/y/b/a/q0/r/a;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Ln3/y/b/a/q0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/q0/r/d;-><init>(Ln3/y/b/a/q0/p;)V

    return-void
.end method


# virtual methods
.method public b(Ln3/y/b/a/x0/m;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/q0/r/d$a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Ln3/y/b/a/q0/r/a;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 2
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 3
    iput v3, v0, Ln3/y/b/a/q0/r/a;->d:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    .line 4
    sget-object v3, Ln3/y/b/a/q0/r/a;->e:[I

    aget v10, v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "audio/mpeg"

    .line 5
    invoke-static/range {v4 .. v14}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 6
    iget-object v3, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 7
    iput-boolean v2, v0, Ln3/y/b/a/q0/r/a;->c:Z

    goto :goto_3

    :cond_0
    const/4 v6, 0x7

    if-eq v3, v6, :cond_3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v3, v1, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    new-instance v1, Ln3/y/b/a/q0/r/d$a;

    iget v2, v0, Ln3/y/b/a/q0/r/a;->d:I

    const/16 v3, 0x27

    const-string v4, "Audio format not supported: "

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/y/b/a/q0/r/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    if-ne v3, v6, :cond_4

    const-string v3, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string v3, "audio/g711-mlaw"

    :goto_1
    move-object v7, v3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v4

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9
    invoke-static/range {v6 .. v17}, Landroidx/media2/exoplayer/external/Format;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 10
    iget-object v3, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 11
    iput-boolean v2, v0, Ln3/y/b/a/q0/r/a;->c:Z

    .line 12
    :goto_3
    iput-boolean v2, v0, Ln3/y/b/a/q0/r/a;->b:Z

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    .line 13
    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->A(I)V

    :goto_4
    return v2
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
    iget v2, v0, Ln3/y/b/a/q0/r/a;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v9

    .line 3
    iget-object v2, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v1, v9}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 4
    iget-object v5, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    return v3

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 6
    iget-boolean v5, v0, Ln3/y/b/a/q0/r/a;->c:Z

    if-nez v5, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    new-array v5, v2, [B

    .line 8
    iget-object v6, v1, Ln3/y/b/a/x0/m;->a:[B

    iget v7, v1, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v6, v7, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v6, v1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v6, v2

    iput v6, v1, Ln3/y/b/a/x0/m;->b:I

    .line 10
    new-instance v1, Ln3/y/b/a/x0/l;

    invoke-direct {v1, v5}, Ln3/y/b/a/x0/l;-><init>([B)V

    invoke-static {v1, v4}, Ln3/y/b/a/x0/b;->b(Ln3/y/b/a/x0/l;Z)Landroid/util/Pair;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 11
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 13
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "audio/mp4a-latm"

    .line 14
    invoke-static/range {v6 .. v16}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 15
    iget-object v2, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 16
    iput-boolean v3, v0, Ln3/y/b/a/q0/r/a;->c:Z

    return v4

    .line 17
    :cond_1
    iget v5, v0, Ln3/y/b/a/q0/r/a;->d:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v4

    .line 18
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v11

    .line 19
    iget-object v2, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v1, v11}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 20
    iget-object v7, v0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    return v3
.end method
