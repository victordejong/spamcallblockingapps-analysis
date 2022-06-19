.class public final Ln3/y/b/a/t0/q0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/s;
.implements Ln3/y/b/a/t0/q0/n$a;
.implements Ln3/y/b/a/t0/q0/r/i$b;


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/f;

.field public final b:Ln3/y/b/a/t0/q0/r/i;

.field public final c:Ln3/y/b/a/t0/q0/e;

.field public final d:Ln3/y/b/a/w0/e0;

.field public final e:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Ln3/y/b/a/w0/z;

.field public final g:Ln3/y/b/a/t0/c0$a;

.field public final h:Ln3/y/b/a/w0/b;

.field public final i:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ln3/y/b/a/t0/j0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ln3/y/b/a/t0/q0/p;

.field public final k:Ln3/y/b/a/t0/l;

.field public final l:Z

.field public final m:Z

.field public n:Ln3/y/b/a/t0/s$a;

.field public o:I

.field public p:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public q:[Ln3/y/b/a/t0/q0/n;

.field public r:[Ln3/y/b/a/t0/q0/n;

.field public s:Ln3/y/b/a/t0/k0;

.field public t:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/q0/r/i;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/e0;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/w0/b;Ln3/y/b/a/t0/l;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/t0/q0/f;",
            "Ln3/y/b/a/t0/q0/r/i;",
            "Ln3/y/b/a/t0/q0/e;",
            "Ln3/y/b/a/w0/e0;",
            "Ln3/y/b/a/p0/c<",
            "*>;",
            "Ln3/y/b/a/w0/z;",
            "Ln3/y/b/a/t0/c0$a;",
            "Ln3/y/b/a/w0/b;",
            "Ln3/y/b/a/t0/l;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/i;->a:Ln3/y/b/a/t0/q0/f;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/q0/i;->b:Ln3/y/b/a/t0/q0/r/i;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/t0/q0/i;->c:Ln3/y/b/a/t0/q0/e;

    .line 5
    iput-object p4, p0, Ln3/y/b/a/t0/q0/i;->d:Ln3/y/b/a/w0/e0;

    .line 6
    iput-object p5, p0, Ln3/y/b/a/t0/q0/i;->e:Ln3/y/b/a/p0/c;

    .line 7
    iput-object p6, p0, Ln3/y/b/a/t0/q0/i;->f:Ln3/y/b/a/w0/z;

    .line 8
    iput-object p7, p0, Ln3/y/b/a/t0/q0/i;->g:Ln3/y/b/a/t0/c0$a;

    .line 9
    iput-object p8, p0, Ln3/y/b/a/t0/q0/i;->h:Ln3/y/b/a/w0/b;

    .line 10
    iput-object p9, p0, Ln3/y/b/a/t0/q0/i;->k:Ln3/y/b/a/t0/l;

    .line 11
    iput-boolean p10, p0, Ln3/y/b/a/t0/q0/i;->l:Z

    .line 12
    iput-boolean p11, p0, Ln3/y/b/a/t0/q0/i;->m:Z

    const/4 p1, 0x0

    new-array p2, p1, [Ln3/y/b/a/t0/k0;

    .line 13
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p3, Ln3/y/b/a/t0/h;

    invoke-direct {p3, p2}, Ln3/y/b/a/t0/h;-><init>([Ln3/y/b/a/t0/k0;)V

    .line 15
    iput-object p3, p0, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    .line 16
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/t0/q0/i;->i:Ljava/util/IdentityHashMap;

    .line 17
    new-instance p2, Ln3/y/b/a/t0/q0/p;

    invoke-direct {p2}, Ln3/y/b/a/t0/q0/p;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/t0/q0/i;->j:Ln3/y/b/a/t0/q0/p;

    new-array p2, p1, [Ln3/y/b/a/t0/q0/n;

    .line 18
    iput-object p2, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    new-array p1, p1, [Ln3/y/b/a/t0/q0/n;

    .line 19
    iput-object p1, p0, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    .line 20
    invoke-virtual {p7}, Ln3/y/b/a/t0/c0$a;->p()V

    return-void
.end method

.method public static q(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 1
    iget-object v2, v1, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    .line 2
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 3
    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->v:I

    .line 4
    iget v6, v1, Landroidx/media2/exoplayer/external/Format;->c:I

    .line 5
    iget v7, v1, Landroidx/media2/exoplayer/external/Format;->d:I

    .line 6
    iget-object v8, v1, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    move-object v10, v1

    move-object v13, v2

    move-object v14, v3

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v5, v0, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz p2, :cond_1

    .line 10
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->v:I

    .line 11
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    .line 12
    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    .line 13
    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    move-object v13, v1

    move/from16 v16, v2

    move/from16 v19, v3

    move-object v14, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v10, v8

    goto :goto_0

    :cond_1
    move-object v13, v1

    move-object v10, v2

    move-object/from16 v21, v10

    move/from16 v19, v3

    move/from16 v20, v19

    move/from16 v16, v4

    move-object v14, v5

    .line 15
    :goto_0
    invoke-static {v13}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz p2, :cond_2

    .line 16
    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->e:I

    :cond_2
    move v15, v4

    .line 17
    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->h:Ljava/lang/String;

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-static/range {v9 .. v21}, Landroidx/media2/exoplayer/external/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->p:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 3
    iget-boolean v3, v2, Ln3/y/b/a/t0/q0/n;->B:Z

    if-nez v3, :cond_0

    .line 4
    iget-wide v3, v2, Ln3/y/b/a/t0/q0/n;->R:J

    invoke-virtual {v2, v3, v4}, Ln3/y/b/a/t0/q0/n;->a(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    invoke-interface {v0, p1, p2}, Ln3/y/b/a/t0/k0;->a(J)Z

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    invoke-interface {v0}, Ln3/y/b/a/t0/k0;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    invoke-interface {v0, p1, p2}, Ln3/y/b/a/t0/k0;->c(J)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    invoke-interface {v0}, Ln3/y/b/a/t0/k0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Ln3/y/b/a/t0/q0/n;->E(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Ln3/y/b/a/t0/q0/n;->E(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->j:Ln3/y/b/a/t0/q0/p;

    .line 6
    iget-object v0, v0, Ln3/y/b/a/t0/q0/p;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/i;->t:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->g:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {v0}, Ln3/y/b/a/t0/c0$a;->s()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/t0/q0/i;->t:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    invoke-interface {v0, p0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    return-void
.end method

.method public h()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->p:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ln3/y/b/a/t0/q0/n;->B()V

    .line 3
    iget-boolean v4, v3, Ln3/y/b/a/t0/q0/n;->V:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Ln3/y/b/a/t0/q0/n;->B:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k(JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, v4, Ln3/y/b/a/t0/q0/n;->A:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ln3/y/b/a/t0/q0/n;->z()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, v4, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    array-length v5, v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 4
    iget-object v7, v4, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    aget-object v7, v7, v6

    iget-object v8, v4, Ln3/y/b/a/t0/q0/n;->P:[Z

    aget-boolean v8, v8, v6

    invoke-virtual {v7, p1, p2, p3, v8}, Ln3/y/b/a/t0/i0;->h(JZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Ln3/y/b/a/t0/k0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    invoke-interface {p1, p0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    return-void
.end method

.method public m(Landroid/net/Uri;J)Z
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v6, v0, v4

    .line 2
    iget-object v6, v6, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    move v7, v2

    .line 3
    :goto_1
    iget-object v8, v6, Ln3/y/b/a/t0/q0/d;->e:[Landroid/net/Uri;

    array-length v9, v8

    const/4 v10, -0x1

    if-ge v7, v9, :cond_1

    .line 4
    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v10

    :goto_2
    if-ne v7, v10, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v8, v6, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    invoke-interface {v8, v7}, Ln3/y/b/a/v0/e;->j(I)I

    move-result v7

    if-ne v7, v10, :cond_3

    :goto_3
    goto :goto_4

    .line 6
    :cond_3
    iget-boolean v8, v6, Ln3/y/b/a/t0/q0/d;->r:Z

    iget-object v9, v6, Ln3/y/b/a/t0/q0/d;->n:Landroid/net/Uri;

    invoke-virtual {p1, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, v6, Ln3/y/b/a/t0/q0/d;->r:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p2, v8

    if-eqz v8, :cond_5

    .line 7
    iget-object v6, v6, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    .line 8
    invoke-interface {v6, v7, p2, p3}, Ln3/y/b/a/v0/e;->m(IJ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v3

    :goto_5
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_6
    iget-object p1, p0, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    invoke-interface {p1, p0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    return v5
.end method

.method public n(JLn3/y/b/a/j0;)J
    .locals 0

    return-wide p1
.end method

.method public o(Ln3/y/b/a/t0/s$a;J)V
    .locals 36

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1
    iput-object v0, v9, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    .line 2
    iget-object v0, v9, Ln3/y/b/a/t0/q0/i;->b:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v0, v9}, Ln3/y/b/a/t0/q0/r/i;->a(Ln3/y/b/a/t0/q0/r/i$b;)V

    .line 3
    iget-object v0, v9, Ln3/y/b/a/t0/q0/i;->b:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v0}, Ln3/y/b/a/t0/q0/r/i;->c()Ln3/y/b/a/t0/q0/r/d;

    move-result-object v10

    .line 4
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, v9, Ln3/y/b/a/t0/q0/i;->m:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->m:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v3, v11

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 11
    iget-object v5, v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 14
    iget-object v8, v7, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    iget-object v8, v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v13, v7, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 16
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    move v8, v11

    goto :goto_3

    :cond_1
    :goto_2
    move v8, v12

    .line 17
    :goto_3
    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 18
    iget-object v8, v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    iget-object v8, v7, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    .line 19
    :goto_4
    iget-object v4, v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 20
    sget v13, Ln3/y/b/a/x0/x;->a:I

    .line 21
    array-length v13, v4

    array-length v14, v7

    add-int/2addr v13, v14

    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    .line 22
    array-length v4, v4

    array-length v14, v7

    invoke-static {v7, v11, v13, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    check-cast v13, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 24
    new-instance v4, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 25
    invoke-direct {v4, v8, v12, v13}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 26
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :cond_6
    move-object v13, v2

    .line 29
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v12

    .line 30
    iget-object v14, v10, Ln3/y/b/a/t0/q0/r/d;->g:Ljava/util/List;

    .line 31
    iget-object v15, v10, Ln3/y/b/a/t0/q0/r/d;->h:Ljava/util/List;

    .line 32
    iput v11, v9, Ln3/y/b/a/t0/q0/i;->o:I

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1c

    .line 35
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    move v2, v11

    move v3, v2

    move v4, v3

    .line 36
    :goto_5
    iget-object v5, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x2

    if-ge v2, v5, :cond_a

    .line 37
    iget-object v5, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/t0/q0/r/d$b;

    .line 38
    iget-object v5, v5, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    .line 39
    iget v6, v5, Landroidx/media2/exoplayer/external/Format;->o:I

    if-gtz v6, :cond_9

    iget-object v6, v5, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    invoke-static {v6, v11}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_6

    .line 40
    :cond_7
    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    invoke-static {v5, v12}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 41
    aput v12, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, -0x1

    .line 42
    aput v6, v1, v2

    goto :goto_7

    .line 43
    :cond_9
    :goto_6
    aput v11, v1, v2

    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    const/4 v6, -0x1

    if-lez v3, :cond_b

    move v0, v12

    goto :goto_8

    :cond_b
    if-ge v4, v0, :cond_c

    sub-int/2addr v0, v4

    move v5, v0

    move v2, v12

    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    move v3, v0

    const/4 v0, 0x0

    :goto_8
    move v5, v3

    const/4 v2, 0x0

    .line 44
    :goto_9
    new-array v3, v5, [Landroid/net/Uri;

    .line 45
    new-array v4, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 46
    new-array v12, v5, [I

    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 47
    :goto_a
    iget-object v11, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_10

    if-eqz v0, :cond_d

    .line 48
    aget v11, v1, v6

    move/from16 v18, v0

    const/4 v0, 0x2

    if-ne v11, v0, :cond_f

    goto :goto_b

    :cond_d
    move/from16 v18, v0

    :goto_b
    if-eqz v2, :cond_e

    aget v0, v1, v6

    const/4 v11, 0x1

    if-eq v0, v11, :cond_f

    .line 49
    :cond_e
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/q0/r/d$b;

    .line 50
    iget-object v11, v0, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    aput-object v11, v3, v17

    .line 51
    iget-object v0, v0, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v0, v4, v17

    add-int/lit8 v0, v17, 0x1

    .line 52
    aput v6, v12, v17

    move/from16 v17, v0

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v18

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 53
    aget-object v1, v4, v0

    iget-object v11, v1, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iget-object v6, v10, Ln3/y/b/a/t0/q0/r/d;->j:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v10, Ln3/y/b/a/t0/q0/r/d;->k:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v17, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v18, v4

    move-object v4, v6

    move v6, v5

    move-object/from16 v5, v17

    move/from16 v19, v6

    move-object v6, v13

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v15, v7

    move-object v13, v8

    move-wide/from16 v7, p2

    .line 55
    invoke-virtual/range {v0 .. v8}, Ln3/y/b/a/t0/q0/i;->p(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Ln3/y/b/a/t0/q0/n;

    move-result-object v0

    .line 56
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-boolean v1, v9, Ln3/y/b/a/t0/q0/i;->l:Z

    if-eqz v1, :cond_1b

    if-eqz v11, :cond_1b

    const/4 v1, 0x2

    .line 59
    invoke-static {v11, v1}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x1

    .line 60
    invoke-static {v11, v2}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    .line 61
    :goto_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_17

    move/from16 v1, v19

    .line 62
    new-array v4, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_13

    .line 63
    aget-object v6, v18, v5

    .line 64
    iget-object v7, v6, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 65
    invoke-static/range {v24 .. v24}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 66
    iget-object v7, v6, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v11, v6, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget-object v12, v6, Landroidx/media2/exoplayer/external/Format;->h:Ljava/lang/String;

    iget-object v8, v6, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v9, v6, Landroidx/media2/exoplayer/external/Format;->e:I

    move-object/from16 v19, v15

    iget v15, v6, Landroidx/media2/exoplayer/external/Format;->n:I

    move-object/from16 v33, v13

    iget v13, v6, Landroidx/media2/exoplayer/external/Format;->o:I

    move-object/from16 v34, v14

    iget v14, v6, Landroidx/media2/exoplayer/external/Format;->p:F

    move-object/from16 v35, v0

    iget v0, v6, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v6, v6, Landroidx/media2/exoplayer/external/Format;->d:I

    const/16 v30, 0x0

    move-object/from16 v20, v7

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v15

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v31, v0

    move/from16 v32, v6

    invoke-static/range {v20 .. v32}, Landroidx/media2/exoplayer/external/Format;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 67
    aput-object v0, v4, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p0

    move-object/from16 v15, v19

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v0, v35

    goto :goto_e

    :cond_13
    move-object/from16 v35, v0

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v19, v15

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_15

    .line 69
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->j:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_14

    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->g:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 71
    :cond_14
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x0

    aget-object v4, v18, v1

    iget-object v5, v10, Ln3/y/b/a/t0/q0/r/d;->j:Landroidx/media2/exoplayer/external/Format;

    .line 72
    invoke-static {v4, v5, v1}, Ln3/y/b/a/t0/q0/i;->q(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 73
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_15
    iget-object v0, v10, Ln3/y/b/a/t0/q0/r/d;->k:Ljava/util/List;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 75
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 76
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v4, 0x1

    new-array v5, v4, [Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/Format;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-direct {v2, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x1

    goto :goto_11

    :cond_17
    move-object/from16 v35, v0

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move/from16 v1, v19

    move-object/from16 v19, v15

    if-eqz v2, :cond_19

    .line 77
    new-array v0, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_18

    .line 78
    aget-object v4, v18, v2

    iget-object v5, v10, Ln3/y/b/a/t0/q0/r/d;->j:Landroidx/media2/exoplayer/external/Format;

    const/4 v6, 0x1

    .line 79
    invoke-static {v4, v5, v6}, Ln3/y/b/a/t0/q0/i;->q(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_18
    const/4 v6, 0x1

    .line 80
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_11
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v6, [Landroidx/media2/exoplayer/external/Format;

    const/4 v2, 0x0

    const-string v4, "ID3"

    const-string v5, "application/id3"

    const/4 v7, -0x1

    .line 82
    invoke-static {v4, v5, v2, v7, v2}, Landroidx/media2/exoplayer/external/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 83
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v2, v6, [I

    .line 85
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    aput v0, v2, v4

    move-object/from16 v0, v35

    .line 86
    invoke-virtual {v0, v1, v4, v2}, Ln3/y/b/a/t0/q0/n;->C([Landroidx/media2/exoplayer/external/source/TrackGroup;I[I)V

    goto :goto_13

    .line 87
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v19, v15

    goto :goto_13

    :cond_1c
    move-object/from16 v19, v7

    move-object/from16 v33, v8

    move-object/from16 v17, v13

    move-object/from16 v34, v14

    move-object/from16 v16, v15

    .line 88
    :goto_13
    new-instance v9, Ljava/util/ArrayList;

    .line 89
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    new-instance v10, Ljava/util/ArrayList;

    .line 91
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    new-instance v11, Ljava/util/ArrayList;

    .line 93
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    .line 95
    :goto_14
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_22

    move-object/from16 v14, v34

    .line 96
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/q0/r/d$a;

    iget-object v0, v0, Ln3/y/b/a/t0/q0/r/d$a;->c:Ljava/lang/String;

    .line 97
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    move-object/from16 v6, p0

    move-object/from16 v8, v19

    move-object/from16 v7, v33

    goto/16 :goto_17

    .line 98
    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 99
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 101
    :goto_15
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 102
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/t0/q0/r/d$a;

    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/d$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 103
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/t0/q0/r/d$a;

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v3, v2, Ln3/y/b/a/t0/q0/r/d$a;->a:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, v2, Ln3/y/b/a/t0/q0/r/d$a;->b:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/d$a;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_16

    :cond_1e
    const/4 v2, 0x0

    :goto_16
    and-int/2addr v2, v15

    move v15, v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_20
    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v0, [Landroid/net/Uri;

    .line 108
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    new-array v3, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 109
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x0

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v6, v17

    move-wide/from16 v7, p2

    .line 111
    invoke-virtual/range {v0 .. v8}, Ln3/y/b/a/t0/q0/i;->p(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Ln3/y/b/a/t0/q0/n;

    move-result-object v0

    .line 112
    invoke-static {v11}, Ln3/y/b/a/x0/x;->E(Ljava/util/List;)[I

    move-result-object v1

    move-object/from16 v7, v33

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v19

    .line 113
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p0

    .line 114
    iget-boolean v1, v6, Ln3/y/b/a/t0/q0/i;->l:Z

    if-eqz v1, :cond_21

    if-eqz v15, :cond_21

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    .line 115
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/Format;

    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 116
    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v3, v4, v1

    new-array v2, v1, [I

    invoke-virtual {v0, v4, v1, v2}, Ln3/y/b/a/t0/q0/n;->C([Landroidx/media2/exoplayer/external/source/TrackGroup;I[I)V

    :cond_21
    :goto_17
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v33, v7

    move-object/from16 v19, v8

    move-object/from16 v34, v14

    goto/16 :goto_14

    :cond_22
    move-object/from16 v6, p0

    move-object/from16 v8, v19

    move-object/from16 v7, v33

    const/4 v9, 0x0

    .line 117
    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_23

    move-object/from16 v10, v16

    .line 118
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ln3/y/b/a/t0/q0/r/d$a;

    const/4 v1, 0x3

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/net/Uri;

    .line 119
    iget-object v3, v11, Ln3/y/b/a/t0/q0/r/d$a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v11, Ln3/y/b/a/t0/q0/r/d$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v0, v3, v4

    const/4 v4, 0x0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v12, v6

    move-object/from16 v6, v17

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, p2

    .line 121
    invoke-virtual/range {v0 .. v8}, Ln3/y/b/a/t0/q0/i;->p(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Ln3/y/b/a/t0/q0/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    .line 122
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 124
    new-instance v4, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v5, v1, [Landroidx/media2/exoplayer/external/Format;

    iget-object v1, v11, Ln3/y/b/a/t0/q0/r/d$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v1, v5, v3

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v4, v2, v3

    new-array v1, v3, [I

    invoke-virtual {v0, v2, v3, v1}, Ln3/y/b/a/t0/q0/n;->C([Landroidx/media2/exoplayer/external/source/TrackGroup;I[I)V

    add-int/lit8 v9, v9, 0x1

    move-object v6, v12

    move-object v8, v13

    move-object v7, v14

    goto :goto_18

    :cond_23
    move-object v12, v6

    move-object v14, v7

    move-object v13, v8

    const/4 v3, 0x0

    new-array v0, v3, [Ln3/y/b/a/t0/q0/n;

    .line 125
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/y/b/a/t0/q0/n;

    iput-object v0, v12, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    new-array v0, v3, [[I

    .line 126
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 127
    iget-object v0, v12, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    iput v1, v12, Ln3/y/b/a/t0/q0/i;->o:I

    .line 128
    aget-object v1, v0, v3

    .line 129
    iget-object v1, v1, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    const/4 v2, 0x1

    .line 130
    iput-boolean v2, v1, Ln3/y/b/a/t0/q0/d;->k:Z

    .line 131
    array-length v1, v0

    move v11, v3

    :goto_19
    if-ge v11, v1, :cond_25

    aget-object v2, v0, v11

    .line 132
    iget-boolean v3, v2, Ln3/y/b/a/t0/q0/n;->B:Z

    if-nez v3, :cond_24

    .line 133
    iget-wide v3, v2, Ln3/y/b/a/t0/q0/n;->R:J

    invoke-virtual {v2, v3, v4}, Ln3/y/b/a/t0/q0/n;->a(J)Z

    :cond_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 134
    :cond_25
    iget-object v0, v12, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    iput-object v0, v12, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    return-void
.end method

.method public final p(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Ln3/y/b/a/t0/q0/n;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;J)",
            "Ln3/y/b/a/t0/q0/n;"
        }
    .end annotation

    move-object v12, p0

    .line 1
    new-instance v9, Ln3/y/b/a/t0/q0/d;

    iget-object v1, v12, Ln3/y/b/a/t0/q0/i;->a:Ln3/y/b/a/t0/q0/f;

    iget-object v2, v12, Ln3/y/b/a/t0/q0/i;->b:Ln3/y/b/a/t0/q0/r/i;

    iget-object v5, v12, Ln3/y/b/a/t0/q0/i;->c:Ln3/y/b/a/t0/q0/e;

    iget-object v6, v12, Ln3/y/b/a/t0/q0/i;->d:Ln3/y/b/a/w0/e0;

    iget-object v7, v12, Ln3/y/b/a/t0/q0/i;->j:Ln3/y/b/a/t0/q0/p;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ln3/y/b/a/t0/q0/d;-><init>(Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/q0/r/i;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/e0;Ln3/y/b/a/t0/q0/p;Ljava/util/List;)V

    .line 2
    new-instance v13, Ln3/y/b/a/t0/q0/n;

    iget-object v5, v12, Ln3/y/b/a/t0/q0/i;->h:Ln3/y/b/a/w0/b;

    iget-object v10, v12, Ln3/y/b/a/t0/q0/i;->e:Ln3/y/b/a/p0/c;

    iget-object v11, v12, Ln3/y/b/a/t0/q0/i;->f:Ln3/y/b/a/w0/z;

    iget-object v14, v12, Ln3/y/b/a/t0/q0/i;->g:Ln3/y/b/a/t0/c0$a;

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, Ln3/y/b/a/t0/q0/n;-><init>(ILn3/y/b/a/t0/q0/n$a;Ln3/y/b/a/t0/q0/d;Ljava/util/Map;Ln3/y/b/a/w0/b;JLandroidx/media2/exoplayer/external/Format;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/c0$a;)V

    return-object v13
.end method

.method public r([Ln3/y/b/a/v0/e;[Z[Ln3/y/b/a/t0/j0;[ZJ)J
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 1
    array-length v3, v1

    new-array v14, v3, [I

    .line 2
    array-length v3, v1

    new-array v15, v3, [I

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    const/4 v10, -0x1

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    move v4, v10

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, v0, Ln3/y/b/a/t0/q0/i;->i:Ljava/util/IdentityHashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    aput v4, v14, v3

    .line 6
    aput v10, v15, v3

    .line 7
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, v1, v3

    invoke-interface {v4}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    :goto_2
    iget-object v6, v0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 10
    aget-object v6, v6, v5

    .line 11
    iget-object v6, v6, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 12
    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 13
    aput v5, v15, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, v0, Ln3/y/b/a/t0/q0/i;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 15
    array-length v8, v1

    new-array v9, v8, [Ln3/y/b/a/t0/j0;

    .line 16
    array-length v6, v1

    new-array v7, v6, [Ln3/y/b/a/t0/j0;

    .line 17
    array-length v4, v1

    new-array v5, v4, [Ln3/y/b/a/v0/e;

    .line 18
    iget-object v3, v0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v3, v3

    new-array v3, v3, [Ln3/y/b/a/t0/q0/n;

    move/from16 v16, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 19
    :goto_4
    iget-object v11, v0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v11, v11

    if-ge v8, v11, :cond_29

    const/4 v11, 0x0

    .line 20
    :goto_5
    array-length v10, v1

    move-object/from16 v21, v3

    if-ge v11, v10, :cond_6

    .line 21
    aget v10, v14, v11

    if-ne v10, v8, :cond_4

    aget-object v10, v2, v11

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    aput-object v10, v7, v11

    .line 22
    aget v10, v15, v11

    if-ne v10, v8, :cond_5

    aget-object v3, v1, v11

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    aput-object v3, v5, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v21

    goto :goto_5

    .line 23
    :cond_6
    iget-object v10, v0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    aget-object v11, v10, v8

    .line 24
    iget-boolean v10, v11, Ln3/y/b/a/t0/q0/n;->B:Z

    invoke-static {v10}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 25
    iget v10, v11, Ln3/y/b/a/t0/q0/n;->C:I

    move/from16 v23, v8

    const/4 v3, 0x0

    :goto_8
    const/4 v8, 0x1

    if-ge v3, v4, :cond_a

    .line 26
    aget-object v24, v7, v3

    if-eqz v24, :cond_9

    aget-object v24, v5, v3

    if-eqz v24, :cond_7

    aget-boolean v24, p2, v3

    if-nez v24, :cond_9

    :cond_7
    move/from16 v24, v6

    .line 27
    iget v6, v11, Ln3/y/b/a/t0/q0/n;->C:I

    sub-int/2addr v6, v8

    iput v6, v11, Ln3/y/b/a/t0/q0/n;->C:I

    .line 28
    aget-object v6, v7, v3

    check-cast v6, Ln3/y/b/a/t0/q0/j;

    .line 29
    iget v8, v6, Ln3/y/b/a/t0/q0/j;->c:I

    move-object/from16 v25, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 30
    iget-object v8, v6, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    iget v9, v6, Ln3/y/b/a/t0/q0/j;->a:I

    .line 31
    iget-object v2, v8, Ln3/y/b/a/t0/q0/n;->M:[I

    aget v2, v2, v9

    .line 32
    iget-object v9, v8, Ln3/y/b/a/t0/q0/n;->P:[Z

    aget-boolean v9, v9, v2

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 33
    iget-object v8, v8, Ln3/y/b/a/t0/q0/n;->P:[Z

    const/16 v19, 0x0

    aput-boolean v19, v8, v2

    const/4 v2, -0x1

    .line 34
    iput v2, v6, Ln3/y/b/a/t0/q0/j;->c:I

    goto :goto_9

    :cond_8
    const/16 v19, 0x0

    :goto_9
    const/4 v2, 0x0

    .line 35
    aput-object v2, v7, v3

    goto :goto_a

    :cond_9
    move/from16 v24, v6

    move-object/from16 v25, v9

    const/16 v19, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move/from16 v6, v24

    move-object/from16 v9, v25

    goto :goto_8

    :cond_a
    move/from16 v24, v6

    move-object/from16 v25, v9

    const/16 v19, 0x0

    if-nez v18, :cond_d

    .line 36
    iget-boolean v2, v11, Ln3/y/b/a/t0/q0/n;->U:Z

    if-eqz v2, :cond_b

    if-nez v10, :cond_c

    goto :goto_b

    :cond_b
    iget-wide v2, v11, Ln3/y/b/a/t0/q0/n;->R:J

    cmp-long v2, v12, v2

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v2, v19

    goto :goto_c

    :cond_d
    :goto_b
    move v2, v8

    .line 37
    :goto_c
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 38
    iget-object v3, v3, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    move-object v10, v3

    move/from16 v6, v19

    :goto_d
    if-ge v6, v4, :cond_13

    .line 39
    aget-object v9, v5, v6

    if-nez v9, :cond_e

    move/from16 v27, v4

    goto :goto_e

    .line 40
    :cond_e
    iget-object v8, v11, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move/from16 v27, v4

    invoke-interface {v9}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 41
    iget v8, v11, Ln3/y/b/a/t0/q0/n;->N:I

    if-ne v4, v8, :cond_f

    .line 42
    iget-object v8, v11, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 43
    iput-object v9, v8, Ln3/y/b/a/t0/q0/d;->p:Ln3/y/b/a/v0/e;

    move-object v10, v9

    .line 44
    :cond_f
    aget-object v8, v7, v6

    if-nez v8, :cond_12

    .line 45
    iget v8, v11, Ln3/y/b/a/t0/q0/n;->C:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v11, Ln3/y/b/a/t0/q0/n;->C:I

    .line 46
    new-instance v8, Ln3/y/b/a/t0/q0/j;

    invoke-direct {v8, v11, v4}, Ln3/y/b/a/t0/q0/j;-><init>(Ln3/y/b/a/t0/q0/n;I)V

    aput-object v8, v7, v6

    .line 47
    aput-boolean v9, p4, v6

    .line 48
    iget-object v8, v11, Ln3/y/b/a/t0/q0/n;->M:[I

    if-eqz v8, :cond_10

    .line 49
    aget-object v8, v7, v6

    check-cast v8, Ln3/y/b/a/t0/q0/j;

    invoke-virtual {v8}, Ln3/y/b/a/t0/q0/j;->e()V

    .line 50
    :cond_10
    iget-boolean v8, v11, Ln3/y/b/a/t0/q0/n;->A:Z

    if-eqz v8, :cond_12

    if-nez v2, :cond_12

    .line 51
    iget-object v2, v11, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    iget-object v8, v11, Ln3/y/b/a/t0/q0/n;->M:[I

    aget v4, v8, v4

    aget-object v2, v2, v4

    .line 52
    invoke-virtual {v2}, Ln3/y/b/a/t0/i0;->r()V

    const/4 v4, 0x1

    .line 53
    invoke-virtual {v2, v12, v13, v4, v4}, Ln3/y/b/a/t0/i0;->e(JZZ)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_11

    .line 54
    iget-object v2, v2, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 55
    iget v4, v2, Ln3/y/b/a/t0/h0;->j:I

    iget v2, v2, Ln3/y/b/a/t0/h0;->l:I

    add-int/2addr v4, v2

    if-eqz v4, :cond_11

    const/4 v2, 0x1

    goto :goto_f

    :cond_11
    move/from16 v2, v19

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v9, -0x1

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v27

    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    move/from16 v27, v4

    const/4 v9, -0x1

    .line 56
    iget v4, v11, Ln3/y/b/a/t0/q0/n;->C:I

    if-nez v4, :cond_16

    .line 57
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    const/4 v4, 0x0

    .line 58
    iput-object v4, v3, Ln3/y/b/a/t0/q0/d;->m:Ljava/io/IOException;

    .line 59
    iput-object v4, v11, Ln3/y/b/a/t0/q0/n;->E:Landroidx/media2/exoplayer/external/Format;

    const/4 v8, 0x1

    .line 60
    iput-boolean v8, v11, Ln3/y/b/a/t0/q0/n;->T:Z

    .line 61
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->h:Ln3/y/b/a/w0/a0;

    invoke-virtual {v3}, Ln3/y/b/a/w0/a0;->c()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 63
    iget-boolean v3, v11, Ln3/y/b/a/t0/q0/n;->A:Z

    if-eqz v3, :cond_14

    .line 64
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    array-length v4, v3

    move/from16 v6, v19

    :goto_10
    if-ge v6, v4, :cond_14

    aget-object v10, v3, v6

    .line 65
    invoke-virtual {v10}, Ln3/y/b/a/t0/i0;->i()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 66
    :cond_14
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->h:Ln3/y/b/a/w0/a0;

    invoke-virtual {v3}, Ln3/y/b/a/w0/a0;->a()V

    goto :goto_11

    .line 67
    :cond_15
    invoke-virtual {v11}, Ln3/y/b/a/t0/q0/n;->D()V

    :goto_11
    move v8, v2

    move-object/from16 v22, v5

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v32, v21

    move/from16 v36, v23

    move/from16 v2, v24

    move-object/from16 v35, v25

    move/from16 v21, v27

    move-object/from16 v24, v7

    move/from16 v23, v9

    goto/16 :goto_16

    :cond_16
    const/4 v8, 0x1

    .line 68
    iget-object v4, v11, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 69
    invoke-static {v10, v3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 70
    iget-boolean v3, v11, Ln3/y/b/a/t0/q0/n;->U:Z

    if-nez v3, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v6, v12, v3

    if-gez v6, :cond_17

    neg-long v3, v12

    :cond_17
    move-wide/from16 v28, v3

    .line 71
    invoke-virtual {v11}, Ln3/y/b/a/t0/q0/n;->w()Ln3/y/b/a/t0/q0/h;

    move-result-object v6

    .line 72
    iget-object v3, v11, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 73
    invoke-virtual {v3, v6, v12, v13}, Ln3/y/b/a/t0/q0/d;->a(Ln3/y/b/a/t0/q0/h;J)[Ln3/y/b/a/t0/p0/e;

    move-result-object v20

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iget-object v4, v11, Ln3/y/b/a/t0/q0/n;->l:Ljava/util/List;

    move-object/from16 v32, v21

    move-object v3, v10

    move-object/from16 v26, v4

    move-object/from16 v22, v5

    move/from16 v21, v27

    move-wide/from16 v4, p5

    move/from16 v27, v2

    move-object/from16 v33, v14

    move/from16 v2, v24

    move-object v14, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v28

    move v0, v8

    move/from16 v34, v16

    move/from16 v36, v23

    move-object/from16 v35, v25

    move/from16 v16, v9

    move-wide/from16 v8, v30

    move/from16 v23, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v26

    move-object v0, v11

    move-object/from16 v11, v20

    invoke-interface/range {v3 .. v11}, Ln3/y/b/a/v0/e;->l(JJJLjava/util/List;[Ln3/y/b/a/t0/p0/e;)V

    .line 75
    iget-object v3, v0, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 76
    iget-object v3, v3, Ln3/y/b/a/t0/q0/d;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 77
    iget-object v4, v14, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v3

    .line 78
    invoke-interface/range {v16 .. v16}, Ln3/y/b/a/v0/e;->k()I

    move-result v4

    if-eq v4, v3, :cond_18

    goto :goto_12

    :cond_18
    const/4 v11, 0x0

    goto :goto_13

    :cond_19
    move-object/from16 v22, v5

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v32, v21

    move/from16 v36, v23

    move-object/from16 v35, v25

    move/from16 v21, v27

    move/from16 v27, v2

    move/from16 v23, v9

    move/from16 v2, v24

    move-object/from16 v24, v7

    :goto_12
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_1b

    const/4 v3, 0x1

    .line 79
    iput-boolean v3, v0, Ln3/y/b/a/t0/q0/n;->T:Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v22, v5

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v32, v21

    move/from16 v36, v23

    move-object/from16 v35, v25

    move/from16 v21, v27

    move/from16 v27, v2

    move/from16 v23, v9

    move/from16 v2, v24

    move-object/from16 v24, v7

    :cond_1b
    move/from16 v3, v18

    move/from16 v8, v27

    :goto_14
    if-eqz v8, :cond_1d

    .line 80
    invoke-virtual {v0, v12, v13, v3}, Ln3/y/b/a/t0/q0/n;->E(JZ)Z

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v2, :cond_1d

    .line 81
    aget-object v3, v24, v11

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 82
    aput-boolean v3, p4, v11

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 83
    :cond_1d
    :goto_16
    iget-object v3, v0, Ln3/y/b/a/t0/q0/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v2, :cond_1f

    .line 84
    aget-object v3, v24, v11

    if-eqz v3, :cond_1e

    .line 85
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->p:Ljava/util/ArrayList;

    check-cast v3, Ln3/y/b/a/t0/q0/j;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1f
    const/4 v3, 0x1

    .line 86
    iput-boolean v3, v0, Ln3/y/b/a/t0/q0/n;->U:Z

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 87
    :goto_18
    array-length v5, v1

    if-ge v11, v5, :cond_24

    .line 88
    aget v5, v15, v11

    move/from16 v6, v36

    if-ne v5, v6, :cond_21

    .line 89
    aget-object v4, v24, v11

    if-eqz v4, :cond_20

    move v4, v3

    goto :goto_19

    :cond_20
    const/4 v4, 0x0

    :goto_19
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 90
    aget-object v4, v24, v11

    move-object/from16 v5, v35

    aput-object v4, v5, v11

    move v7, v3

    move-object/from16 v3, p0

    .line 91
    iget-object v4, v3, Ln3/y/b/a/t0/q0/i;->i:Ljava/util/IdentityHashMap;

    aget-object v9, v24, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    goto :goto_1b

    :cond_21
    move v7, v3

    move-object/from16 v5, v35

    move-object/from16 v3, p0

    .line 92
    aget v9, v33, v11

    if-ne v9, v6, :cond_23

    .line 93
    aget-object v9, v24, v11

    if-nez v9, :cond_22

    move v9, v7

    goto :goto_1a

    :cond_22
    const/4 v9, 0x0

    :goto_1a
    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    :cond_23
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v35, v5

    move/from16 v36, v6

    move v3, v7

    goto :goto_18

    :cond_24
    move v7, v3

    move-object/from16 v5, v35

    move/from16 v6, v36

    move-object/from16 v3, p0

    if-eqz v4, :cond_27

    move/from16 v11, v17

    move-object/from16 v4, v32

    .line 94
    aput-object v0, v4, v11

    add-int/lit8 v17, v11, 0x1

    if-nez v11, :cond_26

    .line 95
    iget-object v9, v0, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 96
    iput-boolean v7, v9, Ln3/y/b/a/t0/q0/d;->k:Z

    if-nez v8, :cond_25

    .line 97
    iget-object v8, v3, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    array-length v9, v8

    if-eqz v9, :cond_25

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eq v0, v8, :cond_28

    goto :goto_1c

    :cond_25
    const/4 v9, 0x0

    .line 98
    :goto_1c
    iget-object v0, v3, Ln3/y/b/a/t0/q0/i;->j:Ln3/y/b/a/t0/q0/p;

    .line 99
    iget-object v0, v0, Ln3/y/b/a/t0/q0/p;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move/from16 v18, v7

    goto :goto_1d

    :cond_26
    const/4 v9, 0x0

    .line 100
    iget-object v0, v0, Ln3/y/b/a/t0/q0/n;->c:Ln3/y/b/a/t0/q0/d;

    .line 101
    iput-boolean v9, v0, Ln3/y/b/a/t0/q0/d;->k:Z

    goto :goto_1d

    :cond_27
    move/from16 v11, v17

    move-object/from16 v4, v32

    const/4 v9, 0x0

    :cond_28
    :goto_1d
    add-int/lit8 v8, v6, 0x1

    move v6, v2

    move-object v0, v3

    move-object v3, v4

    move-object v9, v5

    move/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v14, v33

    move/from16 v16, v34

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_29
    move-object v4, v3

    move-object v5, v9

    move/from16 v6, v16

    move/from16 v11, v17

    const/4 v9, 0x0

    move-object v3, v0

    move-object v0, v2

    .line 102
    invoke-static {v5, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/y/b/a/t0/q0/n;

    iput-object v0, v3, Ln3/y/b/a/t0/q0/i;->r:[Ln3/y/b/a/t0/q0/n;

    .line 104
    iget-object v1, v3, Ln3/y/b/a/t0/q0/i;->k:Ln3/y/b/a/t0/l;

    .line 105
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ln3/y/b/a/t0/h;

    invoke-direct {v1, v0}, Ln3/y/b/a/t0/h;-><init>([Ln3/y/b/a/t0/k0;)V

    .line 107
    iput-object v1, v3, Ln3/y/b/a/t0/q0/i;->s:Ln3/y/b/a/t0/k0;

    return-wide v12
.end method

.method public s()V
    .locals 11

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/i;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln3/y/b/a/t0/q0/i;->o:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    iget-object v5, v5, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 4
    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 6
    iget-object v1, p0, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 7
    iget-object v7, v6, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 8
    iget v7, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 9
    iget-object v10, v6, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 10
    iget-object v10, v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v10, v10, v8

    .line 11
    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v1, p0, Ln3/y/b/a/t0/q0/i;->p:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 13
    iget-object v0, p0, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    invoke-interface {v0, p0}, Ln3/y/b/a/t0/s$a;->i(Ln3/y/b/a/t0/s;)V

    return-void
.end method
