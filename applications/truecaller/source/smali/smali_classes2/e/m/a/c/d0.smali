.class public final Le/m/a/c/d0;
.super Le/m/a/c/t;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/d0$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/n1/i;

.field public final b:[Le/m/a/c/u0;

.field public final c:Le/m/a/c/n1/h;

.field public final d:Landroid/os/Handler;

.field public final e:Le/m/a/c/e0;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Le/m/a/c/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/m/a/c/y0$b;

.field public final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/m/a/c/l1/p;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Le/m/a/c/o0;

.field public u:Le/m/a/c/x0;

.field public v:Le/m/a/c/n0;

.field public w:I

.field public x:I

.field public y:J


# direct methods
.method public constructor <init>([Le/m/a/c/u0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/p1/f;Le/m/a/c/q1/f;Landroid/os/Looper;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct {p0}, Le/m/a/c/t;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    sget-object v1, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    .line 3
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 4
    iput-object v2, v0, Le/m/a/c/d0;->b:[Le/m/a/c/u0;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p2

    .line 6
    iput-object v4, v0, Le/m/a/c/d0;->c:Le/m/a/c/n1/h;

    .line 7
    iput-boolean v3, v0, Le/m/a/c/d0;->k:Z

    .line 8
    iput v3, v0, Le/m/a/c/d0;->m:I

    .line 9
    iput-boolean v3, v0, Le/m/a/c/d0;->n:Z

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v5, Le/m/a/c/n1/i;

    array-length v1, v2

    new-array v1, v1, [Le/m/a/c/v0;

    array-length v6, v2

    new-array v6, v6, [Le/m/a/c/n1/f;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v6, v7}, Le/m/a/c/n1/i;-><init>([Le/m/a/c/v0;[Le/m/a/c/n1/f;Ljava/lang/Object;)V

    iput-object v5, v0, Le/m/a/c/d0;->a:Le/m/a/c/n1/i;

    .line 12
    new-instance v1, Le/m/a/c/y0$b;

    invoke-direct {v1}, Le/m/a/c/y0$b;-><init>()V

    iput-object v1, v0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    .line 13
    sget-object v1, Le/m/a/c/o0;->e:Le/m/a/c/o0;

    iput-object v1, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    .line 14
    sget-object v1, Le/m/a/c/x0;->d:Le/m/a/c/x0;

    iput-object v1, v0, Le/m/a/c/d0;->u:Le/m/a/c/x0;

    .line 15
    iput v3, v0, Le/m/a/c/d0;->l:I

    .line 16
    new-instance v10, Le/m/a/c/d0$a;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Le/m/a/c/d0$a;-><init>(Le/m/a/c/d0;Landroid/os/Looper;)V

    iput-object v10, v0, Le/m/a/c/d0;->d:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    .line 17
    invoke-static {v6, v7, v5}, Le/m/a/c/n0;->d(JLe/m/a/c/n1/i;)Le/m/a/c/n0;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    .line 18
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    .line 19
    new-instance v12, Le/m/a/c/e0;

    iget-boolean v7, v0, Le/m/a/c/d0;->k:Z

    iget v8, v0, Le/m/a/c/d0;->m:I

    iget-boolean v9, v0, Le/m/a/c/d0;->n:Z

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Le/m/a/c/e0;-><init>([Le/m/a/c/u0;Le/m/a/c/n1/h;Le/m/a/c/n1/i;Le/m/a/c/i0;Le/m/a/c/p1/f;ZIZLandroid/os/Handler;Le/m/a/c/q1/f;)V

    iput-object v12, v0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    iget-object v2, v12, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Le/m/a/c/d0;->f:Landroid/os/Handler;

    return-void
.end method

.method public static b(Ljava/util/concurrent/CopyOnWriteArrayList;Le/m/a/c/t$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Le/m/a/c/t$a;",
            ">;",
            "Le/m/a/c/t$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/t$a;

    .line 2
    iget-boolean v1, v0, Le/m/a/c/t$a;->b:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Le/m/a/c/t$a;->a:Le/m/a/c/q0$b;

    invoke-interface {p1, v0}, Le/m/a/c/t$b;->a(Le/m/a/c/q0$b;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ZZZI)Le/m/a/c/n0;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput v3, v0, Le/m/a/c/d0;->w:I

    .line 2
    iput v3, v0, Le/m/a/c/d0;->x:I

    .line 3
    iput-wide v1, v0, Le/m/a/c/d0;->y:J

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/d0;->getCurrentWindowIndex()I

    move-result v4

    iput v4, v0, Le/m/a/c/d0;->w:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/d0;->getCurrentPeriodIndex()I

    move-result v4

    iput v4, v0, Le/m/a/c/d0;->x:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/d0;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Le/m/a/c/d0;->y:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    iget-object v4, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-boolean v5, v0, Le/m/a/c/d0;->n:Z

    iget-object v6, v0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    iget-object v7, v0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Le/m/a/c/n0;->e(ZLe/m/a/c/y0$c;Le/m/a/c/y0$b;)Le/m/a/c/l1/p$a;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v4, v4, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v1, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v1, v1, Le/m/a/c/n0;->m:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 10
    :cond_5
    iget-object v1, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v1, v1, Le/m/a/c/n0;->d:J

    :goto_3
    move-wide v10, v1

    .line 11
    new-instance v1, Le/m/a/c/n0;

    if-eqz p2, :cond_6

    sget-object v2, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    :goto_4
    move-object v6, v2

    if-eqz p3, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    :goto_5
    move-object v13, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    iget-object v2, v0, Le/m/a/c/d0;->a:Le/m/a/c/n1/i;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move/from16 v12, p4

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    return-object v1
.end method

.method public addListener(Le/m/a/c/q0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Le/m/a/c/t$a;

    invoke-direct {v1, p1}, Le/m/a/c/t$a;-><init>(Le/m/a/c/q0$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Le/m/a/c/t$b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Le/m/a/c/m;

    invoke-direct {v1, v0, p1}, Le/m/a/c/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Le/m/a/c/t$b;)V

    invoke-virtual {p0, v1}, Le/m/a/c/d0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;
    .locals 7

    .line 1
    new-instance v6, Le/m/a/c/s0;

    iget-object v1, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v3, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 2
    invoke-virtual {p0}, Le/m/a/c/d0;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Le/m/a/c/d0;->f:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Le/m/a/c/s0;-><init>(Le/m/a/c/s0$a;Le/m/a/c/s0$b;Le/m/a/c/y0;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, Le/m/a/c/d0;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Le/m/a/c/l1/p$a;J)J
    .locals 2

    .line 1
    invoke-static {p2, p3}, Le/m/a/c/v;->b(J)J

    move-result-wide p2

    .line 2
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object p1, p1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    invoke-virtual {v0, p1, v1}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    .line 3
    iget-object p1, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    .line 4
    iget-wide v0, p1, Le/m/a/c/y0$b;->d:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public f(ZI)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->isPlaying()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Le/m/a/c/d0;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Le/m/a/c/d0;->l:I

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eq v1, v4, :cond_2

    .line 3
    iget-object v1, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 4
    iget-object v1, v1, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {v1, v2, v4, v3}, Le/m/a/c/q1/a0;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :cond_2
    iget-boolean v1, p0, Le/m/a/c/d0;->k:Z

    if-eq v1, p1, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    .line 6
    :goto_2
    iget v1, p0, Le/m/a/c/d0;->l:I

    if-eq v1, p2, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v3

    .line 7
    :goto_3
    iput-boolean p1, p0, Le/m/a/c/d0;->k:Z

    .line 8
    iput p2, p0, Le/m/a/c/d0;->l:I

    .line 9
    invoke-virtual {p0}, Le/m/a/c/t;->isPlaying()Z

    move-result v11

    if-eq v0, v11, :cond_5

    move v10, v2

    goto :goto_4

    :cond_5
    move v10, v3

    :goto_4
    if-nez v5, :cond_6

    if-nez v8, :cond_6

    if-eqz v10, :cond_7

    .line 10
    :cond_6
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget v7, v0, Le/m/a/c/n0;->e:I

    .line 11
    new-instance v0, Le/m/a/c/d;

    move-object v4, v0

    move v6, p1

    move v9, p2

    invoke-direct/range {v4 .. v11}, Le/m/a/c/d;-><init>(ZZIZIZZ)V

    invoke-virtual {p0, v0}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    :cond_7
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Le/m/a/c/d0;->o:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v1, v0}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->k:J

    .line 3
    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/d0;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/d0;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Le/m/a/c/d0;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-wide v1, v1, Le/m/a/c/l1/p$a;->d:J

    iget-object v3, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v3, v3, Le/m/a/c/l1/p$a;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {p0}, Le/m/a/c/d0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    invoke-virtual {v0}, Le/m/a/c/y0$c;->a()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Le/m/a/c/n0;->k:J

    .line 6
    iget-object v2, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    invoke-virtual {v2}, Le/m/a/c/l1/p$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v0, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    .line 8
    invoke-virtual {v1, v0, v2}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v1, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget v1, v1, Le/m/a/c/l1/p$a;->b:I

    .line 10
    invoke-virtual {v0, v1}, Le/m/a/c/y0$b;->d(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 11
    iget-wide v0, v0, Le/m/a/c/y0$b;->c:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    invoke-virtual {p0, v2, v0, v1}, Le/m/a/c/d0;->e(Le/m/a/c/l1/p$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    invoke-virtual {v1, v0, v2}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    .line 3
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v1, v0, Le/m/a/c/n0;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 4
    invoke-virtual {p0}, Le/m/a/c/d0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    .line 5
    iget-wide v0, v0, Le/m/a/c/y0$c;->i:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    .line 7
    iget-wide v0, v0, Le/m/a/c/y0$b;->d:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v2, v2, Le/m/a/c/n0;->d:J

    invoke-static {v2, v3}, Le/m/a/c/v;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/d0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget v0, v0, Le/m/a/c/l1/p$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget v0, v0, Le/m/a/c/l1/p$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Le/m/a/c/d0;->x:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Le/m/a/c/d0;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v0}, Le/m/a/c/l1/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v2, v0, Le/m/a/c/n0;->m:J

    invoke-virtual {p0, v1, v2, v3}, Le/m/a/c/d0;->e(Le/m/a/c/l1/p$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Le/m/a/c/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Le/m/a/c/n1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v0, v0, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Le/m/a/c/d0;->w:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    invoke-virtual {v1, v0, v2}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object v0

    iget v0, v0, Le/m/a/c/y0$b;->b:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    .line 3
    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v2, v1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    invoke-virtual {v0, v2, v3}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    .line 4
    iget-object v0, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    iget v2, v1, Le/m/a/c/l1/p$a;->b:I

    iget v1, v1, Le/m/a/c/l1/p$a;->c:I

    invoke-virtual {v0, v2, v1}, Le/m/a/c/y0$b;->a(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/t;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/d0;->k:Z

    return v0
.end method

.method public getPlaybackError()Le/m/a/c/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    return-object v0
.end method

.method public getPlaybackParameters()Le/m/a/c/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/d0;->l:I

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->b:[Le/m/a/c/u0;

    aget-object p1, v0, p1

    invoke-interface {p1}, Le/m/a/c/u0;->p()I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/d0;->m:I

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/d0;->n:Z

    return v0
.end method

.method public getTextComponent()Le/m/a/c/q0$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->l:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoComponent()Le/m/a/c/q0$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Le/m/a/c/n0;ZIIZ)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->isPlaying()Z

    move-result v1

    .line 2
    iget-object v4, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    move-object v3, p1

    .line 3
    iput-object v3, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    .line 4
    invoke-virtual {p0}, Le/m/a/c/t;->isPlaying()Z

    move-result v2

    .line 5
    new-instance v13, Le/m/a/c/d0$b;

    iget-object v5, v0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, v0, Le/m/a/c/d0;->c:Le/m/a/c/n1/h;

    iget-boolean v11, v0, Le/m/a/c/d0;->k:Z

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    move-object v2, v13

    move-object v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v12}, Le/m/a/c/d0$b;-><init>(Le/m/a/c/n0;Le/m/a/c/n0;Ljava/util/concurrent/CopyOnWriteArrayList;Le/m/a/c/n1/h;ZIIZZZ)V

    invoke-virtual {p0, v13}, Le/m/a/c/d0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/d0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v0}, Le/m/a/c/l1/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Le/m/a/c/l1/p;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Le/m/a/c/d0;->prepare(Le/m/a/c/l1/p;ZZ)V

    return-void
.end method

.method public prepare(Le/m/a/c/l1/p;ZZ)V
    .locals 8

    .line 2
    iput-object p1, p0, Le/m/a/c/d0;->j:Le/m/a/c/l1/p;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p2, p3, v0, v1}, Le/m/a/c/d0;->a(ZZZI)Le/m/a/c/n0;

    move-result-object v3

    .line 4
    iput-boolean v0, p0, Le/m/a/c/d0;->p:Z

    .line 5
    iget v1, p0, Le/m/a/c/d0;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Le/m/a/c/d0;->o:I

    .line 6
    iget-object v0, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 7
    iget-object v0, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p2, p3, p1}, Le/m/a/c/q1/a0;->b(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    .line 10
    invoke-virtual/range {v2 .. v7}, Le/m/a/c/d0;->h(Le/m/a/c/n0;ZIIZ)V

    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    sget-object v0, Le/m/a/c/q1/d0;->e:Ljava/lang/String;

    .line 2
    sget-object v0, Le/m/a/c/f0;->a:Ljava/util/HashSet;

    const-class v0, Le/m/a/c/f0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/m/a/c/f0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 4
    iget-object v0, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    iget-boolean v1, v0, Le/m/a/c/e0;->w:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Le/m/a/c/q1/a0;->d(I)Z

    move v1, v3

    .line 8
    :goto_0
    iget-boolean v4, v0, Le/m/a/c/e0;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :cond_2
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0

    .line 13
    :goto_2
    iget-object v0, p0, Le/m/a/c/d0;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, v3, v3, v3, v2}, Le/m/a/c/d0;->a(ZZZI)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    return-void

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 16
    monitor-exit v0

    throw v1
.end method

.method public removeListener(Le/m/a/c/q0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/t$a;

    .line 2
    iget-object v2, v1, Le/m/a/c/t$a;->a:Le/m/a/c/q0$b;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Le/m/a/c/t$a;->b:Z

    .line 4
    iget-object v2, p0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public seekTo(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    if-ltz p1, :cond_5

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Le/m/a/c/y0;->o()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Le/m/a/c/d0;->q:Z

    .line 4
    iget v2, p0, Le/m/a/c/d0;->o:I

    add-int/2addr v2, v1

    iput v2, p0, Le/m/a/c/d0;->o:I

    .line 5
    invoke-virtual {p0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Le/m/a/c/d0;->d:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    .line 7
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 9
    :cond_1
    iput p1, p0, Le/m/a/c/d0;->w:I

    .line 10
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v6

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, p2

    .line 11
    :goto_0
    iput-wide v4, p0, Le/m/a/c/d0;->y:J

    .line 12
    iput v3, p0, Le/m/a/c/d0;->x:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v6

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    .line 14
    invoke-virtual {v0, p1, v1, v4, v5}, Le/m/a/c/y0;->n(ILe/m/a/c/y0$c;J)Le/m/a/c/y0$c;

    move-result-object v1

    .line 15
    iget-wide v1, v1, Le/m/a/c/y0$c;->i:J

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p2, p3}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 17
    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    iget-object v3, p0, Le/m/a/c/d0;->h:Le/m/a/c/y0$b;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 18
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/y0;->j(Le/m/a/c/y0$c;Le/m/a/c/y0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 19
    invoke-static {v7, v8}, Le/m/a/c/v;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Le/m/a/c/d0;->y:J

    .line 20
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Le/m/a/c/d0;->x:I

    .line 21
    :goto_2
    iget-object v1, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    invoke-static {p2, p3}, Le/m/a/c/v;->a(J)J

    move-result-wide p2

    .line 22
    iget-object v1, v1, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    new-instance v2, Le/m/a/c/e0$e;

    invoke-direct {v2, v0, p1, p2, p3}, Le/m/a/c/e0$e;-><init>(Le/m/a/c/y0;IJ)V

    const/4 p1, 0x3

    .line 23
    invoke-virtual {v1, p1, v2}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 25
    sget-object p1, Le/m/a/c/c;->a:Le/m/a/c/c;

    invoke-virtual {p0, p1}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    return-void

    .line 26
    :cond_5
    new-instance v1, Le/m/a/c/h0;

    invoke-direct {v1, v0, p1, p2, p3}, Le/m/a/c/h0;-><init>(Le/m/a/c/y0;IJ)V

    throw v1
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/m/a/c/d0;->f(ZI)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Le/m/a/c/d0;->m:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Le/m/a/c/d0;->m:I

    .line 3
    iget-object v0, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 4
    iget-object v0, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Le/m/a/c/q1/a0;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    new-instance v0, Le/m/a/c/o;

    invoke-direct {v0, p1}, Le/m/a/c/o;-><init>(I)V

    invoke-virtual {p0, v0}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/m/a/c/d0;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Le/m/a/c/d0;->n:Z

    .line 3
    iget-object v0, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 4
    iget-object v0, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1, v1}, Le/m/a/c/q1/a0;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    new-instance v0, Le/m/a/c/l;

    invoke-direct {v0, p1}, Le/m/a/c/l;-><init>(Z)V

    invoke-virtual {p0, v0}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p1, p1, v0}, Le/m/a/c/d0;->a(ZZZI)Le/m/a/c/n0;

    move-result-object v2

    .line 2
    iget v1, p0, Le/m/a/c/d0;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Le/m/a/c/d0;->o:I

    .line 3
    iget-object v0, p0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 4
    iget-object v0, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1, v1}, Le/m/a/c/q1/a0;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/d0;->h(Le/m/a/c/n0;ZIIZ)V

    return-void
.end method
