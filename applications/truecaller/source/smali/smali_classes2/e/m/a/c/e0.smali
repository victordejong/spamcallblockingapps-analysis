.class public final Le/m/a/c/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Le/m/a/c/l1/o$a;
.implements Le/m/a/c/l1/p$b;
.implements Le/m/a/c/z$a;
.implements Le/m/a/c/s0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/e0$d;,
        Le/m/a/c/e0$b;,
        Le/m/a/c/e0$c;,
        Le/m/a/c/e0$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Le/m/a/c/e0$e;

.field public J:J

.field public K:I

.field public L:Z

.field public final a:[Le/m/a/c/u0;

.field public final b:[Le/m/a/c/u;

.field public final c:Le/m/a/c/n1/h;

.field public final d:Le/m/a/c/n1/i;

.field public final e:Le/m/a/c/i0;

.field public final f:Le/m/a/c/p1/f;

.field public final g:Le/m/a/c/q1/a0;

.field public final h:Landroid/os/HandlerThread;

.field public final i:Landroid/os/Handler;

.field public final j:Le/m/a/c/y0$c;

.field public final k:Le/m/a/c/y0$b;

.field public final l:J

.field public final m:Z

.field public final n:Le/m/a/c/z;

.field public final o:Le/m/a/c/e0$d;

.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/c/e0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Le/m/a/c/q1/f;

.field public final r:Le/m/a/c/l0;

.field public s:Le/m/a/c/x0;

.field public t:Le/m/a/c/n0;

.field public u:Le/m/a/c/l1/p;

.field public v:[Le/m/a/c/u0;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>([Le/m/a/c/u0;Le/m/a/c/n1/h;Le/m/a/c/n1/i;Le/m/a/c/i0;Le/m/a/c/p1/f;ZIZLandroid/os/Handler;Le/m/a/c/q1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    .line 3
    iput-object p2, p0, Le/m/a/c/e0;->c:Le/m/a/c/n1/h;

    .line 4
    iput-object p3, p0, Le/m/a/c/e0;->d:Le/m/a/c/n1/i;

    .line 5
    iput-object p4, p0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    .line 6
    iput-object p5, p0, Le/m/a/c/e0;->f:Le/m/a/c/p1/f;

    .line 7
    iput-boolean p6, p0, Le/m/a/c/e0;->x:Z

    .line 8
    iput p7, p0, Le/m/a/c/e0;->A:I

    .line 9
    iput-boolean p8, p0, Le/m/a/c/e0;->B:Z

    .line 10
    iput-object p9, p0, Le/m/a/c/e0;->i:Landroid/os/Handler;

    .line 11
    iput-object p10, p0, Le/m/a/c/e0;->q:Le/m/a/c/q1/f;

    .line 12
    new-instance p6, Le/m/a/c/l0;

    invoke-direct {p6}, Le/m/a/c/l0;-><init>()V

    iput-object p6, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 13
    invoke-interface {p4}, Le/m/a/c/i0;->e()J

    move-result-wide p6

    iput-wide p6, p0, Le/m/a/c/e0;->l:J

    .line 14
    invoke-interface {p4}, Le/m/a/c/i0;->a()Z

    move-result p4

    iput-boolean p4, p0, Le/m/a/c/e0;->m:Z

    .line 15
    sget-object p4, Le/m/a/c/x0;->d:Le/m/a/c/x0;

    iput-object p4, p0, Le/m/a/c/e0;->s:Le/m/a/c/x0;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    invoke-static {p6, p7, p3}, Le/m/a/c/n0;->d(JLe/m/a/c/n1/i;)Le/m/a/c/n0;

    move-result-object p3

    iput-object p3, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 17
    new-instance p3, Le/m/a/c/e0$d;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Le/m/a/c/e0$d;-><init>(Le/m/a/c/e0$a;)V

    iput-object p3, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    .line 18
    array-length p3, p1

    new-array p3, p3, [Le/m/a/c/u;

    iput-object p3, p0, Le/m/a/c/e0;->b:[Le/m/a/c/u;

    const/4 p3, 0x0

    move p4, p3

    .line 19
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 20
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Le/m/a/c/u0;->d(I)V

    .line 21
    iget-object p6, p0, Le/m/a/c/e0;->b:[Le/m/a/c/u;

    aget-object p7, p1, p4

    invoke-interface {p7}, Le/m/a/c/u0;->q()Le/m/a/c/u;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Le/m/a/c/z;

    invoke-direct {p1, p0, p10}, Le/m/a/c/z;-><init>(Le/m/a/c/z$a;Le/m/a/c/q1/f;)V

    iput-object p1, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    new-array p1, p3, [Le/m/a/c/u0;

    .line 24
    iput-object p1, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    .line 25
    new-instance p1, Le/m/a/c/y0$c;

    invoke-direct {p1}, Le/m/a/c/y0$c;-><init>()V

    iput-object p1, p0, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    .line 26
    new-instance p1, Le/m/a/c/y0$b;

    invoke-direct {p1}, Le/m/a/c/y0$b;-><init>()V

    iput-object p1, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    .line 27
    iput-object p5, p2, Le/m/a/c/n1/h;->a:Le/m/a/c/p1/f;

    .line 28
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    .line 29
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 30
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Le/m/a/c/q1/f;->c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Le/m/a/c/q1/a0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Le/m/a/c/e0;->L:Z

    return-void
.end method

.method public static h(Le/m/a/c/n1/f;)[Lcom/google/android/exoplayer2/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Le/m/a/c/n1/f;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Le/m/a/c/n1/f;->h(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final A(ZZZZZ)V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    iget-object v0, v1, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 2
    iget-object v0, v0, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Le/m/a/c/e0;->y:Z

    .line 4
    iget-object v0, v1, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 5
    iput-boolean v3, v0, Le/m/a/c/z;->f:Z

    .line 6
    iget-object v0, v0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 7
    iget-boolean v4, v0, Le/m/a/c/q1/y;->b:Z

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v0}, Le/m/a/c/q1/y;->r()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Le/m/a/c/q1/y;->a(J)V

    .line 9
    iput-boolean v3, v0, Le/m/a/c/q1/y;->b:Z

    :cond_0
    const-wide/16 v4, 0x0

    .line 10
    iput-wide v4, v1, Le/m/a/c/e0;->J:J

    .line 11
    iget-object v4, v1, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v0, v4, v6

    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Le/m/a/c/e0;->d(Le/m/a/c/u0;)V
    :try_end_0
    .catch Le/m/a/c/b0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    .line 13
    invoke-static {v7, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    iget-object v4, v1, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 15
    :try_start_1
    invoke-interface {v0}, Le/m/a/c/u0;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 16
    invoke-static {v0, v7}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    new-array v0, v3, [Le/m/a/c/u0;

    .line 17
    iput-object v0, v1, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 18
    iput-object v0, v1, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;

    goto :goto_5

    :cond_3
    if-eqz p4, :cond_5

    .line 19
    iget-object v4, v1, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;

    if-nez v4, :cond_4

    iget-object v4, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v4, v4, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v4}, Le/m/a/c/y0;->p()Z

    move-result v4

    if-nez v4, :cond_4

    .line 20
    iget-object v4, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v5, v4, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v4, v4, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v4, v4, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v6, v1, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    invoke-virtual {v5, v4, v6}, Le/m/a/c/y0;->h(Ljava/lang/Object;Le/m/a/c/y0$b;)Le/m/a/c/y0$b;

    .line 21
    iget-object v4, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v4, v4, Le/m/a/c/n0;->m:J

    iget-object v6, v1, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    .line 22
    iget-wide v7, v6, Le/m/a/c/y0$b;->d:J

    add-long/2addr v4, v7

    .line 23
    new-instance v7, Le/m/a/c/e0$e;

    iget v6, v6, Le/m/a/c/y0$b;->b:I

    invoke-direct {v7, v2, v6, v4, v5}, Le/m/a/c/e0$e;-><init>(Le/m/a/c/y0;IJ)V

    iput-object v7, v1, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;

    :cond_4
    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    :goto_5
    move/from16 v4, p3

    .line 24
    :goto_6
    iget-object v5, v1, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    xor-int/lit8 v6, p4, 0x1

    invoke-virtual {v5, v6}, Le/m/a/c/l0;->b(Z)V

    .line 25
    iput-boolean v3, v1, Le/m/a/c/e0;->z:Z

    if-eqz p4, :cond_7

    .line 26
    iget-object v5, v1, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 27
    iput-object v2, v5, Le/m/a/c/l0;->d:Le/m/a/c/y0;

    .line 28
    iget-object v5, v1, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/e0$c;

    .line 29
    iget-object v6, v6, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    invoke-virtual {v6, v3}, Le/m/a/c/s0;->b(Z)V

    goto :goto_7

    .line 30
    :cond_6
    iget-object v5, v1, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 31
    iput v3, v1, Le/m/a/c/e0;->K:I

    :cond_7
    if-eqz v4, :cond_8

    .line 32
    iget-object v3, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-boolean v5, v1, Le/m/a/c/e0;->B:Z

    iget-object v6, v1, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget-object v7, v1, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    .line 33
    invoke-virtual {v3, v5, v6, v7}, Le/m/a/c/n0;->e(ZLe/m/a/c/y0$c;Le/m/a/c/y0$b;)Le/m/a/c/l1/p$a;

    move-result-object v3

    goto :goto_8

    :cond_8
    iget-object v3, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v3, v3, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    :goto_8
    move-object/from16 v17, v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_9

    move-wide/from16 v22, v5

    goto :goto_9

    .line 34
    :cond_9
    iget-object v3, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v7, v3, Le/m/a/c/n0;->m:J

    move-wide/from16 v22, v7

    :goto_9
    if-eqz v4, :cond_a

    move-wide v10, v5

    goto :goto_a

    .line 35
    :cond_a
    iget-object v3, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v3, v3, Le/m/a/c/n0;->d:J

    move-wide v10, v3

    .line 36
    :goto_a
    new-instance v3, Le/m/a/c/n0;

    if-eqz p4, :cond_b

    goto :goto_b

    :cond_b
    iget-object v2, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    :goto_b
    move-object v6, v2

    iget-object v2, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v12, v2, Le/m/a/c/n0;->e:I

    if-eqz p5, :cond_c

    move-object v13, v0

    goto :goto_c

    :cond_c
    iget-object v4, v2, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    move-object v13, v4

    :goto_c
    const/4 v14, 0x0

    if-eqz p4, :cond_d

    sget-object v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_d

    :cond_d
    iget-object v4, v2, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_d
    move-object v15, v4

    if-eqz p4, :cond_e

    iget-object v2, v1, Le/m/a/c/e0;->d:Le/m/a/c/n1/i;

    goto :goto_e

    :cond_e
    iget-object v2, v2, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    :goto_e
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v3

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    iput-object v3, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-eqz p2, :cond_f

    .line 37
    iget-object v2, v1, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    if-eqz v2, :cond_f

    .line 38
    invoke-interface {v2, v1}, Le/m/a/c/l1/p;->b(Le/m/a/c/l1/p$b;)V

    .line 39
    iput-object v0, v1, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    :cond_f
    return-void
.end method

.method public final B(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, v0, Le/m/a/c/j0;->n:J

    add-long/2addr p1, v0

    .line 4
    :goto_0
    iput-wide p1, p0, Le/m/a/c/e0;->J:J

    .line 5
    iget-object v0, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 6
    iget-object v0, v0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v0, p1, p2}, Le/m/a/c/q1/y;->a(J)V

    .line 7
    iget-object p1, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 8
    iget-wide v3, p0, Le/m/a/c/e0;->J:J

    invoke-interface {v2, v3, v4}, Le/m/a/c/u0;->l(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 10
    iget-object p1, p1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    :goto_2
    if-eqz p1, :cond_4

    .line 11
    iget-object p2, p1, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 12
    iget-object p2, p2, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-virtual {p2}, Le/m/a/c/n1/g;->a()[Le/m/a/c/n1/f;

    move-result-object p2

    .line 13
    array-length v1, p2

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {v3}, Le/m/a/c/n1/f;->e()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_3
    iget-object p1, p1, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final C(Le/m/a/c/e0$c;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Le/m/a/c/e0$c;->d:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p1, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    .line 3
    iget-object v3, v0, Le/m/a/c/s0;->c:Le/m/a/c/y0;

    .line 4
    iget v7, v0, Le/m/a/c/s0;->g:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5}, Le/m/a/c/v;->a(J)J

    move-result-wide v8

    .line 6
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 7
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Le/m/a/c/y0;->p()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 9
    :cond_1
    :try_start_0
    iget-object v5, p0, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget-object v6, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    move-object v4, v3

    .line 10
    invoke-virtual/range {v4 .. v9}, Le/m/a/c/y0;->j(Le/m/a/c/y0$c;Le/m/a/c/y0$b;IJ)Landroid/util/Pair;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_2

    :goto_0
    move-object v10, v4

    goto :goto_1

    .line 11
    :cond_2
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    if-nez v10, :cond_4

    return v2

    .line 12
    :cond_4
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    iput v0, p1, Le/m/a/c/e0$c;->b:I

    .line 16
    iput-wide v1, p1, Le/m/a/c/e0$c;->c:J

    .line 17
    iput-object v3, p1, Le/m/a/c/e0$c;->d:Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v3, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v3, v3, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v3, v0}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_6

    return v2

    .line 19
    :cond_6
    iput v0, p1, Le/m/a/c/e0$c;->b:I

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final D(Le/m/a/c/e0$e;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/e0$e;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 2
    iget-object v1, p1, Le/m/a/c/e0$e;->a:Le/m/a/c/y0;

    .line 3
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {v1}, Le/m/a/c/y0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 5
    :cond_1
    :try_start_0
    iget-object v5, p0, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget-object v6, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    iget v7, p1, Le/m/a/c/e0$e;->b:I

    iget-wide v8, p1, Le/m/a/c/e0$e;->c:J

    move-object v4, v1

    .line 6
    invoke-virtual/range {v4 .. v9}, Le/m/a/c/y0;->j(Le/m/a/c/y0$c;Le/m/a/c/y0$b;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 7
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Le/m/a/c/e0;->E(Ljava/lang/Object;Le/m/a/c/y0;Le/m/a/c/y0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p2, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    .line 10
    invoke-virtual {v0, p1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Le/m/a/c/y0;->g(ILe/m/a/c/y0$b;Z)Le/m/a/c/y0$b;

    move-result-object p1

    .line 11
    iget p1, p1, Le/m/a/c/y0$b;->b:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    invoke-virtual {p0, v0, p1, v1, v2}, Le/m/a/c/e0;->j(Le/m/a/c/y0;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method public final E(Ljava/lang/Object;Le/m/a/c/y0;Le/m/a/c/y0;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p2, p1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Le/m/a/c/y0;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move p1, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v5, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    iget-object v6, p0, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget v7, p0, Le/m/a/c/e0;->A:I

    iget-boolean v8, p0, Le/m/a/c/e0;->B:Z

    move-object v3, p2

    .line 4
    invoke-virtual/range {v3 .. v8}, Le/m/a/c/y0;->d(ILe/m/a/c/y0$b;Le/m/a/c/y0$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2, v4}, Le/m/a/c/y0;->l(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p3, p1}, Le/m/a/c/y0;->l(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final F(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 2
    iget-object v0, v0, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    add-long/2addr p1, p3

    .line 4
    iget-object p3, v0, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final G(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 3
    iget-object v0, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v2, v0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    .line 4
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v2, v0, v1, v3}, Le/m/a/c/e0;->I(Le/m/a/c/l1/p$a;JZ)J

    move-result-wide v3

    .line 6
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v5, v0, Le/m/a/c/n0;->d:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Le/m/a/c/e0$d;->b(I)V

    :cond_0
    return-void
.end method

.method public final H(Le/m/a/c/e0$e;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v7, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Le/m/a/c/e0$d;->a(I)V

    .line 2
    invoke-virtual {v7, v0, v2}, Le/m/a/c/e0;->D(Le/m/a/c/e0$e;Z)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-boolean v6, v7, Le/m/a/c/e0;->B:Z

    iget-object v10, v7, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget-object v11, v7, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    invoke-virtual {v1, v6, v10, v11}, Le/m/a/c/n0;->e(ZLe/m/a/c/y0$c;Le/m/a/c/y0$b;)Le/m/a/c/l1/p$a;

    move-result-object v1

    move-object v11, v1

    move v10, v2

    move-wide v12, v8

    move-wide v14, v12

    goto :goto_1

    .line 4
    :cond_0
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 5
    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 6
    iget-object v12, v7, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {v12, v6, v10, v11}, Le/m/a/c/l0;->k(Ljava/lang/Object;J)Le/m/a/c/l1/p$a;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Le/m/a/c/l1/p$a;->a()Z

    move-result v12

    if-eqz v12, :cond_1

    move v1, v2

    move-wide v12, v4

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 9
    iget-wide v14, v0, Le/m/a/c/e0$e;->c:J

    cmp-long v1, v14, v8

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-wide v14, v10

    move v10, v1

    move-object v11, v6

    :goto_1
    const/4 v6, 0x2

    .line 10
    :try_start_0
    iget-object v1, v7, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    if-eqz v1, :cond_b

    iget v1, v7, Le/m/a/c/e0;->D:I

    if-lez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    cmp-long v0, v12, v8

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 11
    invoke-virtual {v7, v0}, Le/m/a/c/e0;->R(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move v8, v6

    move v6, v0

    .line 12
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->A(ZZZZZ)V

    goto/16 :goto_6

    :cond_4
    move v8, v6

    .line 13
    iget-object v0, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v11, v0}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, v7, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 15
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-eqz v0, :cond_5

    .line 16
    iget-boolean v1, v0, Le/m/a/c/j0;->d:Z

    if-eqz v1, :cond_5

    cmp-long v1, v12, v4

    if-eqz v1, :cond_5

    .line 17
    iget-object v0, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    iget-object v1, v7, Le/m/a/c/e0;->s:Le/m/a/c/x0;

    .line 18
    invoke-interface {v0, v12, v13, v1}, Le/m/a/c/l1/o;->p(JLe/m/a/c/x0;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    move-wide v0, v12

    .line 19
    :goto_2
    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v4

    iget-object v6, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v2, v6, Le/m/a/c/n0;->m:J

    invoke-static {v2, v3}, Le/m/a/c/v;->b(J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    .line 20
    iget-object v0, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v3, v0, Le/m/a/c/n0;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v5, v14

    .line 21
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-eqz v10, :cond_6

    .line 22
    iget-object v0, v7, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    invoke-virtual {v0, v8}, Le/m/a/c/e0$d;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v0, v12

    .line 23
    :cond_8
    :try_start_2
    iget-object v2, v7, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 24
    iget-object v3, v2, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 25
    iget-object v2, v2, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-eq v3, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 26
    :goto_3
    invoke-virtual {v7, v11, v0, v1, v2}, Le/m/a/c/e0;->I(Le/m/a/c/l1/p$a;JZ)J

    move-result-wide v0

    cmp-long v2, v12, v0

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v10, v2

    move-wide v3, v0

    goto :goto_7

    :cond_b
    :goto_5
    move v8, v6

    .line 27
    iput-object v0, v7, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    move-wide v3, v12

    :goto_7
    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v5, v14

    .line 28
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-eqz v10, :cond_c

    .line 29
    iget-object v0, v7, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    invoke-virtual {v0, v8}, Le/m/a/c/e0$d;->b(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move v8, v6

    :goto_8
    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v3, v12

    move-wide v5, v14

    .line 30
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v1

    iput-object v1, v7, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-eqz v10, :cond_d

    .line 31
    iget-object v1, v7, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    invoke-virtual {v1, v8}, Le/m/a/c/e0$d;->b(I)V

    .line 32
    :cond_d
    throw v0
.end method

.method public final I(Le/m/a/c/l1/p$a;JZ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/c/e0;->U()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/m/a/c/e0;->y:Z

    .line 3
    iget-object v1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v2, v1, Le/m/a/c/n0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget-object v1, v1, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v1}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Le/m/a/c/e0;->R(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 6
    iget-object v1, v1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    iget-object v5, v2, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v5, v5, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {p1, v5}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Le/m/a/c/j0;->d:Z

    if-eqz v5, :cond_1

    .line 8
    iget-object p1, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {p1, v2}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {v2}, Le/m/a/c/l0;->a()Le/m/a/c/j0;

    move-result-object v2

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v5, 0x0

    if-nez p4, :cond_3

    if-ne v1, v2, :cond_3

    if-eqz v2, :cond_5

    .line 10
    iget-wide v7, v2, Le/m/a/c/j0;->n:J

    add-long/2addr v7, p2

    cmp-long p1, v7, v5

    if-gez p1, :cond_5

    .line 11
    :cond_3
    iget-object p1, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length p4, p1

    move v1, v0

    :goto_2
    if-ge v1, p4, :cond_4

    aget-object v7, p1, v1

    .line 12
    invoke-virtual {p0, v7}, Le/m/a/c/e0;->d(Le/m/a/c/u0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-array p1, v0, [Le/m/a/c/u0;

    .line 13
    iput-object p1, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    .line 14
    iput-wide v5, v2, Le/m/a/c/j0;->n:J

    :cond_5
    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {p0, v1}, Le/m/a/c/e0;->X(Le/m/a/c/j0;)V

    .line 16
    iget-boolean p1, v2, Le/m/a/c/j0;->e:Z

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, v2, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {p1, p2, p3}, Le/m/a/c/l1/o;->e(J)J

    move-result-wide p1

    .line 18
    iget-object p3, v2, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    iget-wide v1, p0, Le/m/a/c/e0;->l:J

    sub-long v1, p1, v1

    iget-boolean p4, p0, Le/m/a/c/e0;->m:Z

    invoke-interface {p3, v1, v2, p4}, Le/m/a/c/l1/o;->k(JZ)V

    move-wide p2, p1

    .line 19
    :cond_6
    invoke-virtual {p0, p2, p3}, Le/m/a/c/e0;->B(J)V

    .line 20
    invoke-virtual {p0}, Le/m/a/c/e0;->v()V

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {p1, v4}, Le/m/a/c/l0;->b(Z)V

    .line 22
    iget-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    sget-object p4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, p0, Le/m/a/c/e0;->d:Le/m/a/c/n1/i;

    .line 23
    invoke-virtual {p1, p4, v1}, Le/m/a/c/n0;->c(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;)Le/m/a/c/n0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 24
    invoke-virtual {p0, p2, p3}, Le/m/a/c/e0;->B(J)V

    .line 25
    :goto_3
    invoke-virtual {p0, v0}, Le/m/a/c/e0;->n(Z)V

    .line 26
    iget-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, v3}, Le/m/a/c/q1/a0;->d(I)Z

    return-wide p2
.end method

.method public final J(Le/m/a/c/s0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/m/a/c/s0;->f:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 3
    iget-object v1, v1, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->c(Le/m/a/c/s0;)V

    .line 5
    iget-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget p1, p1, Le/m/a/c/n0;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 6
    :cond_0
    iget-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, v1}, Le/m/a/c/q1/a0;->d(I)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final K(Le/m/a/c/s0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/m/a/c/s0;->f:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/m/a/c/s0;->b(Z)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Le/m/a/c/p;

    invoke-direct {v1, p0, p1}, Le/m/a/c/p;-><init>(Le/m/a/c/e0;Le/m/a/c/s0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final L()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v3}, Le/m/a/c/u0;->n()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final M(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/e0;->C:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Le/m/a/c/e0;->C:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Le/m/a/c/u0;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Le/m/a/c/u0;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final N(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/e0;->y:Z

    .line 2
    iput-boolean p1, p0, Le/m/a/c/e0;->x:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/a/c/e0;->U()V

    .line 4
    invoke-virtual {p0}, Le/m/a/c/e0;->W()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget p1, p1, Le/m/a/c/n0;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Le/m/a/c/e0;->S()V

    .line 7
    iget-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, v1}, Le/m/a/c/q1/a0;->d(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, v1}, Le/m/a/c/q1/a0;->d(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final O(Le/m/a/c/o0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    invoke-virtual {v0, p1}, Le/m/a/c/z;->t(Le/m/a/c/o0;)V

    .line 2
    iget-object p1, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 3
    invoke-virtual {p1}, Le/m/a/c/z;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Le/m/a/c/q1/a0;->b(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final P(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iput p1, p0, Le/m/a/c/e0;->A:I

    .line 2
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 3
    iput p1, v0, Le/m/a/c/l0;->e:I

    .line 4
    invoke-virtual {v0}, Le/m/a/c/l0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->G(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->n(Z)V

    return-void
.end method

.method public final Q(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Le/m/a/c/e0;->B:Z

    .line 2
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 3
    iput-boolean p1, v0, Le/m/a/c/l0;->f:Z

    .line 4
    invoke-virtual {v0}, Le/m/a/c/l0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->G(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->n(Z)V

    return-void
.end method

.method public final R(I)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v2, v1, Le/m/a/c/n0;->e:I

    move/from16 v10, p1

    if-eq v2, v10, :cond_0

    .line 2
    new-instance v2, Le/m/a/c/n0;

    move-object v3, v2

    iget-object v4, v1, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v5, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v6, v1, Le/m/a/c/n0;->c:J

    iget-wide v8, v1, Le/m/a/c/n0;->d:J

    iget-object v11, v1, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    iget-boolean v12, v1, Le/m/a/c/n0;->g:Z

    iget-object v13, v1, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v14, v1, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v15, v1, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    iget-wide v2, v1, Le/m/a/c/n0;->k:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Le/m/a/c/n0;->l:J

    move-wide/from16 v18, v2

    iget-wide v1, v1, Le/m/a/c/n0;->m:J

    move-wide/from16 v20, v1

    move/from16 v10, p1

    move-object/from16 v3, v23

    invoke-direct/range {v3 .. v21}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    move-object/from16 v1, v22

    .line 3
    iput-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/e0;->y:Z

    .line 2
    iget-object v1, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Le/m/a/c/z;->f:Z

    .line 4
    iget-object v1, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v1}, Le/m/a/c/q1/y;->b()V

    .line 5
    iget-object v1, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 6
    invoke-interface {v3}, Le/m/a/c/u0;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T(ZZZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Le/m/a/c/e0;->C:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    const/4 v4, 0x1

    move-object v2, p0

    move v5, p2

    move v6, p2

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Le/m/a/c/e0;->A(ZZZZZ)V

    .line 2
    iget-object p1, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    iget p2, p0, Le/m/a/c/e0;->D:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Le/m/a/c/e0$d;->a(I)V

    .line 3
    iput v0, p0, Le/m/a/c/e0;->D:I

    .line 4
    iget-object p1, p0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    invoke-interface {p1}, Le/m/a/c/i0;->g()V

    .line 5
    invoke-virtual {p0, v1}, Le/m/a/c/e0;->R(I)V

    return-void
.end method

.method public final U()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/m/a/c/z;->f:Z

    .line 3
    iget-object v0, v0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 4
    iget-boolean v2, v0, Le/m/a/c/q1/y;->b:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Le/m/a/c/q1/y;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Le/m/a/c/q1/y;->a(J)V

    .line 6
    iput-boolean v1, v0, Le/m/a/c/q1/y;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 8
    invoke-interface {v3}, Le/m/a/c/u0;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 9
    invoke-interface {v3}, Le/m/a/c/u0;->stop()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final V()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v1, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 3
    iget-boolean v2, v0, Le/m/a/c/e0;->z:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    .line 4
    invoke-interface {v1}, Le/m/a/c/l1/o;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v11, v1

    .line 5
    iget-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-boolean v2, v1, Le/m/a/c/n0;->g:Z

    if-eq v11, v2, :cond_2

    .line 6
    new-instance v15, Le/m/a/c/n0;

    move-object v2, v15

    iget-object v3, v1, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v4, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v5, v1, Le/m/a/c/n0;->c:J

    iget-wide v7, v1, Le/m/a/c/n0;->d:J

    iget v9, v1, Le/m/a/c/n0;->e:I

    iget-object v10, v1, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    iget-object v12, v1, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v13, v1, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v14, v1, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    iget-wide v2, v1, Le/m/a/c/n0;->k:J

    move-object v0, v15

    move-wide v15, v2

    iget-wide v2, v1, Le/m/a/c/n0;->l:J

    move-wide/from16 v17, v2

    iget-wide v1, v1, Le/m/a/c/n0;->m:J

    move-wide/from16 v19, v1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct/range {v2 .. v20}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    move-object/from16 v1, p0

    .line 7
    iput-object v0, v1, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    return-void
.end method

.method public final W()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Le/m/a/c/j0;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    .line 4
    invoke-interface {v1}, Le/m/a/c/l1/o;->f()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_0

    :cond_1
    move-wide v8, v2

    :goto_0
    cmp-long v1, v8, v2

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v8, v9}, Le/m/a/c/e0;->B(J)V

    .line 6
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v7, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v10, v0, Le/m/a/c/n0;->d:J

    move-object v6, p0

    .line 8
    invoke-virtual/range {v6 .. v11}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 9
    iget-object v0, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Le/m/a/c/e0$d;->b(I)V

    goto/16 :goto_a

    .line 10
    :cond_2
    iget-object v1, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    iget-object v2, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 11
    iget-object v2, v2, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    .line 12
    :goto_1
    iget-object v5, v1, Le/m/a/c/z;->c:Le/m/a/c/u0;

    if-eqz v5, :cond_5

    .line 13
    invoke-interface {v5}, Le/m/a/c/u0;->c()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Le/m/a/c/z;->c:Le/m/a/c/u0;

    .line 14
    invoke-interface {v5}, Le/m/a/c/u0;->b()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_5

    iget-object v2, v1, Le/m/a/c/z;->c:Le/m/a/c/u0;

    .line 15
    invoke-interface {v2}, Le/m/a/c/u0;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_6

    .line 16
    iput-boolean v3, v1, Le/m/a/c/z;->e:Z

    .line 17
    iget-boolean v2, v1, Le/m/a/c/z;->f:Z

    if-eqz v2, :cond_a

    .line 18
    iget-object v2, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v2}, Le/m/a/c/q1/y;->b()V

    goto :goto_4

    .line 19
    :cond_6
    iget-object v2, v1, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    invoke-interface {v2}, Le/m/a/c/q1/p;->r()J

    move-result-wide v5

    .line 20
    iget-boolean v2, v1, Le/m/a/c/z;->e:Z

    if-eqz v2, :cond_8

    .line 21
    iget-object v2, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v2}, Le/m/a/c/q1/y;->r()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_7

    .line 22
    iget-object v2, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 23
    iget-boolean v5, v2, Le/m/a/c/q1/y;->b:Z

    if-eqz v5, :cond_a

    .line 24
    invoke-virtual {v2}, Le/m/a/c/q1/y;->r()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Le/m/a/c/q1/y;->a(J)V

    .line 25
    iput-boolean v4, v2, Le/m/a/c/q1/y;->b:Z

    goto :goto_4

    .line 26
    :cond_7
    iput-boolean v4, v1, Le/m/a/c/z;->e:Z

    .line 27
    iget-boolean v2, v1, Le/m/a/c/z;->f:Z

    if-eqz v2, :cond_8

    .line 28
    iget-object v2, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v2}, Le/m/a/c/q1/y;->b()V

    .line 29
    :cond_8
    iget-object v2, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v2, v5, v6}, Le/m/a/c/q1/y;->a(J)V

    .line 30
    iget-object v2, v1, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    invoke-interface {v2}, Le/m/a/c/q1/p;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v2

    .line 31
    iget-object v5, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 32
    iget-object v5, v5, Le/m/a/c/q1/y;->e:Le/m/a/c/o0;

    .line 33
    invoke-virtual {v2, v5}, Le/m/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 34
    iget-object v5, v1, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 35
    iget-boolean v6, v5, Le/m/a/c/q1/y;->b:Z

    if-eqz v6, :cond_9

    .line 36
    invoke-virtual {v5}, Le/m/a/c/q1/y;->r()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Le/m/a/c/q1/y;->a(J)V

    .line 37
    :cond_9
    iput-object v2, v5, Le/m/a/c/q1/y;->e:Le/m/a/c/o0;

    .line 38
    iget-object v5, v1, Le/m/a/c/z;->b:Le/m/a/c/z$a;

    check-cast v5, Le/m/a/c/e0;

    .line 39
    iget-object v5, v5, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v6, 0x11

    .line 40
    invoke-virtual {v5, v6, v4, v4, v2}, Le/m/a/c/q1/a0;->b(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 42
    :cond_a
    :goto_4
    invoke-virtual {v1}, Le/m/a/c/z;->r()J

    move-result-wide v1

    .line 43
    iput-wide v1, p0, Le/m/a/c/e0;->J:J

    .line 44
    iget-wide v5, v0, Le/m/a/c/j0;->n:J

    sub-long/2addr v1, v5

    .line 45
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v5, v0, Le/m/a/c/n0;->m:J

    .line 46
    iget-object v0, p0, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v0}, Le/m/a/c/l1/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_9

    .line 47
    :cond_b
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v7, v0, Le/m/a/c/n0;->c:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_c

    iget-boolean v7, p0, Le/m/a/c/e0;->L:Z

    if-eqz v7, :cond_c

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 48
    :cond_c
    iput-boolean v4, p0, Le/m/a/c/e0;->L:Z

    .line 49
    iget-object v4, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    .line 50
    invoke-virtual {v4, v0}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    .line 51
    iget v4, p0, Le/m/a/c/e0;->K:I

    const/4 v7, 0x0

    if-lez v4, :cond_d

    iget-object v8, p0, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    .line 52
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    move-wide v10, v1

    move-wide v8, v5

    move-object v5, p0

    goto :goto_6

    :cond_d
    move-object v4, p0

    move-wide v8, v1

    :goto_5
    move-wide v10, v8

    move-wide v8, v5

    move-object v5, v4

    move-object v4, v7

    :goto_6
    if-eqz v4, :cond_10

    .line 53
    iget v6, v4, Le/m/a/c/e0$c;->b:I

    if-gt v6, v0, :cond_e

    if-ne v6, v0, :cond_10

    iget-wide v12, v4, Le/m/a/c/e0$c;->c:J

    cmp-long v4, v12, v8

    if-lez v4, :cond_10

    .line 54
    :cond_e
    iget v4, v5, Le/m/a/c/e0;->K:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Le/m/a/c/e0;->K:I

    if-lez v4, :cond_f

    .line 55
    iget-object v6, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    .line 56
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    goto :goto_6

    :cond_f
    move-object v4, v5

    move-wide v5, v8

    move-wide v8, v10

    goto :goto_5

    .line 57
    :cond_10
    iget v4, v5, Le/m/a/c/e0;->K:I

    iget-object v6, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_11

    iget-object v4, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    iget v6, v5, Le/m/a/c/e0;->K:I

    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    goto :goto_7

    :cond_11
    move-object v4, v7

    :goto_7
    if-eqz v4, :cond_13

    .line 60
    iget-object v6, v4, Le/m/a/c/e0$c;->d:Ljava/lang/Object;

    if-eqz v6, :cond_13

    iget v6, v4, Le/m/a/c/e0$c;->b:I

    if-lt v6, v0, :cond_12

    if-ne v6, v0, :cond_13

    iget-wide v12, v4, Le/m/a/c/e0$c;->c:J

    cmp-long v6, v12, v8

    if-gtz v6, :cond_13

    .line 61
    :cond_12
    iget v4, v5, Le/m/a/c/e0;->K:I

    add-int/2addr v4, v3

    iput v4, v5, Le/m/a/c/e0;->K:I

    .line 62
    iget-object v6, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_11

    iget-object v4, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    iget v6, v5, Le/m/a/c/e0;->K:I

    .line 64
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    goto :goto_7

    :cond_13
    :goto_8
    if-eqz v4, :cond_15

    .line 65
    iget-object v3, v4, Le/m/a/c/e0$c;->d:Ljava/lang/Object;

    if-eqz v3, :cond_15

    iget v3, v4, Le/m/a/c/e0$c;->b:I

    if-ne v3, v0, :cond_15

    iget-wide v12, v4, Le/m/a/c/e0$c;->c:J

    cmp-long v3, v12, v8

    if-lez v3, :cond_15

    cmp-long v3, v12, v10

    if-gtz v3, :cond_15

    .line 66
    :try_start_0
    iget-object v3, v4, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    invoke-virtual {v5, v3}, Le/m/a/c/e0;->J(Le/m/a/c/s0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v3, v4, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    iget v4, v5, Le/m/a/c/e0;->K:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    iget v3, v5, Le/m/a/c/e0;->K:I

    iget-object v4, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    iget-object v3, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    iget v4, v5, Le/m/a/c/e0;->K:I

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/m/a/c/e0$c;

    goto :goto_8

    :cond_14
    move-object v4, v7

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 72
    iget-object v1, v4, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, v5, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    iget v2, v5, Le/m/a/c/e0;->K:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    throw v0

    .line 75
    :cond_15
    :goto_9
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iput-wide v1, v0, Le/m/a/c/n0;->m:J

    .line 76
    :cond_16
    :goto_a
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 77
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 78
    iget-object v1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    invoke-virtual {v0}, Le/m/a/c/j0;->d()J

    move-result-wide v2

    iput-wide v2, v1, Le/m/a/c/n0;->k:J

    .line 79
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    invoke-virtual {p0}, Le/m/a/c/e0;->k()J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/n0;->l:J

    return-void
.end method

.method public final X(Le/m/a/c/j0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4
    :goto_0
    iget-object v5, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 5
    aget-object v5, v5, v3

    .line 6
    invoke-interface {v5}, Le/m/a/c/u0;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    aput-boolean v6, v1, v3

    .line 7
    iget-object v6, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 8
    invoke-virtual {v6, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 9
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 10
    iget-object v6, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 11
    invoke-virtual {v6, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-interface {v5}, Le/m/a/c/u0;->h()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-interface {v5}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v6

    iget-object v7, p1, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0, v5}, Le/m/a/c/e0;->d(Le/m/a/c/u0;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 16
    iget-object v2, v0, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 17
    iget-object v0, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 18
    invoke-virtual {p1, v2, v0}, Le/m/a/c/n0;->c(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;)Le/m/a/c/n0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 19
    invoke-virtual {p0, v1, v4}, Le/m/a/c/e0;->f([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Le/m/a/c/l1/p;Le/m/a/c/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    new-instance v1, Le/m/a/c/e0$b;

    invoke-direct {v1, p1, p2}, Le/m/a/c/e0$b;-><init>(Le/m/a/c/l1/p;Le/m/a/c/y0;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {v0, p1, v1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/e0;->L:Z

    .line 2
    iget-object v1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 3
    invoke-virtual {p0}, Le/m/a/c/e0;->k()J

    move-result-wide v7

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 4
    invoke-virtual/range {v1 .. v8}, Le/m/a/c/n0;->a(Le/m/a/c/l1/p$a;JJJ)Le/m/a/c/n0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Le/m/a/c/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/c/s0;->a()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p1, Le/m/a/c/s0;->a:Le/m/a/c/s0$b;

    .line 3
    iget v2, p1, Le/m/a/c/s0;->d:I

    .line 4
    iget-object v3, p1, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v2, v3}, Le/m/a/c/s0$b;->f(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Le/m/a/c/s0;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Le/m/a/c/s0;->b(Z)V

    .line 7
    throw v1
.end method

.method public final d(Le/m/a/c/u0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 2
    iget-object v1, v0, Le/m/a/c/z;->c:Le/m/a/c/u0;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    .line 4
    iput-object v1, v0, Le/m/a/c/z;->c:Le/m/a/c/u0;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Le/m/a/c/z;->e:Z

    .line 6
    :cond_0
    invoke-interface {p1}, Le/m/a/c/u0;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p1}, Le/m/a/c/u0;->stop()V

    .line 8
    :cond_1
    invoke-interface {p1}, Le/m/a/c/u0;->a()V

    return-void
.end method

.method public final e()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Le/m/a/c/e0;->q:Le/m/a/c/q1/f;

    invoke-interface {v0}, Le/m/a/c/q1/f;->b()J

    move-result-wide v7

    .line 2
    iget-object v0, v6, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_14

    .line 3
    :cond_0
    iget v1, v6, Le/m/a/c/e0;->D:I

    if-lez v1, :cond_1

    .line 4
    invoke-interface {v0}, Le/m/a/c/l1/p;->a()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-wide v1, v6, Le/m/a/c/e0;->J:J

    invoke-virtual {v0, v1, v2}, Le/m/a/c/l0;->i(J)V

    .line 6
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 7
    iget-object v1, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-eqz v1, :cond_3

    iget-object v2, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-boolean v2, v2, Le/m/a/c/k0;->g:Z

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Le/m/a/c/j0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    iget-object v1, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v1, v1, Le/m/a/c/k0;->e:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_2

    iget v0, v0, Le/m/a/c/l0;->j:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v13

    :goto_2
    if-eqz v0, :cond_d

    .line 9
    iget-object v14, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-wide v0, v6, Le/m/a/c/e0;->J:J

    iget-object v2, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 10
    iget-object v3, v14, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-nez v3, :cond_4

    .line 11
    iget-object v15, v2, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v0, v2, Le/m/a/c/n0;->d:J

    iget-wide v2, v2, Le/m/a/c/n0;->c:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Le/m/a/c/l0;->d(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/k0;

    move-result-object v0

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v14, v3, v0, v1}, Le/m/a/c/l0;->c(Le/m/a/c/j0;J)Le/m/a/c/k0;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_7

    .line 13
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 14
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, v6, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 16
    invoke-interface {v3}, Le/m/a/c/u0;->e()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 17
    :cond_6
    iget-object v0, v6, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    invoke-interface {v0}, Le/m/a/c/l1/p;->a()V

    goto/16 :goto_7

    .line 18
    :cond_7
    iget-object v1, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v15, v6, Le/m/a/c/e0;->b:[Le/m/a/c/u;

    iget-object v2, v6, Le/m/a/c/e0;->c:Le/m/a/c/n1/h;

    iget-object v3, v6, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    .line 19
    invoke-interface {v3}, Le/m/a/c/i0;->f()Le/m/a/c/p1/d;

    move-result-object v19

    iget-object v3, v6, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    iget-object v4, v6, Le/m/a/c/e0;->d:Le/m/a/c/n1/i;

    .line 20
    iget-object v5, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-nez v5, :cond_9

    iget-object v5, v0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    .line 21
    invoke-virtual {v5}, Le/m/a/c/l1/p$a;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-wide v11, v0, Le/m/a/c/k0;->c:J

    cmp-long v5, v11, v9

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v11, 0x0

    goto :goto_5

    .line 22
    :cond_9
    iget-wide v11, v5, Le/m/a/c/j0;->n:J

    .line 23
    iget-object v5, v5, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v9, v5, Le/m/a/c/k0;->e:J

    add-long/2addr v11, v9

    iget-wide v9, v0, Le/m/a/c/k0;->b:J

    sub-long/2addr v11, v9

    :goto_5
    move-wide/from16 v16, v11

    .line 24
    new-instance v5, Le/m/a/c/j0;

    move-object v14, v5

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    invoke-direct/range {v14 .. v22}, Le/m/a/c/j0;-><init>([Le/m/a/c/u;JLe/m/a/c/n1/h;Le/m/a/c/p1/d;Le/m/a/c/l1/p;Le/m/a/c/k0;Le/m/a/c/n1/i;)V

    .line 25
    iget-object v2, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-eqz v2, :cond_b

    .line 26
    iget-object v3, v2, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-ne v5, v3, :cond_a

    goto :goto_6

    .line 27
    :cond_a
    invoke-virtual {v2}, Le/m/a/c/j0;->b()V

    .line 28
    iput-object v5, v2, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    .line 29
    invoke-virtual {v2}, Le/m/a/c/j0;->c()V

    goto :goto_6

    .line 30
    :cond_b
    iput-object v5, v1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 31
    iput-object v5, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    :goto_6
    const/4 v2, 0x0

    .line 32
    iput-object v2, v1, Le/m/a/c/l0;->k:Ljava/lang/Object;

    .line 33
    iput-object v5, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 34
    iget v2, v1, Le/m/a/c/l0;->j:I

    add-int/2addr v2, v13

    iput v2, v1, Le/m/a/c/l0;->j:I

    .line 35
    iget-object v1, v5, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    iget-wide v2, v0, Le/m/a/c/k0;->b:J

    invoke-interface {v1, v6, v2, v3}, Le/m/a/c/l1/o;->q(Le/m/a/c/l1/o$a;J)V

    .line 36
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 37
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-ne v0, v5, :cond_c

    .line 38
    iget-object v0, v5, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v0, v0, Le/m/a/c/k0;->b:J

    iget-wide v2, v5, Le/m/a/c/j0;->n:J

    add-long/2addr v0, v2

    .line 39
    invoke-virtual {v6, v0, v1}, Le/m/a/c/e0;->B(J)V

    :cond_c
    const/4 v9, 0x0

    .line 40
    invoke-virtual {v6, v9}, Le/m/a/c/e0;->n(Z)V

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v9, 0x0

    .line 41
    :goto_8
    iget-boolean v0, v6, Le/m/a/c/e0;->z:Z

    if-eqz v0, :cond_e

    .line 42
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->t()Z

    move-result v0

    iput-boolean v0, v6, Le/m/a/c/e0;->z:Z

    .line 43
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->V()V

    goto :goto_9

    .line 44
    :cond_e
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->v()V

    .line 45
    :goto_9
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 46
    iget-object v0, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-nez v0, :cond_f

    goto/16 :goto_f

    .line 47
    :cond_f
    iget-object v1, v0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-nez v1, :cond_11

    .line 48
    iget-object v1, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-boolean v1, v1, Le/m/a/c/k0;->g:Z

    if-eqz v1, :cond_19

    move v1, v9

    .line 49
    :goto_a
    iget-object v2, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 50
    aget-object v2, v2, v1

    .line 51
    iget-object v3, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v3, v3, v1

    if-eqz v3, :cond_10

    .line 52
    invoke-interface {v2}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v4

    if-ne v4, v3, :cond_10

    .line 53
    invoke-interface {v2}, Le/m/a/c/u0;->e()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 54
    invoke-interface {v2}, Le/m/a/c/u0;->n()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 55
    :cond_11
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->s()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_f

    .line 56
    :cond_12
    iget-object v1, v0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    .line 57
    iget-boolean v1, v1, Le/m/a/c/j0;->d:Z

    if-nez v1, :cond_13

    goto/16 :goto_f

    .line 58
    :cond_13
    iget-object v0, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 59
    iget-object v1, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 60
    iget-object v2, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-eqz v2, :cond_14

    .line 61
    iget-object v2, v2, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-eqz v2, :cond_14

    move v2, v13

    goto :goto_b

    :cond_14
    move v2, v9

    .line 62
    :goto_b
    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    .line 63
    iget-object v2, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    .line 64
    iget-object v2, v2, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    .line 65
    iput-object v2, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    .line 66
    iget-object v1, v2, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 67
    iget-object v3, v2, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v3}, Le/m/a/c/l1/o;->f()J

    move-result-wide v3

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v10

    if-eqz v3, :cond_15

    .line 68
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->L()V

    goto :goto_f

    :cond_15
    move v3, v9

    .line 69
    :goto_c
    iget-object v4, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v5, v4

    if-ge v3, v5, :cond_19

    .line 70
    aget-object v4, v4, v3

    .line 71
    invoke-virtual {v0, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 72
    invoke-interface {v4}, Le/m/a/c/u0;->h()Z

    move-result v5

    if-nez v5, :cond_18

    .line 73
    iget-object v5, v1, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 74
    iget-object v5, v5, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v5, v5, v3

    .line 75
    invoke-virtual {v1, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v10

    .line 76
    iget-object v11, v6, Le/m/a/c/e0;->b:[Le/m/a/c/u;

    aget-object v11, v11, v3

    .line 77
    iget v11, v11, Le/m/a/c/u;->a:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_16

    move v11, v13

    goto :goto_d

    :cond_16
    move v11, v9

    .line 78
    :goto_d
    iget-object v12, v0, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object v12, v12, v3

    .line 79
    iget-object v14, v1, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object v14, v14, v3

    if-eqz v10, :cond_17

    .line 80
    invoke-virtual {v14, v12}, Le/m/a/c/v0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    if-nez v11, :cond_17

    .line 81
    invoke-static {v5}, Le/m/a/c/e0;->h(Le/m/a/c/n1/f;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 82
    iget-object v10, v2, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v10, v10, v3

    .line 83
    iget-wide v11, v2, Le/m/a/c/j0;->n:J

    .line 84
    invoke-interface {v4, v5, v10, v11, v12}, Le/m/a/c/u0;->u([Lcom/google/android/exoplayer2/Format;Le/m/a/c/l1/w;J)V

    goto :goto_e

    .line 85
    :cond_17
    invoke-interface {v4}, Le/m/a/c/u0;->n()V

    :cond_18
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    :goto_f
    move v0, v9

    .line 86
    :goto_10
    iget-boolean v1, v6, Le/m/a/c/e0;->x:Z

    if-nez v1, :cond_1a

    goto :goto_11

    .line 87
    :cond_1a
    iget-object v1, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 88
    iget-object v2, v1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-nez v2, :cond_1b

    goto :goto_11

    .line 89
    :cond_1b
    iget-object v3, v2, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-nez v3, :cond_1c

    goto :goto_11

    .line 90
    :cond_1c
    iget-object v1, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-ne v2, v1, :cond_1d

    .line 91
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->s()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_11

    .line 92
    :cond_1d
    iget-wide v1, v6, Le/m/a/c/e0;->J:J

    .line 93
    iget-object v4, v3, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v4, v4, Le/m/a/c/k0;->b:J

    iget-wide v10, v3, Le/m/a/c/j0;->n:J

    add-long/2addr v4, v10

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1e

    move v1, v13

    goto :goto_12

    :cond_1e
    :goto_11
    move v1, v9

    :goto_12
    if-eqz v1, :cond_22

    if-eqz v0, :cond_1f

    .line 94
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->w()V

    .line 95
    :cond_1f
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 96
    iget-object v10, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 97
    iget-object v0, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-ne v10, v0, :cond_20

    .line 98
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->L()V

    .line 99
    :cond_20
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {v0}, Le/m/a/c/l0;->a()Le/m/a/c/j0;

    move-result-object v0

    .line 100
    invoke-virtual {v6, v10}, Le/m/a/c/e0;->X(Le/m/a/c/j0;)V

    .line 101
    iget-object v0, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v1, v0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    iget-wide v2, v0, Le/m/a/c/k0;->b:J

    iget-wide v4, v0, Le/m/a/c/k0;->c:J

    move-object/from16 v0, p0

    .line 102
    invoke-virtual/range {v0 .. v5}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 103
    iget-object v0, v10, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-boolean v0, v0, Le/m/a/c/k0;->f:Z

    if-eqz v0, :cond_21

    move v0, v9

    goto :goto_13

    :cond_21
    const/4 v0, 0x3

    .line 104
    :goto_13
    iget-object v1, v6, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    invoke-virtual {v1, v0}, Le/m/a/c/e0$d;->b(I)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->W()V

    move v0, v13

    goto :goto_10

    .line 106
    :cond_22
    :goto_14
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    const/4 v1, 0x2

    if-eq v0, v13, :cond_40

    const/4 v2, 0x4

    if-ne v0, v2, :cond_23

    goto/16 :goto_23

    .line 107
    :cond_23
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 108
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    const-wide/16 v3, 0xa

    if-nez v0, :cond_24

    .line 109
    invoke-virtual {v6, v7, v8, v3, v4}, Le/m/a/c/e0;->F(JJ)V

    return-void

    :cond_24
    const-string v5, "doSomeWork"

    .line 110
    invoke-static {v5}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->W()V

    .line 112
    iget-boolean v5, v0, Le/m/a/c/j0;->d:Z

    const-wide/16 v10, 0x3e8

    if-eqz v5, :cond_2d

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    mul-long/2addr v14, v10

    .line 114
    iget-object v5, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    iget-object v12, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v9, v12, Le/m/a/c/n0;->m:J

    iget-wide v11, v6, Le/m/a/c/e0;->l:J

    sub-long/2addr v9, v11

    iget-boolean v11, v6, Le/m/a/c/e0;->m:Z

    invoke-interface {v5, v9, v10, v11}, Le/m/a/c/l1/o;->k(JZ)V

    move v9, v13

    move v10, v9

    const/4 v5, 0x0

    .line 115
    :goto_15
    iget-object v11, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v12, v11

    if-ge v5, v12, :cond_2e

    .line 116
    aget-object v11, v11, v5

    .line 117
    invoke-interface {v11}, Le/m/a/c/u0;->getState()I

    move-result v12

    if-nez v12, :cond_25

    goto :goto_1c

    .line 118
    :cond_25
    iget-wide v3, v6, Le/m/a/c/e0;->J:J

    invoke-interface {v11, v3, v4, v14, v15}, Le/m/a/c/u0;->i(JJ)V

    if-eqz v9, :cond_26

    .line 119
    invoke-interface {v11}, Le/m/a/c/u0;->c()Z

    move-result v3

    if-eqz v3, :cond_26

    move v9, v13

    goto :goto_16

    :cond_26
    const/4 v9, 0x0

    .line 120
    :goto_16
    iget-object v3, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v3, v3, v5

    invoke-interface {v11}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v4

    if-eq v3, v4, :cond_27

    move v3, v13

    goto :goto_17

    :cond_27
    const/4 v3, 0x0

    :goto_17
    if-nez v3, :cond_28

    .line 121
    iget-object v4, v0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-eqz v4, :cond_28

    .line 122
    invoke-interface {v11}, Le/m/a/c/u0;->e()Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v13

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    if-nez v3, :cond_2a

    if-nez v4, :cond_2a

    .line 123
    invoke-interface {v11}, Le/m/a/c/u0;->b()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface {v11}, Le/m/a/c/u0;->c()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_19

    :cond_29
    const/4 v3, 0x0

    goto :goto_1a

    :cond_2a
    :goto_19
    move v3, v13

    :goto_1a
    if-eqz v10, :cond_2b

    if-eqz v3, :cond_2b

    move v10, v13

    goto :goto_1b

    :cond_2b
    const/4 v10, 0x0

    :goto_1b
    if-nez v3, :cond_2c

    .line 124
    invoke-interface {v11}, Le/m/a/c/u0;->o()V

    :cond_2c
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v3, 0xa

    goto :goto_15

    .line 125
    :cond_2d
    iget-object v3, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v3}, Le/m/a/c/l1/o;->j()V

    move v9, v13

    move v10, v9

    .line 126
    :cond_2e
    iget-object v3, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v3, v3, Le/m/a/c/k0;->e:J

    if-eqz v9, :cond_30

    .line 127
    iget-boolean v5, v0, Le/m/a/c/j0;->d:Z

    if-eqz v5, :cond_30

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v11

    if-eqz v5, :cond_2f

    iget-object v5, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v11, v5, Le/m/a/c/n0;->m:J

    cmp-long v3, v3, v11

    if-gtz v3, :cond_30

    :cond_2f
    iget-object v0, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-boolean v0, v0, Le/m/a/c/k0;->g:Z

    if-eqz v0, :cond_30

    .line 128
    invoke-virtual {v6, v2}, Le/m/a/c/e0;->R(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->U()V

    goto/16 :goto_20

    .line 130
    :cond_30
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v3, v0, Le/m/a/c/n0;->e:I

    if-ne v3, v1, :cond_37

    .line 131
    iget-object v3, v6, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v3, v3

    if-nez v3, :cond_31

    .line 132
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->u()Z

    move-result v13

    goto :goto_1f

    :cond_31
    if-nez v10, :cond_32

    goto :goto_1e

    .line 133
    :cond_32
    iget-boolean v0, v0, Le/m/a/c/n0;->g:Z

    if-nez v0, :cond_33

    goto :goto_1f

    .line 134
    :cond_33
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 135
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 136
    invoke-virtual {v0}, Le/m/a/c/j0;->e()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v0, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-boolean v0, v0, Le/m/a/c/k0;->g:Z

    if-eqz v0, :cond_34

    move v0, v13

    goto :goto_1d

    :cond_34
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_36

    .line 137
    iget-object v0, v6, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    .line 138
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->k()J

    move-result-wide v3

    iget-object v5, v6, Le/m/a/c/e0;->n:Le/m/a/c/z;

    invoke-virtual {v5}, Le/m/a/c/z;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v5

    iget v5, v5, Le/m/a/c/o0;->a:F

    iget-boolean v9, v6, Le/m/a/c/e0;->y:Z

    .line 139
    invoke-interface {v0, v3, v4, v5, v9}, Le/m/a/c/i0;->b(JFZ)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_1f

    :cond_35
    :goto_1e
    const/4 v13, 0x0

    :cond_36
    :goto_1f
    if-eqz v13, :cond_37

    const/4 v0, 0x3

    .line 140
    invoke-virtual {v6, v0}, Le/m/a/c/e0;->R(I)V

    .line 141
    iget-boolean v3, v6, Le/m/a/c/e0;->x:Z

    if-eqz v3, :cond_3a

    .line 142
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->S()V

    goto :goto_20

    :cond_37
    const/4 v0, 0x3

    .line 143
    iget-object v3, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v3, v3, Le/m/a/c/n0;->e:I

    if-ne v3, v0, :cond_3a

    iget-object v0, v6, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v0, v0

    if-nez v0, :cond_38

    .line 144
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->u()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_20

    :cond_38
    if-nez v10, :cond_3a

    .line 145
    :cond_39
    iget-boolean v0, v6, Le/m/a/c/e0;->x:Z

    iput-boolean v0, v6, Le/m/a/c/e0;->y:Z

    .line 146
    invoke-virtual {v6, v1}, Le/m/a/c/e0;->R(I)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->U()V

    .line 148
    :cond_3a
    :goto_20
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    if-ne v0, v1, :cond_3b

    .line 149
    iget-object v0, v6, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v3, v0

    const/4 v12, 0x0

    :goto_21
    if-ge v12, v3, :cond_3b

    aget-object v4, v0, v12

    .line 150
    invoke-interface {v4}, Le/m/a/c/u0;->o()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    .line 151
    :cond_3b
    iget-boolean v0, v6, Le/m/a/c/e0;->x:Z

    if-eqz v0, :cond_3c

    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3d

    :cond_3c
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    if-ne v0, v1, :cond_3e

    :cond_3d
    const-wide/16 v0, 0xa

    .line 152
    invoke-virtual {v6, v7, v8, v0, v1}, Le/m/a/c/e0;->F(JJ)V

    goto :goto_22

    .line 153
    :cond_3e
    iget-object v3, v6, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    array-length v3, v3

    if-eqz v3, :cond_3f

    if-eq v0, v2, :cond_3f

    const-wide/16 v2, 0x3e8

    .line 154
    invoke-virtual {v6, v7, v8, v2, v3}, Le/m/a/c/e0;->F(JJ)V

    goto :goto_22

    .line 155
    :cond_3f
    iget-object v0, v6, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 156
    iget-object v0, v0, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :goto_22
    invoke-static {}, Ln3/g0/y;->Q()V

    return-void

    .line 158
    :cond_40
    :goto_23
    iget-object v0, v6, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 159
    iget-object v0, v0, Le/m/a/c/q1/a0;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final f([ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-array v1, v1, [Le/m/a/c/u0;

    iput-object v1, v0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    .line 2
    iget-object v1, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 3
    iget-object v1, v1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 4
    iget-object v1, v1, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    aget-object v4, v4, v3

    invoke-interface {v4}, Le/m/a/c/u0;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 9
    invoke-virtual {v1, v3}, Le/m/a/c/n1/i;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10
    aget-boolean v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    .line 11
    iget-object v7, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 12
    iget-object v7, v7, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 13
    iget-object v8, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    aget-object v8, v8, v3

    .line 14
    iget-object v9, v0, Le/m/a/c/e0;->v:[Le/m/a/c/u0;

    aput-object v8, v9, v4

    .line 15
    invoke-interface {v8}, Le/m/a/c/u0;->getState()I

    move-result v4

    if-nez v4, :cond_6

    .line 16
    iget-object v4, v7, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 17
    iget-object v9, v4, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object v10, v9, v3

    .line 18
    iget-object v4, v4, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 19
    iget-object v4, v4, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v4, v4, v3

    .line 20
    invoke-static {v4}, Le/m/a/c/e0;->h(Le/m/a/c/n1/f;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 21
    iget-boolean v4, v0, Le/m/a/c/e0;->x:Z

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v4, v4, Le/m/a/c/n0;->e:I

    const/4 v12, 0x3

    if-ne v4, v12, :cond_2

    move v4, v9

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    move v15, v9

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 22
    :goto_3
    iget-object v5, v7, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v12, v5, v3

    iget-wide v13, v0, Le/m/a/c/e0;->J:J

    move v5, v3

    .line 23
    iget-wide v2, v7, Le/m/a/c/j0;->n:J

    move-object v9, v8

    move-wide/from16 v16, v2

    .line 24
    invoke-interface/range {v9 .. v17}, Le/m/a/c/u0;->s(Le/m/a/c/v0;[Lcom/google/android/exoplayer2/Format;Le/m/a/c/l1/w;JZJ)V

    .line 25
    iget-object v2, v0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 26
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v8}, Le/m/a/c/u0;->m()Le/m/a/c/q1/p;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 28
    iget-object v7, v2, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    if-eq v3, v7, :cond_5

    if-nez v7, :cond_4

    .line 29
    iput-object v3, v2, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    .line 30
    iput-object v8, v2, Le/m/a/c/z;->c:Le/m/a/c/u0;

    .line 31
    iget-object v2, v2, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 32
    iget-object v2, v2, Le/m/a/c/q1/y;->e:Le/m/a/c/o0;

    .line 33
    invoke-interface {v3, v2}, Le/m/a/c/q1/p;->t(Le/m/a/c/o0;)V

    goto :goto_4

    .line 34
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Le/m/a/c/b0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Le/m/a/c/b0;-><init>(ILjava/lang/Throwable;)V

    .line 36
    throw v2

    :cond_5
    :goto_4
    if-eqz v4, :cond_7

    .line 37
    invoke-interface {v8}, Le/m/a/c/u0;->start()V

    goto :goto_5

    :cond_6
    move v5, v3

    :cond_7
    :goto_5
    move v4, v6

    goto :goto_6

    :cond_8
    move v5, v3

    :goto_6
    add-int/lit8 v3, v5, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public g(Le/m/a/c/l1/x;)V
    .locals 2

    .line 1
    check-cast p1, Le/m/a/c/l1/o;

    .line 2
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Le/m/a/c/o0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p0, v4, p1}, Le/m/a/c/e0;->p(Le/m/a/c/o0;Z)V

    goto/16 :goto_7

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/s0;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->K(Le/m/a/c/s0;)V

    goto/16 :goto_7

    .line 4
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/s0;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->J(Le/m/a/c/s0;)V

    goto/16 :goto_7

    .line 7
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, p1}, Le/m/a/c/e0;->M(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 8
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->Q(Z)V

    goto/16 :goto_7

    .line 9
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->P(I)V

    goto/16 :goto_7

    .line 10
    :pswitch_6
    invoke-virtual {p0}, Le/m/a/c/e0;->z()V

    goto/16 :goto_7

    .line 11
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/l1/o;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->m(Le/m/a/c/l1/o;)V

    goto/16 :goto_7

    .line 12
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/l1/o;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->o(Le/m/a/c/l1/o;)V

    goto :goto_7

    .line 13
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/e0$b;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->r(Le/m/a/c/e0$b;)V

    goto :goto_7

    .line 14
    :pswitch_a
    invoke-virtual {p0}, Le/m/a/c/e0;->y()V

    return v2

    .line 15
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-virtual {p0, v3, p1, v2}, Le/m/a/c/e0;->T(ZZZ)V

    goto :goto_7

    .line 16
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/x0;

    .line 17
    iput-object p1, p0, Le/m/a/c/e0;->s:Le/m/a/c/x0;

    goto :goto_7

    .line 18
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/o0;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->O(Le/m/a/c/o0;)V

    goto :goto_7

    .line 19
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/e0$e;

    invoke-virtual {p0, p1}, Le/m/a/c/e0;->H(Le/m/a/c/e0$e;)V

    goto :goto_7

    .line 20
    :pswitch_f
    invoke-virtual {p0}, Le/m/a/c/e0;->e()V

    goto :goto_7

    .line 21
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    move p1, v3

    :goto_4
    invoke-virtual {p0, p1}, Le/m/a/c/e0;->N(Z)V

    goto :goto_7

    .line 22
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Le/m/a/c/l1/p;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v3

    :goto_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_6
    invoke-virtual {p0, v4, v5, p1}, Le/m/a/c/e0;->x(Le/m/a/c/l1/p;ZZ)V

    .line 23
    :goto_7
    invoke-virtual {p0}, Le/m/a/c/e0;->w()V
    :try_end_0
    .catch Le/m/a/c/b0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    :goto_8
    const-string v4, "Internal runtime error"

    .line 24
    invoke-static {v4, p1}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 25
    instance-of v4, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_7

    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 26
    new-instance v1, Le/m/a/c/b0;

    invoke-direct {v1, v0, p1}, Le/m/a/c/b0;-><init>(ILjava/lang/Throwable;)V

    goto :goto_9

    .line 27
    :cond_7
    check-cast p1, Ljava/lang/RuntimeException;

    .line 28
    new-instance v0, Le/m/a/c/b0;

    invoke-direct {v0, v1, p1}, Le/m/a/c/b0;-><init>(ILjava/lang/Throwable;)V

    move-object v1, v0

    .line 29
    :goto_9
    invoke-virtual {p0, v2, v3, v3}, Le/m/a/c/e0;->T(ZZZ)V

    .line 30
    iget-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    invoke-virtual {p1, v1}, Le/m/a/c/n0;->b(Le/m/a/c/b0;)Le/m/a/c/n0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 31
    invoke-virtual {p0}, Le/m/a/c/e0;->w()V

    goto/16 :goto_d

    :catch_2
    move-exception p1

    const-string v0, "Source error"

    .line 32
    invoke-static {v0, p1}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v3, v3, v3}, Le/m/a/c/e0;->T(ZZZ)V

    .line 34
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 35
    new-instance v1, Le/m/a/c/b0;

    invoke-direct {v1, v3, p1}, Le/m/a/c/b0;-><init>(ILjava/lang/Throwable;)V

    .line 36
    invoke-virtual {v0, v1}, Le/m/a/c/n0;->b(Le/m/a/c/b0;)Le/m/a/c/n0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 37
    invoke-virtual {p0}, Le/m/a/c/e0;->w()V

    goto/16 :goto_d

    :catch_3
    move-exception p1

    .line 38
    iget v4, p1, Le/m/a/c/b0;->a:I

    if-eq v4, v2, :cond_8

    const-string v0, "Playback error."

    goto/16 :goto_c

    :cond_8
    const-string v4, "Renderer error: index="

    .line 39
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Le/m/a/c/b0;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    iget v6, p1, Le/m/a/c/b0;->b:I

    aget-object v5, v5, v6

    .line 40
    invoke-interface {v5}, Le/m/a/c/u0;->p()I

    move-result v5

    .line 41
    sget v6, Le/m/a/c/q1/d0;->a:I

    packed-switch v5, :pswitch_data_1

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_9

    const-string v6, "custom ("

    const-string v7, ")"

    .line 42
    invoke-static {v6, v5, v7}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :pswitch_12
    const-string v5, "none"

    goto :goto_a

    :pswitch_13
    const-string v5, "camera motion"

    goto :goto_a

    :pswitch_14
    const-string v5, "metadata"

    goto :goto_a

    :pswitch_15
    const-string v5, "text"

    goto :goto_a

    :pswitch_16
    const-string v5, "video"

    goto :goto_a

    :pswitch_17
    const-string v5, "audio"

    goto :goto_a

    :pswitch_18
    const-string v5, "default"

    goto :goto_a

    :cond_9
    const-string v5, "?"

    .line 43
    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Le/m/a/c/b0;->c:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rendererSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Le/m/a/c/b0;->d:I

    if-eqz v5, :cond_e

    if-eq v5, v2, :cond_d

    if-eq v5, v1, :cond_c

    const/4 v1, 0x3

    if-eq v5, v1, :cond_b

    if-ne v5, v0, :cond_a

    const-string v0, "YES"

    goto :goto_b

    .line 44
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_b
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_b

    :cond_c
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_b

    :cond_d
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_b

    :cond_e
    const-string v0, "NO"

    .line 45
    :goto_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_c
    invoke-static {v0, p1}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v2, v3, v3}, Le/m/a/c/e0;->T(ZZZ)V

    .line 48
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    invoke-virtual {v0, p1}, Le/m/a/c/n0;->b(Le/m/a/c/b0;)Le/m/a/c/n0;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 49
    invoke-virtual {p0}, Le/m/a/c/e0;->w()V

    :goto_d
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public i(Le/m/a/c/l1/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j(Le/m/a/c/y0;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/y0;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Le/m/a/c/e0;->j:Le/m/a/c/y0$c;

    iget-object v2, p0, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Le/m/a/c/y0;->j(Le/m/a/c/y0$c;Le/m/a/c/y0$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->k:J

    invoke-virtual {p0, v0, v1}, Le/m/a/c/e0;->l(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    iget-wide v3, p0, Le/m/a/c/e0;->J:J

    .line 4
    iget-wide v5, v0, Le/m/a/c/j0;->n:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 5
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final m(Le/m/a/c/l1/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v1, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v1, p0, Le/m/a/c/e0;->J:J

    invoke-virtual {v0, v1, v2}, Le/m/a/c/l0;->i(J)V

    .line 4
    invoke-virtual {p0}, Le/m/a/c/e0;->v()V

    return-void
.end method

.method public final n(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v1, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    if-nez v1, :cond_0

    .line 3
    iget-object v2, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v2, v2, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    :goto_0
    move-object v15, v2

    .line 4
    iget-object v2, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v2, v2, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    .line 5
    invoke-virtual {v2, v15}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v14, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 7
    new-instance v13, Le/m/a/c/n0;

    move-object v3, v13

    iget-object v4, v14, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v5, v14, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v6, v14, Le/m/a/c/n0;->c:J

    iget-wide v8, v14, Le/m/a/c/n0;->d:J

    iget v10, v14, Le/m/a/c/n0;->e:I

    iget-object v11, v14, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    iget-boolean v12, v14, Le/m/a/c/n0;->g:Z

    move-object/from16 v16, v13

    iget-object v13, v14, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v23, v1

    iget-object v1, v14, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    move-object v0, v14

    move-object v14, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Le/m/a/c/n0;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Le/m/a/c/n0;->l:J

    move-wide/from16 v18, v1

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    move-wide/from16 v20, v0

    invoke-direct/range {v3 .. v21}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    .line 8
    iput-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    goto :goto_1

    :cond_1
    move-object/from16 v23, v1

    move/from16 v22, v2

    .line 9
    :goto_1
    iget-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    if-nez v23, :cond_2

    iget-wide v2, v1, Le/m/a/c/n0;->m:J

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual/range {v23 .. v23}, Le/m/a/c/j0;->d()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v1, Le/m/a/c/n0;->k:J

    .line 11
    iget-object v1, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->k()J

    move-result-wide v2

    iput-wide v2, v1, Le/m/a/c/n0;->l:J

    if-nez v22, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v23, :cond_4

    move-object/from16 v1, v23

    .line 12
    iget-boolean v2, v1, Le/m/a/c/j0;->d:Z

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, v1, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 14
    iget-object v1, v1, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 15
    iget-object v3, v0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    iget-object v4, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    iget-object v1, v1, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-interface {v3, v4, v2, v1}, Le/m/a/c/i0;->c([Le/m/a/c/u0;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V

    :cond_4
    return-void
.end method

.method public final o(Le/m/a/c/l1/o;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v1, v1, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v1, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    move-object/from16 v4, p1

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v3, v0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    .line 4
    invoke-virtual {v3}, Le/m/a/c/z;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v3

    iget v3, v3, Le/m/a/c/o0;->a:F

    iget-object v4, v0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v4, v4, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 5
    iput-boolean v2, v1, Le/m/a/c/j0;->d:Z

    .line 6
    iget-object v2, v1, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v2}, Le/m/a/c/l1/o;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iput-object v2, v1, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 7
    invoke-virtual {v1, v3, v4}, Le/m/a/c/j0;->h(FLe/m/a/c/y0;)Le/m/a/c/n1/i;

    move-result-object v3

    .line 8
    iget-object v2, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v4, v2, Le/m/a/c/k0;->b:J

    .line 9
    iget-object v2, v1, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    array-length v2, v2

    new-array v7, v2, [Z

    const/4 v6, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Le/m/a/c/j0;->a(Le/m/a/c/n1/i;JZ[Z)J

    move-result-wide v10

    .line 10
    iget-wide v2, v1, Le/m/a/c/j0;->n:J

    iget-object v4, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v5, v4, Le/m/a/c/k0;->b:J

    sub-long v7, v5, v10

    add-long/2addr v7, v2

    iput-wide v7, v1, Le/m/a/c/j0;->n:J

    cmp-long v2, v10, v5

    if-nez v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance v2, Le/m/a/c/k0;

    iget-object v9, v4, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    iget-wide v12, v4, Le/m/a/c/k0;->c:J

    iget-wide v14, v4, Le/m/a/c/k0;->d:J

    iget-wide v5, v4, Le/m/a/c/k0;->e:J

    iget-boolean v3, v4, Le/m/a/c/k0;->f:Z

    iget-boolean v4, v4, Le/m/a/c/k0;->g:Z

    move-object v8, v2

    move-wide/from16 v16, v5

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v8 .. v19}, Le/m/a/c/k0;-><init>(Le/m/a/c/l1/p$a;JJJJZZ)V

    move-object v4, v2

    .line 12
    :goto_1
    iput-object v4, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    .line 13
    iget-object v2, v1, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 14
    iget-object v3, v1, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 15
    iget-object v4, v0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    iget-object v5, v0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    iget-object v3, v3, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-interface {v4, v5, v2, v3}, Le/m/a/c/i0;->c([Le/m/a/c/u0;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V

    .line 16
    iget-object v2, v0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 17
    iget-object v2, v2, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, v1, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v1, v1, Le/m/a/c/k0;->b:J

    invoke-virtual {v0, v1, v2}, Le/m/a/c/e0;->B(J)V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Le/m/a/c/e0;->X(Le/m/a/c/j0;)V

    .line 20
    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->v()V

    return-void
.end method

.method public final p(Le/m/a/c/o0;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4
    iget p2, p1, Le/m/a/c/o0;->a:F

    .line 5
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 6
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 8
    iget-object v1, v1, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-virtual {v1}, Le/m/a/c/n1/g;->a()[Le/m/a/c/n1/f;

    move-result-object v1

    .line 9
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v5, p2}, Le/m/a/c/n1/f;->i(F)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v1, p2, v2

    if-eqz v1, :cond_3

    .line 13
    iget v3, p1, Le/m/a/c/o0;->a:F

    invoke-interface {v1, v3}, Le/m/a/c/u0;->g(F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final q()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/e0;->R(I)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 3
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->A(ZZZZZ)V

    return-void
.end method

.method public final r(Le/m/a/c/e0$b;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Le/m/a/c/e0$b;->a:Le/m/a/c/l1/p;

    iget-object v2, v6, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    if-eq v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v6, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    iget v2, v6, Le/m/a/c/e0;->D:I

    invoke-virtual {v1, v2}, Le/m/a/c/e0$d;->a(I)V

    const/4 v7, 0x0

    .line 3
    iput v7, v6, Le/m/a/c/e0;->D:I

    .line 4
    iget-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v2, v1, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 5
    iget-object v0, v0, Le/m/a/c/e0$b;->b:Le/m/a/c/y0;

    move-object v9, v0

    .line 6
    iget-object v3, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 7
    iput-object v0, v3, Le/m/a/c/l0;->d:Le/m/a/c/y0;

    .line 8
    new-instance v3, Le/m/a/c/n0;

    move-object v8, v3

    iget-object v10, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v11, v1, Le/m/a/c/n0;->c:J

    iget-wide v13, v1, Le/m/a/c/n0;->d:J

    iget v15, v1, Le/m/a/c/n0;->e:I

    iget-object v4, v1, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    move-object/from16 v16, v4

    iget-boolean v4, v1, Le/m/a/c/n0;->g:Z

    move/from16 v17, v4

    iget-object v4, v1, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v18, v4

    iget-object v4, v1, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    move-object/from16 v19, v4

    iget-object v4, v1, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    move-object/from16 v20, v4

    iget-wide v4, v1, Le/m/a/c/n0;->k:J

    move-wide/from16 v21, v4

    iget-wide v4, v1, Le/m/a/c/n0;->l:J

    move-wide/from16 v23, v4

    iget-wide v4, v1, Le/m/a/c/n0;->m:J

    move-wide/from16 v25, v4

    invoke-direct/range {v8 .. v26}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    .line 9
    iput-object v3, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 10
    iget-object v1, v6, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_2

    .line 11
    iget-object v4, v6, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    invoke-virtual {v6, v4}, Le/m/a/c/e0;->C(Le/m/a/c/e0$c;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    iget-object v4, v6, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/e0$c;

    iget-object v4, v4, Le/m/a/c/e0$c;->a:Le/m/a/c/s0;

    invoke-virtual {v4, v7}, Le/m/a/c/s0;->b(Z)V

    .line 13
    iget-object v4, v6, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, v6, Le/m/a/c/e0;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    iget-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v1, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    .line 16
    invoke-virtual {v1}, Le/m/a/c/l1/p$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v4, v4, Le/m/a/c/n0;->d:J

    goto :goto_1

    :cond_3
    iget-object v4, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v4, v4, Le/m/a/c/n0;->m:J

    .line 17
    :goto_1
    iget-object v8, v6, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_5

    .line 18
    invoke-virtual {v6, v8, v12}, Le/m/a/c/e0;->D(Le/m/a/c/e0$e;Z)Landroid/util/Pair;

    move-result-object v0

    .line 19
    iput-object v11, v6, Le/m/a/c/e0;->E:Le/m/a/c/e0$e;

    if-nez v0, :cond_4

    .line 20
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->q()V

    return-void

    .line 21
    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 22
    iget-object v3, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Le/m/a/c/l0;->k(Ljava/lang/Object;J)Le/m/a/c/l1/p$a;

    move-result-object v0

    goto :goto_3

    :cond_5
    cmp-long v8, v4, v9

    if-nez v8, :cond_7

    .line 23
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v8

    if-nez v8, :cond_7

    .line 24
    invoke-virtual {v0}, Le/m/a/c/y0;->a()I

    move-result v1

    .line 25
    invoke-virtual {v6, v0, v1, v9, v10}, Le/m/a/c/e0;->j(Le/m/a/c/y0;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 26
    iget-object v1, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v2, v13, v14}, Le/m/a/c/l0;->k(Ljava/lang/Object;J)Le/m/a/c/l1/p$a;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Le/m/a/c/l1/p$a;->a()Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_6
    move-wide v2, v4

    :goto_2
    move-wide v13, v2

    goto :goto_4

    .line 29
    :cond_7
    iget-object v8, v1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v8}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v3, :cond_9

    .line 30
    iget-object v1, v1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v1, v2, v0}, Le/m/a/c/e0;->E(Ljava/lang/Object;Le/m/a/c/y0;Le/m/a/c/y0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 31
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->q()V

    return-void

    .line 32
    :cond_8
    iget-object v2, v6, Le/m/a/c/e0;->k:Le/m/a/c/y0$b;

    .line 33
    invoke-virtual {v0, v1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v12}, Le/m/a/c/y0;->g(ILe/m/a/c/y0$b;Z)Le/m/a/c/y0$b;

    move-result-object v1

    .line 34
    iget v1, v1, Le/m/a/c/y0$b;->b:I

    .line 35
    invoke-virtual {v6, v0, v1, v9, v10}, Le/m/a/c/e0;->j(Le/m/a/c/y0;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 36
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 37
    iget-object v3, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Le/m/a/c/l0;->k(Ljava/lang/Object;J)Le/m/a/c/l1/p$a;

    move-result-object v0

    :goto_3
    move-wide v13, v1

    move-object v1, v0

    goto :goto_4

    .line 38
    :cond_9
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v1, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v1, v1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    .line 39
    invoke-virtual {v0, v1, v4, v5}, Le/m/a/c/l0;->k(Ljava/lang/Object;J)Le/m/a/c/l1/p$a;

    move-result-object v0

    .line 40
    iget-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v1, v1, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v1}, Le/m/a/c/l1/p$a;->a()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Le/m/a/c/l1/p$a;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 41
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    :cond_a
    move-object v1, v0

    move-wide v13, v4

    .line 42
    :goto_4
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    invoke-virtual {v0, v1}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_20

    cmp-long v0, v4, v13

    if-nez v0, :cond_20

    .line 43
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-wide v4, v6, Le/m/a/c/e0;->J:J

    .line 44
    iget-object v1, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v1, :cond_b

    goto :goto_7

    .line 45
    :cond_b
    iget-wide v2, v1, Le/m/a/c/j0;->n:J

    .line 46
    iget-boolean v8, v1, Le/m/a/c/j0;->d:Z

    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    move v8, v7

    .line 47
    :goto_5
    iget-object v15, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v11, v15

    if-ge v8, v11, :cond_10

    .line 48
    aget-object v11, v15, v8

    invoke-interface {v11}, Le/m/a/c/u0;->getState()I

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    aget-object v11, v11, v8

    .line 49
    invoke-interface {v11}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v11

    iget-object v15, v1, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v15, v15, v8

    if-eq v11, v15, :cond_d

    goto :goto_6

    .line 50
    :cond_d
    iget-object v11, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    aget-object v11, v11, v8

    invoke-interface {v11}, Le/m/a/c/u0;->k()J

    move-result-wide v9

    cmp-long v11, v9, v13

    if-nez v11, :cond_e

    move-wide v2, v13

    goto :goto_7

    .line 51
    :cond_e
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_f
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    goto :goto_5

    .line 52
    :cond_10
    :goto_7
    iget-object v1, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    move-object v11, v1

    const/4 v1, 0x0

    :goto_8
    if-eqz v11, :cond_1e

    .line 53
    iget-object v8, v11, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    if-nez v1, :cond_11

    .line 54
    invoke-virtual {v0, v8}, Le/m/a/c/l0;->g(Le/m/a/c/k0;)Le/m/a/c/k0;

    move-result-object v1

    move-object v7, v8

    goto :goto_b

    .line 55
    :cond_11
    invoke-virtual {v0, v1, v4, v5}, Le/m/a/c/l0;->c(Le/m/a/c/j0;J)Le/m/a/c/k0;

    move-result-object v9

    if-nez v9, :cond_12

    .line 56
    invoke-virtual {v0, v1}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    move-result v0

    goto :goto_a

    .line 57
    :cond_12
    iget-wide v13, v8, Le/m/a/c/k0;->b:J

    move-object/from16 v19, v8

    iget-wide v7, v9, Le/m/a/c/k0;->b:J

    cmp-long v7, v13, v7

    if-nez v7, :cond_13

    move-object/from16 v7, v19

    iget-object v8, v7, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    iget-object v13, v9, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {v8, v13}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v12

    goto :goto_9

    :cond_13
    move-object/from16 v7, v19

    :cond_14
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_15

    .line 58
    invoke-virtual {v0, v1}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    move-result v0

    :goto_a
    xor-int/2addr v12, v0

    goto/16 :goto_12

    :cond_15
    move-object v1, v9

    .line 59
    :goto_b
    iget-wide v8, v7, Le/m/a/c/k0;->c:J

    .line 60
    iget-wide v13, v1, Le/m/a/c/k0;->c:J

    cmp-long v13, v8, v13

    if-nez v13, :cond_16

    move-object v13, v1

    move-wide/from16 v33, v4

    move-object v4, v11

    goto :goto_c

    :cond_16
    new-instance v13, Le/m/a/c/k0;

    iget-object v14, v1, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    move-object/from16 v31, v11

    iget-wide v10, v1, Le/m/a/c/k0;->b:J

    move-object/from16 v32, v13

    iget-wide v12, v1, Le/m/a/c/k0;->d:J

    move-wide/from16 v33, v4

    iget-wide v4, v1, Le/m/a/c/k0;->e:J

    iget-boolean v15, v1, Le/m/a/c/k0;->f:Z

    iget-boolean v6, v1, Le/m/a/c/k0;->g:Z

    move-object/from16 v19, v32

    move-object/from16 v20, v14

    move-wide/from16 v21, v10

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    move-wide/from16 v27, v4

    move/from16 v29, v15

    move/from16 v30, v6

    invoke-direct/range {v19 .. v30}, Le/m/a/c/k0;-><init>(Le/m/a/c/l1/p$a;JJJJZZ)V

    move-object/from16 v4, v31

    move-object/from16 v13, v32

    .line 61
    :goto_c
    iput-object v13, v4, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    .line 62
    iget-wide v5, v7, Le/m/a/c/k0;->e:J

    iget-wide v7, v1, Le/m/a/c/k0;->e:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v9

    if-eqz v1, :cond_18

    cmp-long v1, v5, v7

    if-nez v1, :cond_17

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-nez v1, :cond_1d

    cmp-long v1, v7, v9

    if-nez v1, :cond_19

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_f

    .line 63
    :cond_19
    iget-wide v5, v4, Le/m/a/c/j0;->n:J

    add-long/2addr v5, v7

    .line 64
    :goto_f
    iget-object v1, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-ne v4, v1, :cond_1b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v1, v2, v7

    if-eqz v1, :cond_1a

    cmp-long v1, v2, v5

    if-ltz v1, :cond_1b

    :cond_1a
    const/4 v10, 0x1

    goto :goto_10

    :cond_1b
    const/4 v10, 0x0

    .line 65
    :goto_10
    invoke-virtual {v0, v4}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez v10, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v12, 0x0

    goto :goto_12

    :cond_1d
    const-wide/high16 v7, -0x8000000000000000L

    .line 66
    iget-object v1, v4, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    move-object v11, v1

    move-object v1, v4

    move-wide v13, v7

    move-wide/from16 v4, v33

    const/4 v7, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_8

    :cond_1e
    :goto_11
    const/4 v12, 0x1

    :goto_12
    if-nez v12, :cond_1f

    const/4 v0, 0x0

    move-object/from16 v6, p0

    .line 67
    invoke-virtual {v6, v0}, Le/m/a/c/e0;->G(Z)V

    goto :goto_17

    :cond_1f
    move-object/from16 v6, p0

    goto :goto_16

    .line 68
    :cond_20
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 69
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    if-eqz v0, :cond_22

    .line 70
    :cond_21
    :goto_13
    iget-object v0, v0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-eqz v0, :cond_22

    .line 71
    iget-object v4, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v4, v4, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {v4, v1}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 72
    iget-object v4, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    iget-object v5, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    invoke-virtual {v4, v5}, Le/m/a/c/l0;->g(Le/m/a/c/k0;)Le/m/a/c/k0;

    move-result-object v4

    iput-object v4, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    goto :goto_13

    .line 73
    :cond_22
    invoke-virtual {v1}, Le/m/a/c/l1/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_14

    :cond_23
    move-wide v2, v13

    .line 74
    :goto_14
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 75
    iget-object v4, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 76
    iget-object v0, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    if-eq v4, v0, :cond_24

    const/4 v12, 0x1

    goto :goto_15

    :cond_24
    const/4 v12, 0x0

    .line 77
    :goto_15
    invoke-virtual {v6, v1, v2, v3, v12}, Le/m/a/c/e0;->I(Le/m/a/c/l1/p$a;JZ)J

    move-result-wide v2

    move-object/from16 v0, p0

    move-wide v4, v13

    .line 78
    invoke-virtual/range {v0 .. v5}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    :goto_16
    const/4 v0, 0x0

    .line 79
    :goto_17
    invoke-virtual {v6, v0}, Le/m/a/c/e0;->n(Z)V

    return-void
.end method

.method public final s()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    .line 3
    iget-boolean v1, v0, Le/m/a/c/j0;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 5
    aget-object v3, v3, v1

    .line 6
    iget-object v4, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v4, v4, v1

    .line 7
    invoke-interface {v3}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Le/m/a/c/u0;->e()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final t()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v2, v0, Le/m/a/c/j0;->d:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v0}, Le/m/a/c/l1/o;->d()J

    move-result-wide v2

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 2
    iget-object v0, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 3
    iget-object v1, v0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v1, v1, Le/m/a/c/k0;->e:J

    .line 4
    iget-boolean v0, v0, Le/m/a/c/j0;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v3, v0, Le/m/a/c/n0;->m:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/c/e0;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 3
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 4
    iget-boolean v1, v0, Le/m/a/c/j0;->d:Z

    if-nez v1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v0}, Le/m/a/c/l1/o;->d()J

    move-result-wide v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0, v1}, Le/m/a/c/e0;->l(J)J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Le/m/a/c/e0;->n:Le/m/a/c/z;

    invoke-virtual {v2}, Le/m/a/c/z;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v2

    iget v2, v2, Le/m/a/c/o0;->a:F

    .line 7
    iget-object v3, p0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    invoke-interface {v3, v0, v1, v2}, Le/m/a/c/i0;->h(JF)Z

    move-result v0

    .line 8
    :goto_1
    iput-boolean v0, p0, Le/m/a/c/e0;->z:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 10
    iget-object v0, v0, Le/m/a/c/l0;->i:Le/m/a/c/j0;

    .line 11
    iget-wide v1, p0, Le/m/a/c/e0;->J:J

    .line 12
    invoke-virtual {v0}, Le/m/a/c/j0;->f()Z

    move-result v3

    invoke-static {v3}, Ln3/g0/y;->x(Z)V

    .line 13
    iget-wide v3, v0, Le/m/a/c/j0;->n:J

    sub-long/2addr v1, v3

    .line 14
    iget-object v0, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    invoke-interface {v0, v1, v2}, Le/m/a/c/l1/o;->a(J)Z

    .line 15
    :cond_2
    invoke-virtual {p0}, Le/m/a/c/e0;->V()V

    return-void
.end method

.method public final w()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    iget-object v1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 2
    iget-object v2, v0, Le/m/a/c/e0$d;->a:Le/m/a/c/n0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v2, v0, Le/m/a/c/e0$d;->b:I

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Le/m/a/c/e0$d;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 3
    iget-object v2, p0, Le/m/a/c/e0;->i:Landroid/os/Handler;

    .line 4
    iget v4, v0, Le/m/a/c/e0$d;->b:I

    .line 5
    iget-boolean v5, v0, Le/m/a/c/e0$d;->c:Z

    if-eqz v5, :cond_2

    .line 6
    iget v0, v0, Le/m/a/c/e0$d;->d:I

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 7
    :goto_2
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    iget-object v0, p0, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    iget-object v1, p0, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 10
    iput-object v1, v0, Le/m/a/c/e0$d;->a:Le/m/a/c/n0;

    .line 11
    iput v3, v0, Le/m/a/c/e0$d;->b:I

    .line 12
    iput-boolean v3, v0, Le/m/a/c/e0$d;->c:Z

    :cond_3
    return-void
.end method

.method public final x(Le/m/a/c/l1/p;ZZ)V
    .locals 7

    .line 1
    iget v0, p0, Le/m/a/c/e0;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/m/a/c/e0;->D:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 2
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/e0;->A(ZZZZZ)V

    .line 3
    iget-object p2, p0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    invoke-interface {p2}, Le/m/a/c/i0;->onPrepared()V

    .line 4
    iput-object p1, p0, Le/m/a/c/e0;->u:Le/m/a/c/l1/p;

    const/4 p2, 0x2

    .line 5
    invoke-virtual {p0, p2}, Le/m/a/c/e0;->R(I)V

    .line 6
    iget-object p3, p0, Le/m/a/c/e0;->f:Le/m/a/c/p1/f;

    invoke-interface {p3}, Le/m/a/c/p1/f;->a()Le/m/a/c/p1/f0;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Le/m/a/c/l1/p;->d(Le/m/a/c/l1/p$b;Le/m/a/c/p1/f0;)V

    .line 7
    iget-object p1, p0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, p2}, Le/m/a/c/q1/a0;->d(I)Z

    return-void
.end method

.method public final y()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Le/m/a/c/e0;->A(ZZZZZ)V

    .line 2
    iget-object v0, p0, Le/m/a/c/e0;->e:Le/m/a/c/i0;

    invoke-interface {v0}, Le/m/a/c/i0;->d()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Le/m/a/c/e0;->R(I)V

    .line 4
    iget-object v1, p0, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Le/m/a/c/e0;->w:Z

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Le/m/a/c/e0;->n:Le/m/a/c/z;

    invoke-virtual {v0}, Le/m/a/c/z;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v0

    iget v0, v0, Le/m/a/c/o0;->a:F

    .line 2
    iget-object v1, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 3
    iget-object v2, v1, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 4
    iget-object v1, v1, Le/m/a/c/l0;->h:Le/m/a/c/j0;

    const/4 v7, 0x1

    move-object v8, v2

    move v2, v7

    :goto_0
    if-eqz v8, :cond_10

    .line 5
    iget-boolean v3, v8, Le/m/a/c/j0;->d:Z

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 6
    :cond_0
    iget-object v3, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v3, v3, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v8, v0, v3}, Le/m/a/c/j0;->h(FLe/m/a/c/y0;)Le/m/a/c/n1/i;

    move-result-object v10

    .line 7
    iget-object v3, v8, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    const/4 v15, 0x0

    if-eqz v3, :cond_4

    .line 8
    iget-object v4, v3, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    iget v4, v4, Le/m/a/c/n1/g;->a:I

    iget-object v5, v10, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    iget v5, v5, Le/m/a/c/n1/g;->a:I

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v15

    .line 9
    :goto_1
    iget-object v5, v10, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    iget v5, v5, Le/m/a/c/n1/g;->a:I

    if-ge v4, v5, :cond_3

    .line 10
    invoke-virtual {v10, v3, v4}, Le/m/a/c/n1/i;->a(Le/m/a/c/n1/i;I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v15

    :goto_3
    if-nez v3, :cond_e

    const/4 v4, 0x4

    if-eqz v2, :cond_b

    .line 11
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    .line 12
    iget-object v8, v0, Le/m/a/c/l0;->g:Le/m/a/c/j0;

    .line 13
    invoke-virtual {v0, v8}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    move-result v13

    .line 14
    iget-object v0, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 15
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-wide v11, v0, Le/m/a/c/n0;->m:J

    move-object v9, v8

    move-object v14, v5

    .line 16
    invoke-virtual/range {v9 .. v14}, Le/m/a/c/j0;->a(Le/m/a/c/n1/i;JZ[Z)J

    move-result-wide v9

    .line 17
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v1, v0, Le/m/a/c/n0;->e:I

    if-eq v1, v4, :cond_5

    iget-wide v0, v0, Le/m/a/c/n0;->m:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v11, v0, Le/m/a/c/n0;->d:J

    move-object/from16 v0, p0

    move-wide v2, v9

    move v14, v4

    move-object v13, v5

    move-wide v4, v11

    .line 19
    invoke-virtual/range {v0 .. v5}, Le/m/a/c/e0;->b(Le/m/a/c/l1/p$a;JJ)Le/m/a/c/n0;

    move-result-object v0

    iput-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 20
    iget-object v0, v6, Le/m/a/c/e0;->o:Le/m/a/c/e0$d;

    invoke-virtual {v0, v14}, Le/m/a/c/e0$d;->b(I)V

    .line 21
    invoke-virtual {v6, v9, v10}, Le/m/a/c/e0;->B(J)V

    goto :goto_4

    :cond_5
    move v14, v4

    move-object v13, v5

    .line 22
    :goto_4
    iget-object v0, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v0, v0

    new-array v0, v0, [Z

    move v1, v15

    move v2, v1

    .line 23
    :goto_5
    iget-object v3, v6, Le/m/a/c/e0;->a:[Le/m/a/c/u0;

    array-length v4, v3

    if-ge v1, v4, :cond_a

    .line 24
    aget-object v3, v3, v1

    .line 25
    invoke-interface {v3}, Le/m/a/c/u0;->getState()I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    goto :goto_6

    :cond_6
    move v4, v15

    :goto_6
    aput-boolean v4, v0, v1

    .line 26
    iget-object v4, v8, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    aget-object v4, v4, v1

    if-eqz v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 27
    :cond_7
    aget-boolean v5, v0, v1

    if-eqz v5, :cond_9

    .line 28
    invoke-interface {v3}, Le/m/a/c/u0;->j()Le/m/a/c/l1/w;

    move-result-object v5

    if-eq v4, v5, :cond_8

    .line 29
    invoke-virtual {v6, v3}, Le/m/a/c/e0;->d(Le/m/a/c/u0;)V

    goto :goto_7

    .line 30
    :cond_8
    aget-boolean v4, v13, v1

    if-eqz v4, :cond_9

    .line 31
    iget-wide v4, v6, Le/m/a/c/e0;->J:J

    invoke-interface {v3, v4, v5}, Le/m/a/c/u0;->l(J)V

    :cond_9
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 32
    :cond_a
    iget-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 33
    iget-object v3, v8, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 34
    iget-object v4, v8, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 35
    invoke-virtual {v1, v3, v4}, Le/m/a/c/n0;->c(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;)Le/m/a/c/n0;

    move-result-object v1

    iput-object v1, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    .line 36
    invoke-virtual {v6, v0, v2}, Le/m/a/c/e0;->f([ZI)V

    goto :goto_8

    :cond_b
    move v14, v4

    .line 37
    iget-object v0, v6, Le/m/a/c/e0;->r:Le/m/a/c/l0;

    invoke-virtual {v0, v8}, Le/m/a/c/l0;->j(Le/m/a/c/j0;)Z

    .line 38
    iget-boolean v0, v8, Le/m/a/c/j0;->d:Z

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, v8, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v0, v0, Le/m/a/c/k0;->b:J

    iget-wide v2, v6, Le/m/a/c/e0;->J:J

    .line 40
    iget-wide v4, v8, Le/m/a/c/j0;->n:J

    sub-long/2addr v2, v4

    .line 41
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v12, 0x0

    .line 42
    iget-object v2, v8, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    array-length v2, v2

    new-array v13, v2, [Z

    move-object v9, v10

    move-wide v10, v0

    invoke-virtual/range {v8 .. v13}, Le/m/a/c/j0;->a(Le/m/a/c/n1/i;JZ[Z)J

    .line 43
    :cond_c
    :goto_8
    invoke-virtual {v6, v7}, Le/m/a/c/e0;->n(Z)V

    .line 44
    iget-object v0, v6, Le/m/a/c/e0;->t:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    if-eq v0, v14, :cond_d

    .line 45
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->v()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/e0;->W()V

    .line 47
    iget-object v0, v6, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Le/m/a/c/q1/a0;->d(I)Z

    :cond_d
    return-void

    :cond_e
    if-ne v8, v1, :cond_f

    move v2, v15

    .line 48
    :cond_f
    iget-object v8, v8, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    goto/16 :goto_0

    :cond_10
    :goto_9
    return-void
.end method
