.class public final Ln3/y/b/a/t0/q0/h;
.super Ln3/y/b/a/t0/p0/d;
.source "SourceFile"


# static fields
.field public static final H:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Ln3/y/b/a/q0/g;

.field public B:Z

.field public C:Ln3/y/b/a/t0/q0/n;

.field public D:I

.field public E:Z

.field public volatile F:Z

.field public G:Z

.field public final j:I

.field public final k:I

.field public final l:Landroid/net/Uri;

.field public final m:Ln3/y/b/a/w0/h;

.field public final n:Ln3/y/b/a/w0/k;

.field public final o:Z

.field public final p:Z

.field public final q:Ln3/y/b/a/x0/v;

.field public final r:Z

.field public final s:Ln3/y/b/a/t0/q0/f;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final v:Ln3/y/b/a/q0/g;

.field public final w:Ln3/y/b/a/s0/g/a;

.field public final x:Ln3/y/b/a/x0/m;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ln3/y/b/a/t0/q0/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Landroidx/media2/exoplayer/external/Format;ZLn3/y/b/a/w0/h;Ln3/y/b/a/w0/k;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLn3/y/b/a/x0/v;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ln3/y/b/a/q0/g;Ln3/y/b/a/s0/g/a;Ln3/y/b/a/x0/m;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/t0/q0/f;",
            "Ln3/y/b/a/w0/h;",
            "Ln3/y/b/a/w0/k;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z",
            "Ln3/y/b/a/w0/h;",
            "Ln3/y/b/a/w0/k;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Ln3/y/b/a/x0/v;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ln3/y/b/a/q0/g;",
            "Ln3/y/b/a/s0/g/a;",
            "Ln3/y/b/a/x0/m;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Ln3/y/b/a/t0/p0/d;-><init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->y:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Ln3/y/b/a/t0/q0/h;->k:I

    move-object/from16 v0, p6

    .line 4
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->m:Ln3/y/b/a/w0/h;

    .line 5
    iput-object v13, v12, Ln3/y/b/a/t0/q0/h;->n:Ln3/y/b/a/w0/k;

    move/from16 v0, p8

    .line 6
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->z:Z

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->l:Landroid/net/Uri;

    move/from16 v0, p21

    .line 8
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->o:Z

    move-object/from16 v0, p22

    .line 9
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->q:Ln3/y/b/a/x0/v;

    move/from16 v0, p20

    .line 10
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->p:Z

    move-object v0, p1

    .line 11
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->s:Ln3/y/b/a/t0/q0/f;

    move-object/from16 v0, p10

    .line 12
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->t:Ljava/util/List;

    move-object/from16 v0, p23

    .line 13
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v0, p24

    .line 14
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->v:Ln3/y/b/a/q0/g;

    move-object/from16 v0, p25

    .line 15
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->w:Ln3/y/b/a/s0/g/a;

    move-object/from16 v0, p26

    .line 16
    iput-object v0, v12, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    move/from16 v0, p27

    .line 17
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->r:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-boolean v0, v12, Ln3/y/b/a/t0/q0/h;->E:Z

    .line 19
    sget-object v0, Ln3/y/b/a/t0/q0/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Ln3/y/b/a/t0/q0/h;->j:I

    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/y/b/a/x0/x;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 4
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->v:Ln3/y/b/a/q0/g;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    .line 3
    iput-boolean v2, p0, Ln3/y/b/a/t0/q0/h;->B:Z

    .line 4
    iput-boolean v1, p0, Ln3/y/b/a/t0/q0/h;->E:Z

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->C:Ln3/y/b/a/t0/q0/n;

    iget v3, p0, Ln3/y/b/a/t0/q0/h;->j:I

    iget-boolean v4, p0, Ln3/y/b/a/t0/q0/h;->r:Z

    invoke-virtual {v0, v3, v4, v2}, Ln3/y/b/a/t0/q0/n;->y(IZZ)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/h;->E:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->m:Ln3/y/b/a/w0/h;

    iget-object v3, p0, Ln3/y/b/a/t0/q0/h;->n:Ln3/y/b/a/w0/k;

    iget-boolean v4, p0, Ln3/y/b/a/t0/q0/h;->z:Z

    invoke-virtual {p0, v0, v3, v4}, Ln3/y/b/a/t0/q0/h;->c(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V

    .line 8
    iput v1, p0, Ln3/y/b/a/t0/q0/h;->D:I

    .line 9
    iput-boolean v1, p0, Ln3/y/b/a/t0/q0/h;->E:Z

    .line 10
    :goto_0
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/h;->F:Z

    if-nez v0, :cond_6

    .line 11
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/h;->p:Z

    if-nez v0, :cond_5

    .line 12
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/h;->o:Z

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->q:Ln3/y/b/a/x0/v;

    .line 14
    monitor-enter v0

    .line 15
    :goto_1
    :try_start_0
    iget-wide v3, v0, Ln3/y/b/a/x0/v;->c:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 18
    :cond_3
    iget-object v0, p0, Ln3/y/b/a/t0/q0/h;->q:Ln3/y/b/a/x0/v;

    .line 19
    iget-wide v3, v0, Ln3/y/b/a/x0/v;->a:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 20
    iget-wide v3, p0, Ln3/y/b/a/t0/p0/b;->f:J

    invoke-virtual {v0, v3, v4}, Ln3/y/b/a/x0/v;->d(J)V

    .line 21
    :cond_4
    :goto_2
    iget-object v0, p0, Ln3/y/b/a/t0/p0/b;->h:Ln3/y/b/a/w0/d0;

    iget-object v1, p0, Ln3/y/b/a/t0/p0/b;->a:Ln3/y/b/a/w0/k;

    iget-boolean v3, p0, Ln3/y/b/a/t0/q0/h;->y:Z

    invoke-virtual {p0, v0, v1, v3}, Ln3/y/b/a/t0/q0/h;->c(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V

    .line 22
    :cond_5
    iput-boolean v2, p0, Ln3/y/b/a/t0/q0/h;->G:Z

    :cond_6
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/q0/h;->F:Z

    return-void
.end method

.method public final c(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget v4, v1, Ln3/y/b/a/t0/q0/h;->D:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    move-object v6, v3

    goto :goto_3

    .line 2
    :cond_1
    iget v4, v1, Ln3/y/b/a/t0/q0/h;->D:I

    int-to-long v4, v4

    .line 3
    iget-wide v6, v3, Ln3/y/b/a/w0/k;->g:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    sub-long v8, v6, v4

    :goto_1
    move-wide/from16 v18, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    cmp-long v6, v6, v18

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_2

    .line 4
    :cond_3
    new-instance v6, Ln3/y/b/a/w0/k;

    iget-object v11, v3, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    iget v12, v3, Ln3/y/b/a/w0/k;->b:I

    iget-object v13, v3, Ln3/y/b/a/w0/k;->c:[B

    iget-wide v7, v3, Ln3/y/b/a/w0/k;->e:J

    add-long v14, v7, v4

    iget-wide v7, v3, Ln3/y/b/a/w0/k;->f:J

    add-long v16, v7, v4

    iget-object v4, v3, Ln3/y/b/a/w0/k;->h:Ljava/lang/String;

    iget v5, v3, Ln3/y/b/a/w0/k;->i:I

    iget-object v7, v3, Ln3/y/b/a/w0/k;->d:Ljava/util/Map;

    move-object v10, v6

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v7

    invoke-direct/range {v10 .. v22}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    :goto_2
    move v4, v0

    .line 5
    :goto_3
    :try_start_0
    invoke-virtual {v1, v2, v6}, Ln3/y/b/a/t0/q0/h;->e(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;)Ln3/y/b/a/q0/d;

    move-result-object v5

    if-eqz v4, :cond_4

    .line 6
    iget v4, v1, Ln3/y/b/a/t0/q0/h;->D:I

    invoke-virtual {v5, v4}, Ln3/y/b/a/q0/d;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :goto_4
    if-nez v0, :cond_5

    .line 7
    :try_start_1
    iget-boolean v0, v1, Ln3/y/b/a/t0/q0/h;->F:Z

    if-nez v0, :cond_5

    .line 8
    iget-object v0, v1, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    const/4 v4, 0x0

    invoke-interface {v0, v5, v4}, Ln3/y/b/a/q0/g;->i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    iget-wide v4, v5, Ln3/y/b/a/q0/d;->d:J

    .line 10
    iget-wide v6, v3, Ln3/y/b/a/w0/k;->e:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v1, Ln3/y/b/a/t0/q0/h;->D:I

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 11
    :cond_5
    iget-wide v4, v5, Ln3/y/b/a/q0/d;->d:J

    .line 12
    iget-wide v6, v3, Ln3/y/b/a/w0/k;->e:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, v1, Ln3/y/b/a/t0/q0/h;->D:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 14
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ln3/y/b/a/w0/h;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    .line 15
    :goto_5
    sget v3, Ln3/y/b/a/x0/x;->a:I

    if-eqz v2, :cond_6

    .line 16
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ln3/y/b/a/w0/h;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 17
    :catch_1
    :cond_6
    throw v0
.end method

.method public final e(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;)Ln3/y/b/a/q0/d;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p2}, Ln3/y/b/a/w0/h;->b(Ln3/y/b/a/w0/k;)J

    move-result-wide v6

    .line 2
    new-instance v8, Ln3/y/b/a/q0/d;

    iget-wide v4, v1, Ln3/y/b/a/w0/k;->e:J

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Ln3/y/b/a/q0/d;-><init>(Ln3/y/b/a/w0/h;JJ)V

    .line 3
    iget-object v2, v0, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 4
    iput v2, v8, Ln3/y/b/a/q0/d;->f:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    :try_start_0
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    const/16 v6, 0xa

    .line 6
    invoke-virtual {v8, v5, v2, v6, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    invoke-virtual {v5, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 8
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->q()I

    move-result v5

    const v7, 0x494433

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ln3/y/b/a/x0/m;->A(I)V

    .line 10
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->n()I

    move-result v5

    add-int/lit8 v7, v5, 0xa

    .line 11
    iget-object v9, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    .line 12
    iget-object v10, v9, Ln3/y/b/a/x0/m;->a:[B

    array-length v11, v10

    if-le v7, v11, :cond_1

    .line 13
    invoke-virtual {v9, v7}, Ln3/y/b/a/x0/m;->v(I)V

    .line 14
    iget-object v7, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    iget-object v7, v7, Ln3/y/b/a/x0/m;->a:[B

    invoke-static {v10, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_1
    iget-object v7, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    iget-object v7, v7, Ln3/y/b/a/x0/m;->a:[B

    .line 16
    invoke-virtual {v8, v7, v6, v5, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 17
    iget-object v6, v0, Ln3/y/b/a/t0/q0/h;->w:Ln3/y/b/a/s0/g/a;

    iget-object v7, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    iget-object v7, v7, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v6, v7, v5}, Ln3/y/b/a/s0/g/a;->c([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iget-object v6, v5, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v6, v6

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_4

    .line 19
    iget-object v9, v5, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v9, v9, v7

    .line 20
    instance-of v10, v9, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v10, :cond_3

    .line 21
    check-cast v9, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 22
    iget-object v10, v9, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v11, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 23
    iget-object v5, v9, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->c:[B

    iget-object v6, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    iget-object v6, v6, Ln3/y/b/a/x0/m;->a:[B

    const/16 v7, 0x8

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    invoke-virtual {v5, v7}, Ln3/y/b/a/x0/m;->v(I)V

    .line 25
    iget-object v5, v0, Ln3/y/b/a/t0/q0/h;->x:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v5

    const-wide v9, 0x1ffffffffL

    and-long/2addr v5, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    move-wide v5, v3

    .line 26
    :goto_2
    iput v2, v8, Ln3/y/b/a/q0/d;->f:I

    .line 27
    iget-object v7, v0, Ln3/y/b/a/t0/q0/h;->s:Ln3/y/b/a/t0/q0/f;

    iget-object v9, v0, Ln3/y/b/a/t0/q0/h;->v:Ln3/y/b/a/q0/g;

    iget-object v1, v1, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    iget-object v10, v0, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v0, Ln3/y/b/a/t0/q0/h;->t:Ljava/util/List;

    iget-object v12, v0, Ln3/y/b/a/t0/q0/h;->u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v13, v0, Ln3/y/b/a/t0/q0/h;->q:Ln3/y/b/a/x0/v;

    .line 28
    invoke-interface/range {p1 .. p1}, Ln3/y/b/a/w0/h;->a()Ljava/util/Map;

    .line 29
    check-cast v7, Ln3/y/b/a/t0/q0/c;

    .line 30
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    if-eqz v9, :cond_e

    .line 31
    instance-of v14, v9, Ln3/y/b/a/q0/w/b0;

    if-nez v14, :cond_6

    instance-of v14, v9, Ln3/y/b/a/q0/u/d;

    if-eqz v14, :cond_5

    goto :goto_3

    :cond_5
    move v14, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v14, v7

    :goto_4
    if-eqz v14, :cond_7

    .line 32
    invoke-static {v9}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto/16 :goto_b

    .line 33
    :cond_7
    instance-of v14, v9, Ln3/y/b/a/t0/q0/q;

    if-eqz v14, :cond_8

    .line 34
    new-instance v14, Ln3/y/b/a/t0/q0/q;

    iget-object v15, v10, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-direct {v14, v15, v13}, Ln3/y/b/a/t0/q0/q;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/v;)V

    invoke-static {v14}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v14

    goto :goto_5

    .line 35
    :cond_8
    instance-of v14, v9, Ln3/y/b/a/q0/w/e;

    if-eqz v14, :cond_9

    .line 36
    new-instance v14, Ln3/y/b/a/q0/w/e;

    .line 37
    invoke-direct {v14, v2}, Ln3/y/b/a/q0/w/e;-><init>(I)V

    .line 38
    invoke-static {v14}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v14

    goto :goto_5

    .line 39
    :cond_9
    instance-of v14, v9, Ln3/y/b/a/q0/w/a;

    if-eqz v14, :cond_a

    .line 40
    new-instance v14, Ln3/y/b/a/q0/w/a;

    invoke-direct {v14}, Ln3/y/b/a/q0/w/a;-><init>()V

    invoke-static {v14}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v14

    goto :goto_5

    .line 41
    :cond_a
    instance-of v14, v9, Ln3/y/b/a/q0/w/c;

    if-eqz v14, :cond_b

    .line 42
    new-instance v14, Ln3/y/b/a/q0/w/c;

    invoke-direct {v14}, Ln3/y/b/a/q0/w/c;-><init>()V

    invoke-static {v14}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v14

    goto :goto_5

    .line 43
    :cond_b
    instance-of v14, v9, Ln3/y/b/a/q0/t/c;

    if-eqz v14, :cond_c

    .line 44
    new-instance v14, Ln3/y/b/a/q0/t/c;

    .line 45
    invoke-direct {v14, v2, v3, v4}, Ln3/y/b/a/q0/t/c;-><init>(IJ)V

    .line 46
    invoke-static {v14}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v14

    goto :goto_5

    :cond_c
    const/4 v14, 0x0

    :goto_5
    if-nez v14, :cond_e

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected previousExtractor type: "

    .line 48
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_6
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_e
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v1, ""

    .line 50
    :cond_f
    iget-object v9, v10, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v14, "text/vtt"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v14, 0x0

    if-nez v9, :cond_18

    const-string v9, ".webvtt"

    .line 51
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, ".vtt"

    .line 52
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto/16 :goto_9

    :cond_10
    const-string v9, ".aac"

    .line 53
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 54
    new-instance v1, Ln3/y/b/a/q0/w/e;

    .line 55
    invoke-direct {v1, v2}, Ln3/y/b/a/q0/w/e;-><init>(I)V

    goto/16 :goto_a

    :cond_11
    const-string v9, ".ac3"

    .line 56
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, ".ec3"

    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    const-string v9, ".ac4"

    .line 58
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 59
    new-instance v1, Ln3/y/b/a/q0/w/c;

    invoke-direct {v1}, Ln3/y/b/a/q0/w/c;-><init>()V

    goto :goto_a

    :cond_13
    const-string v9, ".mp3"

    .line 60
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 61
    new-instance v1, Ln3/y/b/a/q0/t/c;

    invoke-direct {v1, v2, v14, v15}, Ln3/y/b/a/q0/t/c;-><init>(IJ)V

    goto :goto_a

    :cond_14
    const-string v9, ".mp4"

    .line 62
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_16

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v3, v16, -0x4

    const-string v4, ".m4"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    const-string v4, ".cmf"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_7

    .line 66
    :cond_15
    invoke-static {v2, v7, v10, v11, v13}, Ln3/y/b/a/t0/q0/c;->c(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Ln3/y/b/a/x0/v;)Ln3/y/b/a/q0/w/b0;

    move-result-object v1

    goto :goto_a

    .line 67
    :cond_16
    :goto_7
    invoke-static {v13, v12, v11}, Ln3/y/b/a/t0/q0/c;->b(Ln3/y/b/a/x0/v;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Ln3/y/b/a/q0/u/d;

    move-result-object v1

    goto :goto_a

    .line 68
    :cond_17
    :goto_8
    new-instance v1, Ln3/y/b/a/q0/w/a;

    invoke-direct {v1}, Ln3/y/b/a/q0/w/a;-><init>()V

    goto :goto_a

    .line 69
    :cond_18
    :goto_9
    new-instance v1, Ln3/y/b/a/t0/q0/q;

    iget-object v3, v10, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-direct {v1, v3, v13}, Ln3/y/b/a/t0/q0/q;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/v;)V

    .line 70
    :goto_a
    iput v2, v8, Ln3/y/b/a/q0/d;->f:I

    .line 71
    invoke-static {v1, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 72
    invoke-static {v1}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto/16 :goto_b

    .line 73
    :cond_19
    instance-of v3, v1, Ln3/y/b/a/t0/q0/q;

    if-nez v3, :cond_1a

    .line 74
    new-instance v3, Ln3/y/b/a/t0/q0/q;

    iget-object v4, v10, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Ln3/y/b/a/t0/q0/q;-><init>(Ljava/lang/String;Ln3/y/b/a/x0/v;)V

    .line 75
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 76
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto/16 :goto_b

    .line 77
    :cond_1a
    instance-of v3, v1, Ln3/y/b/a/q0/w/e;

    if-nez v3, :cond_1b

    .line 78
    new-instance v3, Ln3/y/b/a/q0/w/e;

    .line 79
    invoke-direct {v3, v2}, Ln3/y/b/a/q0/w/e;-><init>(I)V

    .line 80
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 81
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 82
    :cond_1b
    instance-of v3, v1, Ln3/y/b/a/q0/w/a;

    if-nez v3, :cond_1c

    .line 83
    new-instance v3, Ln3/y/b/a/q0/w/a;

    invoke-direct {v3}, Ln3/y/b/a/q0/w/a;-><init>()V

    .line 84
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 85
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 86
    :cond_1c
    instance-of v3, v1, Ln3/y/b/a/q0/w/c;

    if-nez v3, :cond_1d

    .line 87
    new-instance v3, Ln3/y/b/a/q0/w/c;

    invoke-direct {v3}, Ln3/y/b/a/q0/w/c;-><init>()V

    .line 88
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 89
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 90
    :cond_1d
    instance-of v3, v1, Ln3/y/b/a/q0/t/c;

    if-nez v3, :cond_1e

    .line 91
    new-instance v3, Ln3/y/b/a/q0/t/c;

    invoke-direct {v3, v2, v14, v15}, Ln3/y/b/a/q0/t/c;-><init>(IJ)V

    .line 92
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 93
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 94
    :cond_1e
    instance-of v3, v1, Ln3/y/b/a/q0/u/d;

    if-nez v3, :cond_1f

    .line 95
    invoke-static {v13, v12, v11}, Ln3/y/b/a/t0/q0/c;->b(Ln3/y/b/a/x0/v;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Ln3/y/b/a/q0/u/d;

    move-result-object v3

    .line 96
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 97
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 98
    :cond_1f
    instance-of v3, v1, Ln3/y/b/a/q0/w/b0;

    if-nez v3, :cond_20

    .line 99
    invoke-static {v2, v7, v10, v11, v13}, Ln3/y/b/a/t0/q0/c;->c(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Ln3/y/b/a/x0/v;)Ln3/y/b/a/q0/w/b0;

    move-result-object v3

    .line 100
    invoke-static {v3, v8}, Ln3/y/b/a/t0/q0/c;->d(Ln3/y/b/a/q0/g;Ln3/y/b/a/q0/d;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 101
    invoke-static {v3}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    goto :goto_b

    .line 102
    :cond_20
    invoke-static {v1}, Ln3/y/b/a/t0/q0/c;->a(Ln3/y/b/a/q0/g;)Ln3/y/b/a/t0/q0/f$a;

    move-result-object v1

    .line 103
    :goto_b
    iget-object v3, v1, Ln3/y/b/a/t0/q0/f$a;->a:Ln3/y/b/a/q0/g;

    iput-object v3, v0, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    .line 104
    iget-boolean v3, v1, Ln3/y/b/a/t0/q0/f$a;->c:Z

    iput-boolean v3, v0, Ln3/y/b/a/t0/q0/h;->B:Z

    .line 105
    iget-boolean v1, v1, Ln3/y/b/a/t0/q0/f$a;->b:Z

    if-eqz v1, :cond_23

    .line 106
    iget-object v1, v0, Ln3/y/b/a/t0/q0/h;->C:Ln3/y/b/a/t0/q0/n;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v3

    if-eqz v3, :cond_21

    .line 107
    iget-object v3, v0, Ln3/y/b/a/t0/q0/h;->q:Ln3/y/b/a/x0/v;

    invoke-virtual {v3, v5, v6}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v3

    goto :goto_c

    .line 108
    :cond_21
    iget-wide v3, v0, Ln3/y/b/a/t0/p0/b;->f:J

    .line 109
    :goto_c
    iput-wide v3, v1, Ln3/y/b/a/t0/q0/n;->X:J

    .line 110
    iget-object v1, v1, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    array-length v5, v1

    move v6, v2

    :goto_d
    if-ge v6, v5, :cond_23

    aget-object v9, v1, v6

    .line 111
    iget-wide v10, v9, Ln3/y/b/a/t0/i0;->l:J

    cmp-long v10, v10, v3

    if-eqz v10, :cond_22

    .line 112
    iput-wide v3, v9, Ln3/y/b/a/t0/i0;->l:J

    .line 113
    iput-boolean v7, v9, Ln3/y/b/a/t0/i0;->j:Z

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 114
    :cond_23
    iget-object v1, v0, Ln3/y/b/a/t0/q0/h;->C:Ln3/y/b/a/t0/q0/n;

    iget v3, v0, Ln3/y/b/a/t0/q0/h;->j:I

    iget-boolean v4, v0, Ln3/y/b/a/t0/q0/h;->r:Z

    invoke-virtual {v1, v3, v4, v2}, Ln3/y/b/a/t0/q0/n;->y(IZZ)V

    .line 115
    iget-object v1, v0, Ln3/y/b/a/t0/q0/h;->A:Ln3/y/b/a/q0/g;

    iget-object v2, v0, Ln3/y/b/a/t0/q0/h;->C:Ln3/y/b/a/t0/q0/n;

    invoke-interface {v1, v2}, Ln3/y/b/a/q0/g;->d(Ln3/y/b/a/q0/h;)V

    :cond_24
    return-object v8
.end method
