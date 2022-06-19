.class public final Ln3/y/b/a/q0/w/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Ln3/y/b/a/x0/l;

.field public final c:Ln3/y/b/a/x0/m;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ln3/y/b/a/q0/p;

.field public g:Ln3/y/b/a/q0/p;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Ln3/y/b/a/q0/p;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln3/y/b/a/q0/w/f;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/x0/l;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    .line 3
    new-instance v0, Ln3/y/b/a/x0/m;

    sget-object v1, Ln3/y/b/a/q0/w/f;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/q0/w/f;->h()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln3/y/b/a/q0/w/f;->m:I

    .line 6
    iput v0, p0, Ln3/y/b/a/q0/w/f;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Ln3/y/b/a/q0/w/f;->q:J

    .line 8
    iput-boolean p1, p0, Ln3/y/b/a/q0/w/f;->a:Z

    .line 9
    iput-object p2, p0, Ln3/y/b/a/q0/w/f;->d:Ljava/lang/String;

    return-void
.end method

.method public static g(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/f;->l:Z

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/q0/w/f;->h()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/w/f;->s:J

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_21

    .line 2
    iget v2, v0, Ln3/y/b/a/q0/w/f;->h:I

    const/4 v3, 0x6

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_c

    if-eq v2, v10, :cond_8

    const/16 v5, 0xa

    if-eq v2, v9, :cond_7

    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    iget v3, v0, Ln3/y/b/a/q0/w/f;->r:I

    iget v4, v0, Ln3/y/b/a/q0/w/f;->i:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Ln3/y/b/a/q0/w/f;->t:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v1, v2}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 5
    iget v3, v0, Ln3/y/b/a/q0/w/f;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Ln3/y/b/a/q0/w/f;->i:I

    .line 6
    iget v8, v0, Ln3/y/b/a/q0/w/f;->r:I

    if-ne v3, v8, :cond_0

    .line 7
    iget-object v4, v0, Ln3/y/b/a/q0/w/f;->t:Ln3/y/b/a/q0/p;

    iget-wide v5, v0, Ln3/y/b/a/q0/w/f;->s:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 8
    iget-wide v2, v0, Ln3/y/b/a/q0/w/f;->s:J

    iget-wide v4, v0, Ln3/y/b/a/q0/w/f;->u:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Ln3/y/b/a/q0/w/f;->s:J

    .line 9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/w/f;->h()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_2
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/f;->k:Z

    const/4 v3, 0x5

    const/4 v11, 0x7

    if-eqz v2, :cond_3

    move v2, v11

    goto :goto_1

    :cond_3
    move v2, v3

    .line 12
    :goto_1
    iget-object v12, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    iget-object v12, v12, Ln3/y/b/a/x0/l;->a:[B

    invoke-virtual {v0, v1, v12, v2}, Ln3/y/b/a/q0/w/f;->f(Ln3/y/b/a/x0/m;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/l;->h(I)V

    .line 14
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/f;->p:Z

    if-nez v2, :cond_5

    .line 15
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    add-int/2addr v2, v10

    if-eq v2, v9, :cond_4

    move v2, v9

    .line 16
    :cond_4
    iget-object v5, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v5, v3}, Ln3/y/b/a/x0/l;->j(I)V

    .line 17
    iget-object v5, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v5, v7}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v5

    .line 18
    iget v12, v0, Ln3/y/b/a/q0/w/f;->n:I

    new-array v13, v9, [B

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v14, v12, 0x1

    and-int/2addr v14, v11

    or-int/2addr v2, v14

    int-to-byte v2, v2

    aput-byte v2, v13, v6

    shl-int/lit8 v2, v12, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x78

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v13, v10

    .line 19
    new-instance v2, Ln3/y/b/a/x0/l;

    invoke-direct {v2, v13}, Ln3/y/b/a/x0/l;-><init>([B)V

    invoke-static {v2, v6}, Ln3/y/b/a/x0/b;->b(Ln3/y/b/a/x0/l;Z)Landroid/util/Pair;

    move-result-object v2

    .line 20
    iget-object v14, v0, Ln3/y/b/a/q0/w/f;->e:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 22
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->d:Ljava/lang/String;

    const-string v15, "audio/mp4a-latm"

    move-object/from16 v24, v2

    .line 23
    invoke-static/range {v14 .. v24}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    const-wide/32 v11, 0x3d090000

    .line 24
    iget v5, v2, Landroidx/media2/exoplayer/external/Format;->w:I

    int-to-long v13, v5

    div-long/2addr v11, v13

    iput-wide v11, v0, Ln3/y/b/a/q0/w/f;->q:J

    .line 25
    iget-object v5, v0, Ln3/y/b/a/q0/w/f;->f:Ln3/y/b/a/q0/p;

    invoke-interface {v5, v2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 26
    iput-boolean v10, v0, Ln3/y/b/a/q0/w/f;->p:Z

    goto :goto_2

    .line 27
    :cond_5
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->j(I)V

    .line 28
    :goto_2
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v8}, Ln3/y/b/a/x0/l;->j(I)V

    .line 29
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    sub-int/2addr v2, v9

    sub-int/2addr v2, v3

    .line 30
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/f;->k:Z

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, -0x2

    .line 31
    :cond_6
    iget-object v3, v0, Ln3/y/b/a/q0/w/f;->f:Ln3/y/b/a/q0/p;

    iget-wide v4, v0, Ln3/y/b/a/q0/w/f;->q:J

    .line 32
    iput v8, v0, Ln3/y/b/a/q0/w/f;->h:I

    .line 33
    iput v6, v0, Ln3/y/b/a/q0/w/f;->i:I

    .line 34
    iput-object v3, v0, Ln3/y/b/a/q0/w/f;->t:Ln3/y/b/a/q0/p;

    .line 35
    iput-wide v4, v0, Ln3/y/b/a/q0/w/f;->u:J

    .line 36
    iput v2, v0, Ln3/y/b/a/q0/w/f;->r:I

    goto/16 :goto_0

    .line 37
    :cond_7
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v0, v1, v2, v5}, Ln3/y/b/a/q0/w/f;->f(Ln3/y/b/a/x0/m;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->g:Ln3/y/b/a/q0/p;

    iget-object v4, v0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    invoke-interface {v2, v4, v5}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 39
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 40
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->g:Ln3/y/b/a/q0/p;

    iget-object v3, v0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    .line 41
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->n()I

    move-result v3

    add-int/2addr v3, v5

    .line 42
    iput v8, v0, Ln3/y/b/a/q0/w/f;->h:I

    .line 43
    iput v5, v0, Ln3/y/b/a/q0/w/f;->i:I

    .line 44
    iput-object v2, v0, Ln3/y/b/a/q0/w/f;->t:Ln3/y/b/a/q0/p;

    const-wide/16 v4, 0x0

    .line 45
    iput-wide v4, v0, Ln3/y/b/a/q0/w/f;->u:J

    .line 46
    iput v3, v0, Ln3/y/b/a/q0/w/f;->r:I

    goto/16 :goto_0

    .line 47
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 48
    :cond_9
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    iget-object v3, v2, Ln3/y/b/a/x0/l;->a:[B

    iget-object v4, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 49
    iget v11, v1, Ln3/y/b/a/x0/m;->b:I

    .line 50
    aget-byte v4, v4, v11

    aput-byte v4, v3, v6

    .line 51
    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/l;->h(I)V

    .line 52
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v8}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    .line 53
    iget v3, v0, Ln3/y/b/a/q0/w/f;->n:I

    if-eq v3, v5, :cond_a

    if-eq v2, v3, :cond_a

    .line 54
    iput-boolean v6, v0, Ln3/y/b/a/q0/w/f;->l:Z

    .line 55
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/w/f;->h()V

    goto/16 :goto_0

    .line 56
    :cond_a
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/f;->l:Z

    if-nez v3, :cond_b

    .line 57
    iput-boolean v10, v0, Ln3/y/b/a/q0/w/f;->l:Z

    .line 58
    iget v3, v0, Ln3/y/b/a/q0/w/f;->o:I

    iput v3, v0, Ln3/y/b/a/q0/w/f;->m:I

    .line 59
    iput v2, v0, Ln3/y/b/a/q0/w/f;->n:I

    .line 60
    :cond_b
    iput v7, v0, Ln3/y/b/a/q0/w/f;->h:I

    .line 61
    iput v6, v0, Ln3/y/b/a/q0/w/f;->i:I

    goto/16 :goto_0

    .line 62
    :cond_c
    iget-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 63
    iget v11, v1, Ln3/y/b/a/x0/m;->b:I

    .line 64
    iget v12, v1, Ln3/y/b/a/x0/m;->c:I

    :goto_3
    if-ge v11, v12, :cond_20

    add-int/lit8 v13, v11, 0x1

    .line 65
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    .line 66
    iget v14, v0, Ln3/y/b/a/q0/w/f;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_1a

    int-to-byte v14, v11

    const v16, 0xff00

    and-int/lit16 v14, v14, 0xff

    or-int v14, v14, v16

    .line 67
    invoke-static {v14}, Ln3/y/b/a/q0/w/f;->g(I)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 68
    iget-boolean v14, v0, Ln3/y/b/a/q0/w/f;->l:Z

    if-nez v14, :cond_17

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 69
    invoke-virtual {v1, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 70
    iget-object v15, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    iget-object v15, v15, Ln3/y/b/a/x0/l;->a:[B

    invoke-virtual {v0, v1, v15, v10}, Ln3/y/b/a/q0/w/f;->i(Ln3/y/b/a/x0/m;[BI)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_5

    .line 71
    :cond_d
    iget-object v15, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v15, v8}, Ln3/y/b/a/x0/l;->h(I)V

    .line 72
    iget-object v15, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v15, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v15

    .line 73
    iget v6, v0, Ln3/y/b/a/q0/w/f;->m:I

    if-eq v6, v5, :cond_e

    if-eq v15, v6, :cond_e

    goto/16 :goto_5

    .line 74
    :cond_e
    iget v6, v0, Ln3/y/b/a/q0/w/f;->n:I

    if-eq v6, v5, :cond_11

    .line 75
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    iget-object v6, v6, Ln3/y/b/a/x0/l;->a:[B

    invoke-virtual {v0, v1, v6, v10}, Ln3/y/b/a/q0/w/f;->i(Ln3/y/b/a/x0/m;[BI)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_4

    .line 76
    :cond_f
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v6, v9}, Ln3/y/b/a/x0/l;->h(I)V

    .line 77
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v6, v8}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v6

    .line 78
    iget v9, v0, Ln3/y/b/a/q0/w/f;->n:I

    if-eq v6, v9, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v6, v14, 0x2

    .line 79
    invoke-virtual {v1, v6}, Ln3/y/b/a/x0/m;->z(I)V

    .line 80
    :cond_11
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    iget-object v6, v6, Ln3/y/b/a/x0/l;->a:[B

    invoke-virtual {v0, v1, v6, v8}, Ln3/y/b/a/q0/w/f;->i(Ln3/y/b/a/x0/m;[BI)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_4

    .line 81
    :cond_12
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    const/16 v9, 0xe

    invoke-virtual {v6, v9}, Ln3/y/b/a/x0/l;->h(I)V

    .line 82
    iget-object v6, v0, Ln3/y/b/a/q0/w/f;->b:Ln3/y/b/a/x0/l;

    invoke-virtual {v6, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v6

    if-gt v6, v3, :cond_13

    goto :goto_5

    :cond_13
    add-int/2addr v14, v6

    add-int/lit8 v6, v14, 0x1

    .line 83
    iget v9, v1, Ln3/y/b/a/x0/m;->c:I

    if-lt v6, v9, :cond_14

    goto :goto_4

    .line 84
    :cond_14
    iget-object v9, v1, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v14, v9, v14

    aget-byte v9, v9, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v14

    .line 85
    invoke-static {v9}, Ln3/y/b/a/q0/w/f;->g(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 86
    iget v9, v0, Ln3/y/b/a/q0/w/f;->m:I

    if-eq v9, v5, :cond_15

    iget-object v9, v1, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v6, v9, v6

    and-int/lit8 v6, v6, 0x8

    shr-int/2addr v6, v7

    if-ne v6, v15, :cond_16

    :cond_15
    :goto_4
    move v6, v10

    goto :goto_6

    :cond_16
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_1a

    :cond_17
    and-int/lit8 v2, v11, 0x8

    shr-int/2addr v2, v7

    .line 87
    iput v2, v0, Ln3/y/b/a/q0/w/f;->o:I

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_18

    move v2, v10

    goto :goto_7

    :cond_18
    const/4 v2, 0x0

    .line 88
    :goto_7
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/f;->k:Z

    .line 89
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/f;->l:Z

    if-nez v2, :cond_19

    .line 90
    iput v10, v0, Ln3/y/b/a/q0/w/f;->h:I

    const/4 v2, 0x0

    .line 91
    iput v2, v0, Ln3/y/b/a/q0/w/f;->i:I

    goto :goto_8

    :cond_19
    const/4 v2, 0x0

    .line 92
    iput v7, v0, Ln3/y/b/a/q0/w/f;->h:I

    .line 93
    iput v2, v0, Ln3/y/b/a/q0/w/f;->i:I

    .line 94
    :goto_8
    invoke-virtual {v1, v13}, Ln3/y/b/a/x0/m;->z(I)V

    goto/16 :goto_0

    .line 95
    :cond_1a
    iget v6, v0, Ln3/y/b/a/q0/w/f;->j:I

    or-int v9, v11, v6

    const/16 v11, 0x149

    if-eq v9, v11, :cond_1f

    const/16 v11, 0x1ff

    if-eq v9, v11, :cond_1e

    const/16 v11, 0x344

    if-eq v9, v11, :cond_1d

    const/16 v11, 0x433

    if-eq v9, v11, :cond_1c

    const/16 v9, 0x100

    if-eq v6, v9, :cond_1b

    .line 96
    iput v9, v0, Ln3/y/b/a/q0/w/f;->j:I

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    const/4 v6, 0x2

    const/4 v9, 0x0

    goto :goto_a

    :cond_1b
    const/4 v6, 0x2

    const/4 v9, 0x0

    goto :goto_9

    :cond_1c
    const/4 v6, 0x2

    .line 97
    iput v6, v0, Ln3/y/b/a/q0/w/f;->h:I

    .line 98
    sget-object v2, Ln3/y/b/a/q0/w/f;->v:[B

    array-length v2, v2

    iput v2, v0, Ln3/y/b/a/q0/w/f;->i:I

    const/4 v9, 0x0

    .line 99
    iput v9, v0, Ln3/y/b/a/q0/w/f;->r:I

    .line 100
    iget-object v2, v0, Ln3/y/b/a/q0/w/f;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/m;->z(I)V

    .line 101
    invoke-virtual {v1, v13}, Ln3/y/b/a/x0/m;->z(I)V

    goto/16 :goto_0

    :cond_1d
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x400

    .line 102
    iput v11, v0, Ln3/y/b/a/q0/w/f;->j:I

    goto :goto_9

    :cond_1e
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x200

    .line 103
    iput v11, v0, Ln3/y/b/a/q0/w/f;->j:I

    goto :goto_9

    :cond_1f
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x300

    .line 104
    iput v11, v0, Ln3/y/b/a/q0/w/f;->j:I

    :goto_9
    move v11, v13

    :goto_a
    move/from16 v25, v9

    move v9, v6

    move/from16 v6, v25

    goto/16 :goto_3

    .line 105
    :cond_20
    invoke-virtual {v1, v11}, Ln3/y/b/a/x0/m;->z(I)V

    goto/16 :goto_0

    :cond_21
    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/f;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/f;->f:Ln3/y/b/a/q0/p;

    .line 4
    iget-boolean v0, p0, Ln3/y/b/a/q0/w/f;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 6
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/f;->g:Ln3/y/b/a/q0/p;

    .line 7
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Landroidx/media2/exoplayer/external/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ln3/y/b/a/q0/f;

    invoke-direct {p1}, Ln3/y/b/a/q0/f;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/f;->g:Ln3/y/b/a/q0/p;

    :goto_0
    return-void
.end method

.method public final f(Ln3/y/b/a/x0/m;[BI)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    iget v1, p0, Ln3/y/b/a/q0/w/f;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Ln3/y/b/a/q0/w/f;->i:I

    .line 3
    iget-object v2, p1, Ln3/y/b/a/x0/m;->a:[B

    iget v3, p1, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v2, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Ln3/y/b/a/x0/m;->b:I

    .line 5
    iget p1, p0, Ln3/y/b/a/q0/w/f;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Ln3/y/b/a/q0/w/f;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/w/f;->h:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/w/f;->i:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Ln3/y/b/a/q0/w/f;->j:I

    return-void
.end method

.method public final i(Ln3/y/b/a/x0/m;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Ln3/y/b/a/x0/m;->a:[B

    iget v2, p1, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v0, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p2, p1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Ln3/y/b/a/x0/m;->b:I

    const/4 p1, 0x1

    return p1
.end method
