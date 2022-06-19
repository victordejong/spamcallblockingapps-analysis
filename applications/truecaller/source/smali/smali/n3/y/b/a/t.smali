.class public final Ln3/y/b/a/t;
.super Ln3/y/b/a/a;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t$a;
    }
.end annotation


# instance fields
.field public final b:Ln3/y/b/a/v0/h;

.field public final c:[Ln3/y/b/a/h0;

.field public final d:Ln3/y/b/a/v0/g;

.field public final e:Landroid/os/Handler;

.field public final f:Ln3/y/b/a/v;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/y/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ln3/y/b/a/l0$b;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Ln3/y/b/a/e0;

.field public r:Ln3/y/b/a/j0;

.field public s:Ln3/y/b/a/d0;

.field public t:I

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>([Ln3/y/b/a/h0;Ln3/y/b/a/v0/g;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;Ln3/y/b/a/x0/a;Landroid/os/Looper;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/a;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ln3/y/b/a/x0/x;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 3
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 4
    iput-object v2, v0, Ln3/y/b/a/t;->c:[Ln3/y/b/a/h0;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p2

    .line 6
    iput-object v4, v0, Ln3/y/b/a/t;->d:Ln3/y/b/a/v0/g;

    .line 7
    iput-boolean v3, v0, Ln3/y/b/a/t;->k:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    new-instance v5, Ln3/y/b/a/v0/h;

    array-length v1, v2

    new-array v1, v1, [Ln3/y/b/a/i0;

    array-length v3, v2

    new-array v3, v3, [Ln3/y/b/a/v0/e;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Ln3/y/b/a/v0/h;-><init>([Ln3/y/b/a/i0;[Ln3/y/b/a/v0/e;Ljava/lang/Object;)V

    iput-object v5, v0, Ln3/y/b/a/t;->b:Ln3/y/b/a/v0/h;

    .line 10
    new-instance v1, Ln3/y/b/a/l0$b;

    invoke-direct {v1}, Ln3/y/b/a/l0$b;-><init>()V

    iput-object v1, v0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    .line 11
    sget-object v1, Ln3/y/b/a/e0;->e:Ln3/y/b/a/e0;

    iput-object v1, v0, Ln3/y/b/a/t;->q:Ln3/y/b/a/e0;

    .line 12
    sget-object v1, Ln3/y/b/a/j0;->g:Ln3/y/b/a/j0;

    iput-object v1, v0, Ln3/y/b/a/t;->r:Ln3/y/b/a/j0;

    .line 13
    new-instance v10, Ln3/y/b/a/l;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Ln3/y/b/a/l;-><init>(Ln3/y/b/a/t;Landroid/os/Looper;)V

    iput-object v10, v0, Ln3/y/b/a/t;->e:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    .line 14
    invoke-static {v6, v7, v5}, Ln3/y/b/a/d0;->d(JLn3/y/b/a/v0/h;)Ln3/y/b/a/d0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    .line 15
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    .line 16
    new-instance v12, Ln3/y/b/a/v;

    iget-boolean v7, v0, Ln3/y/b/a/t;->k:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Ln3/y/b/a/v;-><init>([Ln3/y/b/a/h0;Ln3/y/b/a/v0/g;Ln3/y/b/a/v0/h;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;ZIZLandroid/os/Handler;Ln3/y/b/a/x0/a;)V

    iput-object v12, v0, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 18
    iget-object v2, v12, Ln3/y/b/a/v;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Ln3/y/b/a/t;->g:Landroid/os/Handler;

    return-void
.end method

.method public static e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/y/b/a/a$a;",
            ">;",
            "Ln3/y/b/a/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/a$a;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/a$a;->a:Ln3/y/b/a/f0$b;

    invoke-interface {p1, v0}, Ln3/y/b/a/a$b;->a(Ln3/y/b/a/f0$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/g0$b;)Ln3/y/b/a/g0;
    .locals 7

    .line 1
    new-instance v6, Ln3/y/b/a/g0;

    iget-object v1, p0, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v3, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Ln3/y/b/a/t;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/g0;-><init>(Ln3/y/b/a/g0$a;Ln3/y/b/a/g0$b;Ln3/y/b/a/l0;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public b()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v1, v0}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->k:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/t;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/t;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-wide v0, p0, Ln3/y/b/a/t;->v:J

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    iget-wide v1, v1, Ln3/y/b/a/t0/t$a;->d:J

    iget-object v3, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v3, v3, Ln3/y/b/a/t0/t$a;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object v0

    .line 9
    iget-wide v0, v0, Ln3/y/b/a/l0$c;->j:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    goto :goto_2

    .line 10
    :cond_3
    iget-wide v0, v0, Ln3/y/b/a/d0;->k:J

    .line 11
    iget-object v2, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v2}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v0, v0, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    .line 13
    invoke-virtual {v1, v0, v2}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v0

    .line 14
    iget-object v1, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v1, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    iget v1, v1, Ln3/y/b/a/t0/t$a;->b:I

    .line 15
    iget-object v2, v0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v2, v2, Ln3/y/b/a/t0/o0/a;->b:[J

    aget-wide v1, v2, v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 16
    iget-wide v0, v0, Ln3/y/b/a/l0$b;->d:J

    goto :goto_1

    :cond_4
    move-wide v0, v1

    .line 17
    :cond_5
    :goto_1
    iget-object v2, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    invoke-virtual {p0, v2, v0, v1}, Ln3/y/b/a/t;->i(Ln3/y/b/a/t0/t$a;J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public c()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v2, v1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 4
    iget-object v0, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    iget v2, v1, Ln3/y/b/a/t0/t$a;->b:I

    iget v1, v1, Ln3/y/b/a/t0/t$a;->c:I

    invoke-virtual {v0, v2, v1}, Ln3/y/b/a/l0$b;->a(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentTimeline()Ln3/y/b/a/l0;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object v0

    .line 9
    iget-wide v0, v0, Ln3/y/b/a/l0$c;->j:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final d(ZZZI)Ln3/y/b/a/d0;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput v3, v0, Ln3/y/b/a/t;->t:I

    .line 2
    iput v3, v0, Ln3/y/b/a/t;->u:I

    .line 3
    iput-wide v1, v0, Ln3/y/b/a/t;->v:J

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v4

    iput v4, v0, Ln3/y/b/a/t;->t:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget v4, v0, Ln3/y/b/a/t;->u:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v5, v4, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v4, v4, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-object v4, v4, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v4

    .line 8
    :goto_0
    iput v4, v0, Ln3/y/b/a/t;->u:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Ln3/y/b/a/t;->v:J

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_4

    .line 10
    iget-object v5, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v6, v0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    iget-object v7, v0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    invoke-virtual {v5, v3, v6, v7}, Ln3/y/b/a/d0;->e(ZLn3/y/b/a/l0$c;Ln3/y/b/a/l0$b;)Ln3/y/b/a/t0/t$a;

    move-result-object v3

    goto :goto_4

    .line 11
    :cond_4
    iget-object v3, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v3, v3, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    :goto_4
    move-object/from16 v17, v3

    if-eqz v4, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    iget-object v1, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v1, v1, Ln3/y/b/a/d0;->m:J

    :goto_5
    move-wide/from16 v22, v1

    if-eqz v4, :cond_6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    .line 13
    :cond_6
    iget-object v1, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v1, v1, Ln3/y/b/a/d0;->d:J

    :goto_6
    move-wide v10, v1

    .line 14
    new-instance v1, Ln3/y/b/a/d0;

    if-eqz p2, :cond_7

    .line 15
    sget-object v2, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    goto :goto_7

    :cond_7
    iget-object v2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    :goto_7
    move-object v6, v2

    if-eqz p3, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    .line 16
    :cond_8
    iget-object v2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    :goto_8
    move-object v13, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_9

    .line 17
    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_9

    :cond_9
    iget-object v2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_9
    move-object v15, v2

    if-eqz p2, :cond_a

    .line 18
    iget-object v2, v0, Ln3/y/b/a/t;->b:Ln3/y/b/a/v0/h;

    goto :goto_a

    :cond_a
    iget-object v2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    :goto_a
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move/from16 v12, p4

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    return-object v1
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Ln3/y/b/a/a$b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Ln3/y/b/a/k;

    invoke-direct {v1, v0, p1}, Ln3/y/b/a/k;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    invoke-virtual {p0, v1}, Ln3/y/b/a/t;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContentPosition()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    invoke-virtual {v1, v0, v2}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v1, v0, Ln3/y/b/a/d0;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object v0

    .line 5
    iget-wide v0, v0, Ln3/y/b/a/l0$c;->i:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    .line 7
    iget-wide v0, v0, Ln3/y/b/a/l0$b;->e:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v2, v2, Ln3/y/b/a/d0;->d:J

    invoke-static {v2, v3}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/t;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget v0, v0, Ln3/y/b/a/t0/t$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget v0, v0, Ln3/y/b/a/t0/t$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Ln3/y/b/a/t;->v:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v2, v0, Ln3/y/b/a/d0;->m:J

    invoke-virtual {p0, v1, v2, v3}, Ln3/y/b/a/t;->i(Ln3/y/b/a/t0/t$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Ln3/y/b/a/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ln3/y/b/a/t;->t:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    invoke-virtual {v1, v0, v2}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v0

    iget v0, v0, Ln3/y/b/a/l0$b;->c:I

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->l:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Ln3/y/b/a/t0/t$a;J)J
    .locals 2

    .line 1
    invoke-static {p2, p3}, Ln3/y/b/a/c;->b(J)J

    move-result-wide p2

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object p1, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    .line 4
    iget-wide v0, p1, Ln3/y/b/a/l0$b;->e:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public j(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    if-ltz p1, :cond_5

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ln3/y/b/a/l0;->o()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ln3/y/b/a/t;->o:Z

    .line 4
    iget v2, p0, Ln3/y/b/a/t;->m:I

    add-int/2addr v2, v1

    iput v2, p0, Ln3/y/b/a/t;->m:I

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/t;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Ln3/y/b/a/t;->e:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    .line 7
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 9
    :cond_1
    iput p1, p0, Ln3/y/b/a/t;->t:I

    .line 10
    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

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
    iput-wide v4, p0, Ln3/y/b/a/t;->v:J

    .line 12
    iput v3, p0, Ln3/y/b/a/t;->u:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v6

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    .line 14
    invoke-virtual {v0, p1, v1, v4, v5}, Ln3/y/b/a/l0;->n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;

    move-result-object v1

    .line 15
    iget-wide v1, v1, Ln3/y/b/a/l0$c;->i:J

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p2, p3}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 17
    iget-object v2, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    iget-object v3, p0, Ln3/y/b/a/t;->i:Ln3/y/b/a/l0$b;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 18
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/l0;->j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 19
    invoke-static {v7, v8}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Ln3/y/b/a/t;->v:J

    .line 20
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Ln3/y/b/a/t;->u:I

    .line 21
    :goto_2
    iget-object v1, p0, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    invoke-static {p2, p3}, Ln3/y/b/a/c;->a(J)J

    move-result-wide p2

    .line 22
    iget-object v1, v1, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    new-instance v2, Ln3/y/b/a/v$e;

    invoke-direct {v2, v0, p1, p2, p3}, Ln3/y/b/a/v$e;-><init>(Ln3/y/b/a/l0;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1, v2}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 24
    sget-object p1, Ln3/y/b/a/h;->a:Ln3/y/b/a/a$b;

    invoke-virtual {p0, p1}, Ln3/y/b/a/t;->g(Ln3/y/b/a/a$b;)V

    return-void

    .line 25
    :cond_5
    new-instance v1, Ln3/y/b/a/y;

    invoke-direct {v1, v0, p1, p2, p3}, Ln3/y/b/a/y;-><init>(Ln3/y/b/a/l0;IJ)V

    throw v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ln3/y/b/a/t;->m:I

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

.method public final l(Ln3/y/b/a/d0;ZIIZ)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v3, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    move-object v2, p1

    .line 2
    iput-object v2, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    .line 3
    new-instance v11, Ln3/y/b/a/t$a;

    iget-object v4, v0, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Ln3/y/b/a/t;->d:Ln3/y/b/a/v0/g;

    iget-boolean v10, v0, Ln3/y/b/a/t;->k:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Ln3/y/b/a/t$a;-><init>(Ln3/y/b/a/d0;Ln3/y/b/a/d0;Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/v0/g;ZIIZZ)V

    invoke-virtual {p0, v11}, Ln3/y/b/a/t;->h(Ljava/lang/Runnable;)V

    return-void
.end method
