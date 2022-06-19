.class public Ln3/y/b/a/t0/q0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/q0/d$b;,
        Ln3/y/b/a/t0/q0/d$d;,
        Ln3/y/b/a/t0/q0/d$a;,
        Ln3/y/b/a/t0/q0/d$e;,
        Ln3/y/b/a/t0/q0/d$c;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/f;

.field public final b:Ln3/y/b/a/w0/h;

.field public final c:Ln3/y/b/a/w0/h;

.field public final d:Ln3/y/b/a/t0/q0/p;

.field public final e:[Landroid/net/Uri;

.field public final f:[Landroidx/media2/exoplayer/external/Format;

.field public final g:Ln3/y/b/a/t0/q0/r/i;

.field public final h:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ln3/y/b/a/t0/q0/d$b;

.field public k:Z

.field public l:[B

.field public m:Ljava/io/IOException;

.field public n:Landroid/net/Uri;

.field public o:Z

.field public p:Ln3/y/b/a/v0/e;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/q0/r/i;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/e0;Ln3/y/b/a/t0/q0/p;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/t0/q0/f;",
            "Ln3/y/b/a/t0/q0/r/i;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ln3/y/b/a/t0/q0/e;",
            "Ln3/y/b/a/w0/e0;",
            "Ln3/y/b/a/t0/q0/p;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/d;->a:Ln3/y/b/a/t0/q0/f;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/q0/d;->g:Ln3/y/b/a/t0/q0/r/i;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/t0/q0/d;->e:[Landroid/net/Uri;

    .line 5
    iput-object p4, p0, Ln3/y/b/a/t0/q0/d;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 6
    iput-object p7, p0, Ln3/y/b/a/t0/q0/d;->d:Ln3/y/b/a/t0/q0/p;

    .line 7
    iput-object p8, p0, Ln3/y/b/a/t0/q0/d;->i:Ljava/util/List;

    .line 8
    new-instance p1, Ln3/y/b/a/t0/q0/d$b;

    invoke-direct {p1}, Ln3/y/b/a/t0/q0/d$b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/d;->j:Ln3/y/b/a/t0/q0/d$b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Ln3/y/b/a/t0/q0/d;->q:J

    const/4 p1, 0x1

    .line 10
    invoke-interface {p5, p1}, Ln3/y/b/a/t0/q0/e;->a(I)Ln3/y/b/a/w0/h;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/q0/d;->b:Ln3/y/b/a/w0/h;

    if-eqz p6, :cond_0

    .line 11
    invoke-interface {p1, p6}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    :cond_0
    const/4 p1, 0x3

    .line 12
    invoke-interface {p5, p1}, Ln3/y/b/a/t0/q0/e;->a(I)Ln3/y/b/a/w0/h;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/q0/d;->c:Ln3/y/b/a/w0/h;

    .line 13
    new-instance p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/d;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 14
    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 15
    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    .line 16
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p2, Ln3/y/b/a/t0/q0/d$e;

    iget-object p3, p0, Ln3/y/b/a/t0/q0/d;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p2, p3, p1}, Ln3/y/b/a/t0/q0/d$e;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    iput-object p2, p0, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/t0/q0/h;J)[Ln3/y/b/a/t0/p0/e;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    sget-object v10, Ln3/y/b/a/t0/p0/e;->a:Ln3/y/b/a/t0/p0/e;

    if-nez v9, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Ln3/y/b/a/t0/q0/d;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v9, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    :goto_0
    move v11, v0

    .line 2
    iget-object v0, v8, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    invoke-interface {v0}, Ln3/y/b/a/v0/e;->length()I

    move-result v12

    new-array v13, v12, [Ln3/y/b/a/t0/p0/e;

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v12, :cond_4

    .line 3
    iget-object v0, v8, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    invoke-interface {v0, v15}, Ln3/y/b/a/v0/e;->d(I)I

    move-result v0

    .line 4
    iget-object v1, v8, Ln3/y/b/a/t0/q0/d;->e:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 5
    iget-object v2, v8, Ln3/y/b/a/t0/q0/d;->g:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/q0/r/i;->h(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    aput-object v10, v13, v15

    goto :goto_3

    .line 7
    :cond_1
    iget-object v2, v8, Ln3/y/b/a/t0/q0/d;->g:Ln3/y/b/a/t0/q0/r/i;

    .line 8
    invoke-interface {v2, v1, v14}, Ln3/y/b/a/t0/q0/r/i;->k(Landroid/net/Uri;Z)Ln3/y/b/a/t0/q0/r/e;

    move-result-object v6

    .line 9
    iget-wide v1, v6, Ln3/y/b/a/t0/q0/r/e;->f:J

    iget-object v3, v8, Ln3/y/b/a/t0/q0/d;->g:Ln3/y/b/a/t0/q0/r/i;

    .line 10
    invoke-interface {v3}, Ln3/y/b/a/t0/q0/r/i;->b()J

    move-result-wide v3

    sub-long v4, v1, v3

    if-eq v0, v11, :cond_2

    const/4 v0, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v14

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v6

    move-wide/from16 v16, v4

    move-object v14, v6

    move-wide/from16 v6, p2

    .line 11
    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/t0/q0/d;->b(Ln3/y/b/a/t0/q0/h;ZLn3/y/b/a/t0/q0/r/e;JJ)J

    move-result-wide v0

    .line 12
    iget-wide v2, v14, Ln3/y/b/a/t0/q0/r/e;->i:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 13
    aput-object v10, v13, v15

    goto :goto_3

    :cond_3
    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 14
    new-instance v1, Ln3/y/b/a/t0/q0/d$d;

    move-wide/from16 v2, v16

    invoke-direct {v1, v14, v2, v3, v0}, Ln3/y/b/a/t0/q0/d$d;-><init>(Ln3/y/b/a/t0/q0/r/e;JI)V

    aput-object v1, v13, v15

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    return-object v13
.end method

.method public final b(Ln3/y/b/a/t0/q0/h;ZLn3/y/b/a/t0/q0/r/e;JJ)J
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide p1, p1, Ln3/y/b/a/t0/p0/d;->i:J

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x1

    add-long/2addr p3, p1

    :cond_1
    return-wide p3

    .line 2
    :cond_2
    :goto_0
    iget-wide v0, p3, Ln3/y/b/a/t0/q0/r/e;->p:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_4

    .line 3
    iget-boolean p2, p0, Ln3/y/b/a/t0/q0/d;->o:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-wide p6, p1, Ln3/y/b/a/t0/p0/b;->f:J

    .line 4
    :cond_4
    :goto_1
    iget-boolean p2, p3, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-nez p2, :cond_5

    cmp-long p2, p6, v0

    if-ltz p2, :cond_5

    .line 5
    iget-wide p1, p3, Ln3/y/b/a/t0/q0/r/e;->i:J

    iget-object p3, p3, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    goto :goto_6

    :cond_5
    sub-long/2addr p6, p4

    .line 6
    iget-object p2, p3, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    .line 7
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Ln3/y/b/a/t0/q0/d;->g:Ln3/y/b/a/t0/q0/r/i;

    .line 8
    invoke-interface {p5}, Ln3/y/b/a/t0/q0/r/i;->i()Z

    move-result p5

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p5, :cond_7

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, p6

    goto :goto_3

    :cond_7
    :goto_2
    move p1, p7

    .line 9
    :goto_3
    sget p5, Ln3/y/b/a/x0/x;->a:I

    .line 10
    invoke-static {p2, p4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p5

    if-gez p5, :cond_8

    add-int/lit8 p5, p5, 0x2

    neg-int p2, p5

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_9

    .line 11
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p5, 0x1

    :goto_5
    if-eqz p1, :cond_a

    .line 12
    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_a
    int-to-long p1, p2

    .line 13
    iget-wide p3, p3, Ln3/y/b/a/t0/q0/r/e;->i:J

    :goto_6
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final c(Landroid/net/Uri;I)Ln3/y/b/a/t0/p0/b;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/t0/q0/d;->j:Ln3/y/b/a/t0/q0/d$b;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/t0/q0/d;->j:Ln3/y/b/a/t0/q0/d$b;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Ln3/y/b/a/t0/q0/d$b;->g(Landroid/net/Uri;[B)[B

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ln3/y/b/a/w0/k;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 4
    new-instance p1, Ln3/y/b/a/t0/q0/d$a;

    iget-object v3, p0, Ln3/y/b/a/t0/q0/d;->c:Ln3/y/b/a/w0/h;

    iget-object v1, p0, Ln3/y/b/a/t0/q0/d;->f:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v1, p2

    iget-object p2, p0, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    .line 5
    invoke-interface {p2}, Ln3/y/b/a/v0/e;->o()I

    move-result v6

    iget-object p2, p0, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    .line 6
    invoke-interface {p2}, Ln3/y/b/a/v0/e;->n()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Ln3/y/b/a/t0/q0/d;->l:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Ln3/y/b/a/t0/q0/d$a;-><init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-object p1
.end method
