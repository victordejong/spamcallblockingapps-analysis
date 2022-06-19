.class final Li/c/z/e/b/i$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/i<",
        "TT;>;",
        "Lo/a/c;"
    }
.end annotation


# static fields
.field static final w:[Li/c/z/e/b/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/z/e/b/i$a<",
            "**>;"
        }
    .end annotation
.end field

.field static final x:[Li/c/z/e/b/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/z/e/b/i$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final h:Z

.field final i:I

.field final j:I

.field volatile k:Li/c/z/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/h<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile l:Z

.field final m:Li/c/z/j/c;

.field volatile n:Z

.field final o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Li/c/z/e/b/i$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field final p:Ljava/util/concurrent/atomic/AtomicLong;

.field q:Lo/a/c;

.field r:J

.field s:J

.field t:I

.field u:I

.field final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Li/c/z/e/b/i$a;

    .line 1
    sput-object v1, Li/c/z/e/b/i$b;->w:[Li/c/z/e/b/i$a;

    new-array v0, v0, [Li/c/z/e/b/i$a;

    .line 2
    sput-object v0, Li/c/z/e/b/i$b;->x:[Li/c/z/e/b/i$a;

    return-void
.end method

.method constructor <init>(Lo/a/b;Li/c/y/d;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TU;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Li/c/z/j/c;

    invoke-direct {v0}, Li/c/z/j/c;-><init>()V

    iput-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-object p1, p0, Li/c/z/e/b/i$b;->f:Lo/a/b;

    .line 6
    iput-object p2, p0, Li/c/z/e/b/i$b;->g:Li/c/y/d;

    .line 7
    iput-boolean p3, p0, Li/c/z/e/b/i$b;->h:Z

    .line 8
    iput p4, p0, Li/c/z/e/b/i$b;->i:I

    .line 9
    iput p5, p0, Li/c/z/e/b/i$b;->j:I

    const/4 p1, 0x1

    shr-int/lit8 p2, p4, 0x1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Li/c/z/e/b/i$b;->v:I

    .line 11
    sget-object p1, Li/c/z/e/b/i$b;->w:[Li/c/z/e/b/i$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Li/c/z/e/b/i$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/i$a<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/e/b/i$a;

    .line 2
    sget-object v1, Li/c/z/e/b/i$b;->x:[Li/c/z/e/b/i$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Li/c/z/e/b/i$a;->dispose()V

    return v2

    .line 4
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 5
    new-array v3, v3, [Li/c/z/e/b/i$a;

    .line 6
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput-object p1, v3, v1

    .line 8
    iget-object v1, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->c()V

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->c()V

    .line 5
    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    sget-object v2, Li/c/z/j/g;->a:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Li/c/z/e/b/i$b;->f:Lo/a/b;

    invoke-interface {v2, v0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/b/i$b;->n:Z

    .line 3
    iget-object v0, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 4
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->e()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/e/b/i$a;

    .line 2
    sget-object v1, Li/c/z/e/b/i$b;->x:[Li/c/z/e/b/i$a;

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/e/b/i$a;

    if-eq v0, v1, :cond_1

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3}, Li/c/z/e/b/i$a;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Li/c/z/j/g;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    .line 8
    invoke-static {v0}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->g()V

    :cond_0
    return-void
.end method

.method g()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Li/c/z/e/b/i$b;->f:Lo/a/b;

    const/4 v4, 0x1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v1, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    .line 4
    iget-object v5, v1, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v10, v5, v7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    if-eqz v0, :cond_9

    :goto_2
    move-wide v7, v14

    const/16 v18, 0x0

    :goto_3
    cmp-long v19, v5, v14

    if-eqz v19, :cond_5

    .line 5
    invoke-interface {v0}, Li/c/z/c/h;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 6
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v18

    if-eqz v18, :cond_3

    return-void

    :cond_3
    if-nez v9, :cond_4

    move-object/from16 v18, v9

    goto :goto_4

    .line 7
    :cond_4
    invoke-interface {v2, v9}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    add-long v16, v16, v12

    add-long/2addr v7, v12

    sub-long/2addr v5, v12

    move-object/from16 v18, v9

    goto :goto_3

    :cond_5
    :goto_4
    cmp-long v9, v7, v14

    if-eqz v9, :cond_7

    if-eqz v10, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_5

    .line 8
    :cond_6
    iget-object v5, v1, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    :cond_7
    :goto_5
    cmp-long v7, v5, v14

    if-eqz v7, :cond_9

    if-nez v18, :cond_8

    goto :goto_6

    :cond_8
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    .line 9
    :cond_9
    :goto_6
    iget-boolean v0, v1, Li/c/z/e/b/i$b;->l:Z

    .line 10
    iget-object v7, v1, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    .line 11
    iget-object v8, v1, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Li/c/z/e/b/i$a;

    .line 12
    array-length v9, v8

    if-eqz v0, :cond_d

    if-eqz v7, :cond_a

    .line 13
    invoke-interface {v7}, Li/c/z/c/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    if-nez v9, :cond_d

    .line 14
    iget-object v0, v1, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v0

    .line 15
    sget-object v3, Li/c/z/j/g;->a:Ljava/lang/Throwable;

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_b

    .line 16
    invoke-interface {v2}, Lo/a/b;->onComplete()V

    goto :goto_7

    .line 17
    :cond_b
    invoke-interface {v2, v0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    return-void

    :cond_d
    move/from16 v18, v4

    if-eqz v9, :cond_26

    .line 18
    iget-wide v3, v1, Li/c/z/e/b/i$b;->s:J

    .line 19
    iget v0, v1, Li/c/z/e/b/i$b;->t:I

    if-le v9, v0, :cond_e

    .line 20
    aget-object v7, v8, v0

    iget-wide v11, v7, Li/c/z/e/b/i$a;->f:J

    cmp-long v7, v11, v3

    if-eqz v7, :cond_13

    :cond_e
    if-gt v9, v0, :cond_f

    const/4 v0, 0x0

    :cond_f
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v9, :cond_12

    .line 21
    aget-object v11, v8, v0

    iget-wide v11, v11, Li/c/z/e/b/i$a;->f:J

    cmp-long v13, v11, v3

    if-nez v13, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_11

    const/4 v0, 0x0

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 22
    :cond_12
    :goto_9
    iput v0, v1, Li/c/z/e/b/i$b;->t:I

    .line 23
    aget-object v3, v8, v0

    iget-wide v3, v3, Li/c/z/e/b/i$a;->f:J

    iput-wide v3, v1, Li/c/z/e/b/i$b;->s:J

    :cond_13
    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v9, :cond_25

    .line 24
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v7

    if-eqz v7, :cond_14

    return-void

    .line 25
    :cond_14
    aget-object v7, v8, v3

    const/4 v11, 0x0

    .line 26
    :goto_b
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v12

    if-eqz v12, :cond_15

    return-void

    .line 27
    :cond_15
    iget-object v12, v7, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    if-nez v12, :cond_16

    move-object v13, v8

    move/from16 v22, v9

    goto/16 :goto_10

    :cond_16
    move-object v13, v8

    move/from16 v22, v9

    move-wide v8, v14

    :goto_c
    cmp-long v23, v5, v14

    if-eqz v23, :cond_1b

    .line 28
    :try_start_0
    invoke-interface {v12}, Li/c/z/c/i;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_17

    goto :goto_d

    .line 29
    :cond_17
    invoke-interface {v2, v11}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v23

    if-eqz v23, :cond_18

    return-void

    :cond_18
    const-wide/16 v20, 0x1

    sub-long v5, v5, v20

    add-long v8, v8, v20

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 31
    invoke-static {v8}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {v7}, Li/c/z/e/b/i$a;->dispose()V

    .line 33
    iget-object v0, v1, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0, v8}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    .line 34
    iget-boolean v0, v1, Li/c/z/e/b/i$b;->h:Z

    if-nez v0, :cond_19

    .line 35
    iget-object v0, v1, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 36
    :cond_19
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    .line 37
    :cond_1a
    invoke-virtual {v1, v7}, Li/c/z/e/b/i$b;->k(Li/c/z/e/b/i$a;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v22

    const/4 v0, 0x1

    const-wide/16 v7, 0x1

    goto :goto_12

    :cond_1b
    :goto_d
    cmp-long v12, v8, v14

    if-eqz v12, :cond_1d

    if-nez v10, :cond_1c

    .line 38
    iget-object v5, v1, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v14, v8

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_e

    :cond_1c
    const-wide v5, 0x7fffffffffffffffL

    .line 39
    :goto_e
    invoke-virtual {v7, v8, v9}, Li/c/z/e/b/i$a;->a(J)V

    const-wide/16 v8, 0x0

    goto :goto_f

    :cond_1d
    move-wide v8, v14

    :goto_f
    cmp-long v12, v5, v8

    if-eqz v12, :cond_1f

    if-nez v11, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v8, v13

    move/from16 v9, v22

    const-wide/16 v14, 0x0

    goto :goto_b

    .line 40
    :cond_1f
    :goto_10
    iget-boolean v8, v7, Li/c/z/e/b/i$a;->j:Z

    .line 41
    iget-object v9, v7, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    if-eqz v8, :cond_22

    if-eqz v9, :cond_20

    .line 42
    invoke-interface {v9}, Li/c/z/c/i;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 43
    :cond_20
    invoke-virtual {v1, v7}, Li/c/z/e/b/i$b;->k(Li/c/z/e/b/i$a;)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/i$b;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    const-wide/16 v7, 0x1

    add-long v16, v16, v7

    const/4 v0, 0x1

    goto :goto_11

    :cond_22
    const-wide/16 v7, 0x1

    :goto_11
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-nez v9, :cond_23

    move v9, v0

    const/4 v11, 0x1

    goto :goto_13

    :cond_23
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, v22

    if-ne v3, v9, :cond_24

    const/4 v3, 0x0

    :cond_24
    :goto_12
    const/4 v11, 0x1

    add-int/2addr v4, v11

    move-object v8, v13

    const-wide/16 v14, 0x0

    goto/16 :goto_a

    :cond_25
    move-object v13, v8

    const/4 v11, 0x1

    move v9, v0

    .line 45
    :goto_13
    iput v3, v1, Li/c/z/e/b/i$b;->t:I

    .line 46
    aget-object v0, v13, v3

    iget-wide v3, v0, Li/c/z/e/b/i$a;->f:J

    iput-wide v3, v1, Li/c/z/e/b/i$b;->s:J

    move-wide/from16 v3, v16

    const-wide/16 v5, 0x0

    goto :goto_14

    :cond_26
    const/4 v11, 0x1

    move-wide v5, v14

    move-wide/from16 v3, v16

    const/4 v9, 0x0

    :goto_14
    cmp-long v0, v3, v5

    if-eqz v0, :cond_27

    .line 47
    iget-boolean v0, v1, Li/c/z/e/b/i$b;->n:Z

    if-nez v0, :cond_27

    .line 48
    iget-object v0, v1, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-interface {v0, v3, v4}, Lo/a/c;->request(J)V

    :cond_27
    if-eqz v9, :cond_28

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_28
    move/from16 v3, v18

    neg-int v0, v3

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method h(Li/c/z/e/b/i$a;)Li/c/z/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/i$a<",
            "TT;TU;>;)",
            "Li/c/z/c/i<",
            "TU;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/c/z/f/a;

    iget v1, p0, Li/c/z/e/b/i$b;->j:I

    invoke-direct {v0, v1}, Li/c/z/f/a;-><init>(I)V

    .line 3
    iput-object v0, p1, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    :cond_0
    return-object v0
.end method

.method i()Li/c/z/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/z/c/i<",
            "TU;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Li/c/z/e/b/i$b;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Li/c/z/f/b;

    iget v1, p0, Li/c/z/e/b/i$b;->j:I

    invoke-direct {v0, v1}, Li/c/z/f/b;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Li/c/z/f/a;

    iget v1, p0, Li/c/z/e/b/i$b;->i:I

    invoke-direct {v0, v1}, Li/c/z/f/a;-><init>(I)V

    .line 5
    :goto_0
    iput-object v0, p0, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    :cond_1
    return-object v0
.end method

.method j(Li/c/z/e/b/i$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/i$a<",
            "TT;TU;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0, p2}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Li/c/z/e/b/i$a;->j:Z

    .line 3
    iget-boolean p1, p0, Li/c/z/e/b/i$b;->h:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 5
    iget-object p1, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Li/c/z/e/b/i$b;->x:[Li/c/z/e/b/i$a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li/c/z/e/b/i$a;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 6
    invoke-virtual {v1}, Li/c/z/e/b/i$a;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->f()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p2}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method k(Li/c/z/e/b/i$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/i$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/e/b/i$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Li/c/z/e/b/i$b;->w:[Li/c/z/e/b/i$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Li/c/z/e/b/i$a;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Li/c/z/e/b/i$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method l(Ljava/lang/Object;Li/c/z/e/b/i$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Li/c/z/e/b/i$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Inner queue full?!"

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 3
    iget-object v0, p2, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Li/c/z/c/i;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v0, 0x1

    .line 7
    invoke-virtual {p2, v0, v1}, Li/c/z/e/b/i$a;->a(J)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0, p2}, Li/c/z/e/b/i$b;->h(Li/c/z/e/b/i$a;)Li/c/z/c/i;

    move-result-object v0

    .line 9
    :cond_3
    invoke-interface {v0, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 12
    :cond_5
    iget-object v0, p2, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    if-nez v0, :cond_6

    .line 13
    new-instance v0, Li/c/z/f/a;

    iget v2, p0, Li/c/z/e/b/i$b;->j:I

    invoke-direct {v0, v2}, Li/c/z/f/a;-><init>(I)V

    .line 14
    iput-object v0, p2, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    .line 15
    :cond_6
    invoke-interface {v0, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 18
    :cond_8
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->g()V

    return-void
.end method

.method m(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Scalar queue full?!"

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2
    iget-object v3, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Li/c/z/e/b/i$b;->k:Li/c/z/c/h;

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_2

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {v5}, Li/c/z/c/i;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Li/c/z/e/b/i$b;->f:Lo/a/b;

    invoke-interface {v1, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 7
    :cond_1
    iget p1, p0, Li/c/z/e/b/i$b;->i:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Li/c/z/e/b/i$b;->n:Z

    if-nez p1, :cond_4

    iget p1, p0, Li/c/z/e/b/i$b;->u:I

    add-int/2addr p1, v2

    iput p1, p0, Li/c/z/e/b/i$b;->u:I

    iget v1, p0, Li/c/z/e/b/i$b;->v:I

    if-ne p1, v1, :cond_4

    .line 8
    iput v0, p0, Li/c/z/e/b/i$b;->u:I

    .line 9
    iget-object p1, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 10
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->i()Li/c/z/c/i;

    move-result-object v5

    .line 11
    :cond_3
    invoke-interface {v5, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->i()Li/c/z/c/i;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 18
    :cond_7
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->g()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/b/i$b;->l:Z

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0, p1}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/z/e/b/i$b;->l:Z

    .line 5
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->f()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/b/i$b;->g:Li/c/y/d;

    invoke-interface {v0, p1}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lo/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 4
    :try_start_1
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->m(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Li/c/z/e/b/i$b;->i:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Li/c/z/e/b/i$b;->n:Z

    if-nez p1, :cond_3

    iget p1, p0, Li/c/z/e/b/i$b;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li/c/z/e/b/i$b;->u:I

    iget v0, p0, Li/c/z/e/b/i$b;->v:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Li/c/z/e/b/i$b;->u:I

    .line 8
    iget-object p1, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Li/c/z/e/b/i$b;->m:Li/c/z/j/c;

    invoke-virtual {v0, p1}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    .line 11
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->f()V

    return-void

    .line 12
    :cond_2
    new-instance v0, Li/c/z/e/b/i$a;

    iget-wide v1, p0, Li/c/z/e/b/i$b;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Li/c/z/e/b/i$b;->r:J

    invoke-direct {v0, p0, v1, v2}, Li/c/z/e/b/i$a;-><init>(Li/c/z/e/b/i$b;J)V

    .line 13
    invoke-virtual {p0, v0}, Li/c/z/e/b/i$b;->a(Li/c/z/e/b/i$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p1, v0}, Lo/a/a;->a(Lo/a/b;)V

    :cond_3
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 15
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 17
    invoke-virtual {p0, p1}, Li/c/z/e/b/i$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/z/e/b/i$b;->q:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/e/b/i$b;->f:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 4
    iget-boolean v0, p0, Li/c/z/e/b/i$b;->n:Z

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Li/c/z/e/b/i$b;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 7
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Li/c/z/i/g;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/i$b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Li/c/z/j/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/i$b;->f()V

    :cond_0
    return-void
.end method
