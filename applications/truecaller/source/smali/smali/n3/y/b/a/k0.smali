.class public Ln3/y/b/a/k0;
.super Ln3/y/b/a/a;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/k0$c;,
        Ln3/y/b/a/k0$b;
    }
.end annotation


# instance fields
.field public final b:[Ln3/y/b/a/h0;

.field public final c:Ln3/y/b/a/t;

.field public final d:Landroid/os/Handler;

.field public final e:Ln3/y/b/a/k0$c;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/y0/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/n0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/s0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/y0/o;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/n0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ln3/y/b/a/w0/d;

.field public final l:Ln3/y/b/a/m0/a;

.field public final m:Ln3/y/b/a/n0/e;

.field public n:Landroid/view/Surface;

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Ln3/y/b/a/n0/c;

.field public t:F

.field public u:Ln3/y/b/a/t0/t;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/c/a1;Ln3/y/b/a/v0/g;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;Ln3/y/b/a/m0/a;Ln3/y/b/a/x0/a;Landroid/os/Looper;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    sget-object v7, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    .line 2
    invoke-direct/range {p0 .. p0}, Ln3/y/b/a/a;-><init>()V

    .line 3
    iput-object v8, v0, Ln3/y/b/a/k0;->k:Ln3/y/b/a/w0/d;

    .line 4
    iput-object v9, v0, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    .line 5
    new-instance v6, Ln3/y/b/a/k0$c;

    const/4 v5, 0x0

    invoke-direct {v6, v0, v5}, Ln3/y/b/a/k0$c;-><init>(Ln3/y/b/a/k0;Ln3/y/b/a/k0$a;)V

    iput-object v6, v0, Ln3/y/b/a/k0;->e:Ln3/y/b/a/k0$c;

    .line 6
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v0, Ln3/y/b/a/k0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v0, Ln3/y/b/a/k0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v0, Ln3/y/b/a/k0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v15, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v15}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v15, v0, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v13, v0, Ln3/y/b/a/k0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    new-instance v14, Landroid/os/Handler;

    move-object/from16 v12, p8

    invoke-direct {v14, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v14, v0, Ln3/y/b/a/k0;->d:Landroid/os/Handler;

    .line 13
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x4

    new-array v11, v10, [Ln3/y/b/a/h0;

    .line 14
    new-instance v20, Ln3/y/b/a/y0/d;

    iget-object v10, v1, Ln3/y/c/a1;->a:Landroid/content/Context;

    sget-object v21, Ln3/y/b/a/r0/c;->a:Ln3/y/b/a/r0/c;

    const-wide/16 v16, 0x1388

    const/16 v22, 0x0

    const/16 v19, 0x32

    const/16 v18, 0x0

    move-object/from16 v23, v10

    move-object/from16 v10, v20

    move-object v5, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v21

    move-object v8, v13

    move-object/from16 v23, v14

    move-wide/from16 v13, v16

    move-object/from16 v24, v15

    move-object v15, v7

    move/from16 v16, v18

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v10 .. v19}, Ln3/y/b/a/y0/d;-><init>(Landroid/content/Context;Ln3/y/b/a/r0/c;JLn3/y/b/a/p0/c;ZLandroid/os/Handler;Ln3/y/b/a/y0/o;I)V

    const/4 v15, 0x0

    aput-object v20, v5, v15

    new-instance v18, Ln3/y/b/a/n0/x;

    iget-object v11, v1, Ln3/y/c/a1;->a:Landroid/content/Context;

    iget-object v14, v1, Ln3/y/c/a1;->b:Ln3/y/b/a/n0/o;

    move-object/from16 v10, v18

    move-object v13, v7

    move-object/from16 v17, v14

    move/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v17}, Ln3/y/b/a/n0/x;-><init>(Landroid/content/Context;Ln3/y/b/a/r0/c;Ln3/y/b/a/p0/c;ZLandroid/os/Handler;Ln3/y/b/a/n0/n;Ln3/y/b/a/n0/o;)V

    const/4 v15, 0x1

    aput-object v18, v5, v15

    iget-object v1, v1, Ln3/y/c/a1;->c:Ln3/y/c/b1;

    const/4 v10, 0x2

    aput-object v1, v5, v10

    new-instance v1, Ln3/y/b/a/s0/e;

    .line 15
    invoke-virtual/range {v23 .. v23}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    new-instance v11, Ln3/y/c/k0;

    invoke-direct {v11}, Ln3/y/c/k0;-><init>()V

    invoke-direct {v1, v6, v10, v11}, Ln3/y/b/a/s0/e;-><init>(Ln3/y/b/a/s0/d;Landroid/os/Looper;Ln3/y/b/a/s0/b;)V

    const/4 v10, 0x3

    aput-object v1, v5, v10

    .line 16
    iput-object v5, v0, Ln3/y/b/a/k0;->b:[Ln3/y/b/a/h0;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, v0, Ln3/y/b/a/k0;->t:F

    const/4 v10, 0x0

    .line 18
    iput v10, v0, Ln3/y/b/a/k0;->r:I

    .line 19
    sget-object v1, Ln3/y/b/a/n0/c;->e:Ln3/y/b/a/n0/c;

    iput-object v1, v0, Ln3/y/b/a/k0;->s:Ln3/y/b/a/n0/c;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/k0;->v:Ljava/util/List;

    .line 21
    new-instance v11, Ln3/y/b/a/t;

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v13, v3

    move-object/from16 v3, p3

    move-object v14, v4

    move-object/from16 v4, p4

    const/16 v16, 0x0

    move-object/from16 v5, p5

    move-object v10, v6

    move-object/from16 v6, p7

    move-object v15, v7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Ln3/y/b/a/t;-><init>([Ln3/y/b/a/h0;Ln3/y/b/a/v0/g;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;Ln3/y/b/a/x0/a;Landroid/os/Looper;)V

    iput-object v11, v0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 22
    iget-object v1, v9, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    if-eqz v1, :cond_1

    iget-object v1, v9, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 23
    iget-object v1, v1, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v25, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v25, 0x1

    .line 25
    :goto_1
    invoke-static/range {v25 .. v25}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 26
    iput-object v11, v9, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 27
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/k0;->n()V

    .line 28
    iget-object v1, v11, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ln3/y/b/a/a$a;

    invoke-direct {v2, v9}, Ln3/y/b/a/a$a;-><init>(Ln3/y/b/a/f0$b;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v0, v10}, Ln3/y/b/a/k0;->a(Ln3/y/b/a/f0$b;)V

    move-object/from16 v1, v24

    .line 30
    invoke-virtual {v1, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v14, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v13, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v12, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p5

    move-object/from16 v2, v23

    .line 35
    invoke-interface {v1, v2, v9}, Ln3/y/b/a/w0/d;->f(Landroid/os/Handler;Ln3/y/b/a/w0/d$a;)V

    .line 36
    instance-of v1, v15, Ln3/y/b/a/p0/a;

    if-nez v1, :cond_2

    .line 37
    new-instance v1, Ln3/y/b/a/n0/e;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Ln3/y/b/a/n0/e;-><init>(Landroid/content/Context;Ln3/y/b/a/n0/e$c;)V

    iput-object v1, v0, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    return-void

    .line 38
    :cond_2
    move-object v7, v15

    check-cast v7, Ln3/y/b/a/p0/a;

    .line 39
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    throw v16
.end method


# virtual methods
.method public a(Ln3/y/b/a/f0$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/a$a;

    invoke-direct {v1, p1}, Ln3/y/b/a/a$a;-><init>(Ln3/y/b/a/f0$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-boolean v0, v0, Ln3/y/b/a/t;->k:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget v0, v0, Ln3/y/b/a/d0;->e:I

    return v0
.end method

.method public final f(II)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/k0;->p:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Ln3/y/b/a/k0;->q:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Ln3/y/b/a/k0;->p:I

    .line 3
    iput p2, p0, Ln3/y/b/a/k0;->q:I

    .line 4
    iget-object v0, p0, Ln3/y/b/a/k0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/y0/g;

    .line 5
    invoke-interface {v1, p1, p2}, Ln3/y/b/a/y0/g;->i(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ln3/y/b/a/n0/e;->a(Z)V

    .line 4
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ln3/y/b/a/x0/x;->e:Ljava/lang/String;

    .line 7
    sget-object v4, Ln3/y/b/a/w;->a:Ljava/util/HashSet;

    const-class v4, Ln3/y/b/a/w;

    monitor-enter v4

    .line 8
    :try_start_0
    sget-object v5, Ln3/y/b/a/w;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    iget-object v2, v0, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 11
    monitor-enter v2

    .line 12
    :try_start_1
    iget-boolean v3, v2, Ln3/y/b/a/v;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 13
    monitor-exit v2

    goto :goto_1

    .line 14
    :cond_0
    :try_start_2
    iget-object v3, v2, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ln3/y/b/a/x0/t;->b(I)Z

    move v3, v4

    .line 15
    :goto_0
    iget-boolean v5, v2, Ln3/y/b/a/v;->w:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    .line 16
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move v3, v1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 17
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :cond_2
    monitor-exit v2

    .line 19
    :goto_1
    iget-object v2, v0, Ln3/y/b/a/t;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v4, v4, v4, v1}, Ln3/y/b/a/t;->d(ZZZI)Ln3/y/b/a/d0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    .line 21
    invoke-virtual {p0}, Ln3/y/b/a/k0;->h()V

    .line 22
    iget-object v0, p0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 23
    iget-boolean v1, p0, Ln3/y/b/a/k0;->o:Z

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 25
    :cond_3
    iput-object v3, p0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    .line 26
    :cond_4
    iget-object v0, p0, Ln3/y/b/a/k0;->u:Ln3/y/b/a/t0/t;

    if-eqz v0, :cond_5

    .line 27
    iget-object v1, p0, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    invoke-interface {v0, v1}, Ln3/y/b/a/t0/t;->h(Ln3/y/b/a/t0/c0;)V

    .line 28
    iput-object v3, p0, Ln3/y/b/a/k0;->u:Ln3/y/b/a/t0/t;

    .line 29
    :cond_5
    iget-boolean v0, p0, Ln3/y/b/a/k0;->x:Z

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Ln3/y/b/a/k0;->k:Ln3/y/b/a/w0/d;

    iget-object v1, p0, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    invoke-interface {v0, v1}, Ln3/y/b/a/w0/d;->b(Ln3/y/b/a/w0/d$a;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/k0;->v:Ljava/util/List;

    return-void

    .line 32
    :cond_6
    throw v3

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    .line 34
    monitor-exit v4

    throw v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/t;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget v0, v0, Ln3/y/b/a/t0/t$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/t;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget v0, v0, Ln3/y/b/a/t0/t$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Ln3/y/b/a/l0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->l:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public i(IJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 4
    iget-boolean v1, v1, Ln3/y/b/a/m0/a$b;->h:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v2, Ln3/y/b/a/m0/a$b;->h:Z

    .line 8
    iget-object v0, v0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 9
    invoke-interface {v2, v1}, Ln3/y/b/a/m0/b;->a(Ln3/y/b/a/m0/b$a;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/t;->j(IJ)V

    return-void
.end method

.method public final j()V
    .locals 7

    .line 1
    iget v0, p0, Ln3/y/b/a/k0;->t:F

    iget-object v1, p0, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    .line 2
    iget v1, v1, Ln3/y/b/a/n0/e;->g:F

    mul-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Ln3/y/b/a/k0;->b:[Ln3/y/b/a/h0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4}, Ln3/y/b/a/h0;->p()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5
    iget-object v5, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v5, v4}, Ln3/y/b/a/t;->a(Ln3/y/b/a/g0$b;)Ln3/y/b/a/g0;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ln3/y/b/a/g0;->e(I)Ln3/y/b/a/g0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/y/b/a/g0;->d(Ljava/lang/Object;)Ln3/y/b/a/g0;

    invoke-virtual {v4}, Ln3/y/b/a/g0;->c()Ln3/y/b/a/g0;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/k0;->n()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    invoke-virtual {p0}, Ln3/y/b/a/k0;->e()I

    move-result v1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ln3/y/b/a/n0/e;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-eqz p1, :cond_2

    move v2, v3

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ln3/y/b/a/n0/e;->b()I

    move-result v2

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2}, Ln3/y/b/a/k0;->m(ZI)V

    return-void
.end method

.method public final l(Landroid/view/Surface;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/y/b/a/k0;->b:[Ln3/y/b/a/h0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-interface {v6}, Ln3/y/b/a/h0;->p()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4
    iget-object v7, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 5
    invoke-virtual {v7, v6}, Ln3/y/b/a/t;->a(Ln3/y/b/a/g0$b;)Ln3/y/b/a/g0;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln3/y/b/a/g0;->e(I)Ln3/y/b/a/g0;

    .line 6
    iget-boolean v7, v6, Ln3/y/b/a/g0;->h:Z

    xor-int/2addr v5, v7

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 7
    iput-object p1, v6, Ln3/y/b/a/g0;->e:Ljava/lang/Object;

    .line 8
    invoke-virtual {v6}, Ln3/y/b/a/g0;->c()Ln3/y/b/a/g0;

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/g0;

    .line 12
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-boolean v2, v1, Ln3/y/b/a/g0;->h:Z

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 14
    iget-object v2, v1, Ln3/y/b/a/g0;->f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v2, v4, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 15
    :goto_3
    iget-boolean v2, v1, Ln3/y/b/a/g0;->j:Z

    if-nez v2, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 17
    :cond_3
    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    :cond_4
    iget-boolean v0, p0, Ln3/y/b/a/k0;->o:Z

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 21
    :cond_5
    iput-object p1, p0, Ln3/y/b/a/k0;->n:Landroid/view/Surface;

    .line 22
    iput-boolean p2, p0, Ln3/y/b/a/k0;->o:Z

    return-void
.end method

.method public final m(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    move p2, v1

    .line 2
    :goto_2
    iget-boolean v3, v0, Ln3/y/b/a/t;->l:Z

    if-eq v3, p2, :cond_3

    .line 3
    iput-boolean p2, v0, Ln3/y/b/a/t;->l:Z

    .line 4
    iget-object v3, v0, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 5
    iget-object v3, v3, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 6
    iget-object v3, v3, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :cond_3
    iget-boolean p2, v0, Ln3/y/b/a/t;->k:Z

    if-eq p2, p1, :cond_4

    .line 9
    iput-boolean p1, v0, Ln3/y/b/a/t;->k:Z

    .line 10
    iget-object p2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget p2, p2, Ln3/y/b/a/d0;->e:I

    .line 11
    new-instance v1, Ln3/y/b/a/g;

    invoke-direct {v1, p1, p2}, Ln3/y/b/a/g;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ln3/y/b/a/t;->g(Ln3/y/b/a/a$b;)V

    :cond_4
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 3
    iget-object v1, v1, Ln3/y/b/a/t;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Ln3/y/b/a/k0;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/y/b/a/k0;->w:Z

    :cond_1
    return-void
.end method
