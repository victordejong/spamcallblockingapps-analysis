.class public final Ln3/y/b/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ln3/y/b/a/t0/s$a;
.implements Ln3/y/b/a/v0/g$a;
.implements Ln3/y/b/a/t0/t$b;
.implements Ln3/y/b/a/e$a;
.implements Ln3/y/b/a/g0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/v$d;,
        Ln3/y/b/a/v$b;,
        Ln3/y/b/a/v$c;,
        Ln3/y/b/a/v$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Ln3/y/b/a/v$e;

.field public E:J

.field public J:I

.field public final a:[Ln3/y/b/a/h0;

.field public final b:[Ln3/y/b/a/b;

.field public final c:Ln3/y/b/a/v0/g;

.field public final d:Ln3/y/b/a/v0/h;

.field public final e:Ln3/y/b/a/d;

.field public final f:Ln3/y/b/a/w0/d;

.field public final g:Ln3/y/b/a/x0/t;

.field public final h:Landroid/os/HandlerThread;

.field public final i:Landroid/os/Handler;

.field public final j:Ln3/y/b/a/l0$c;

.field public final k:Ln3/y/b/a/l0$b;

.field public final l:J

.field public final m:Z

.field public final n:Ln3/y/b/a/e;

.field public final o:Ln3/y/b/a/v$d;

.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/v$c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ln3/y/b/a/x0/a;

.field public final r:Ln3/y/b/a/b0;

.field public s:Ln3/y/b/a/j0;

.field public t:Ln3/y/b/a/d0;

.field public u:Ln3/y/b/a/t0/t;

.field public v:[Ln3/y/b/a/h0;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>([Ln3/y/b/a/h0;Ln3/y/b/a/v0/g;Ln3/y/b/a/v0/h;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;ZIZLandroid/os/Handler;Ln3/y/b/a/x0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/v;->c:Ln3/y/b/a/v0/g;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/v;->d:Ln3/y/b/a/v0/h;

    .line 5
    iput-object p4, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    .line 6
    iput-object p5, p0, Ln3/y/b/a/v;->f:Ln3/y/b/a/w0/d;

    .line 7
    iput-boolean p6, p0, Ln3/y/b/a/v;->x:Z

    .line 8
    iput p7, p0, Ln3/y/b/a/v;->z:I

    .line 9
    iput-boolean p8, p0, Ln3/y/b/a/v;->A:Z

    .line 10
    iput-object p9, p0, Ln3/y/b/a/v;->i:Landroid/os/Handler;

    .line 11
    iput-object p10, p0, Ln3/y/b/a/v;->q:Ln3/y/b/a/x0/a;

    .line 12
    new-instance p6, Ln3/y/b/a/b0;

    invoke-direct {p6}, Ln3/y/b/a/b0;-><init>()V

    iput-object p6, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 13
    iget-wide p6, p4, Ln3/y/b/a/d;->i:J

    .line 14
    iput-wide p6, p0, Ln3/y/b/a/v;->l:J

    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Ln3/y/b/a/v;->m:Z

    .line 16
    sget-object p6, Ln3/y/b/a/j0;->g:Ln3/y/b/a/j0;

    iput-object p6, p0, Ln3/y/b/a/v;->s:Ln3/y/b/a/j0;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    invoke-static {p6, p7, p3}, Ln3/y/b/a/d0;->d(JLn3/y/b/a/v0/h;)Ln3/y/b/a/d0;

    move-result-object p3

    iput-object p3, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 18
    new-instance p3, Ln3/y/b/a/v$d;

    const/4 p6, 0x0

    invoke-direct {p3, p6}, Ln3/y/b/a/v$d;-><init>(Ln3/y/b/a/v$a;)V

    iput-object p3, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    .line 19
    array-length p3, p1

    new-array p3, p3, [Ln3/y/b/a/b;

    iput-object p3, p0, Ln3/y/b/a/v;->b:[Ln3/y/b/a/b;

    move p3, p4

    .line 20
    :goto_0
    array-length p6, p1

    if-ge p3, p6, :cond_0

    .line 21
    aget-object p6, p1, p3

    invoke-interface {p6, p3}, Ln3/y/b/a/h0;->d(I)V

    .line 22
    iget-object p6, p0, Ln3/y/b/a/v;->b:[Ln3/y/b/a/b;

    aget-object p7, p1, p3

    invoke-interface {p7}, Ln3/y/b/a/h0;->q()Ln3/y/b/a/b;

    move-result-object p7

    aput-object p7, p6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ln3/y/b/a/e;

    invoke-direct {p1, p0, p10}, Ln3/y/b/a/e;-><init>(Ln3/y/b/a/e$a;Ln3/y/b/a/x0/a;)V

    iput-object p1, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    new-array p1, p4, [Ln3/y/b/a/h0;

    .line 25
    iput-object p1, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    .line 26
    new-instance p1, Ln3/y/b/a/l0$c;

    invoke-direct {p1}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    .line 27
    new-instance p1, Ln3/y/b/a/l0$b;

    invoke-direct {p1}, Ln3/y/b/a/l0$b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    .line 28
    iput-object p0, p2, Ln3/y/b/a/v0/g;->a:Ln3/y/b/a/v0/g$a;

    .line 29
    iput-object p5, p2, Ln3/y/b/a/v0/g;->b:Ln3/y/b/a/w0/d;

    .line 30
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Ln3/y/b/a/v;->h:Landroid/os/HandlerThread;

    .line 31
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Ln3/y/b/a/x0/a;->c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ln3/y/b/a/x0/t;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    return-void
.end method

.method public static f(Ln3/y/b/a/v0/e;)[Landroidx/media2/exoplayer/external/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ln3/y/b/a/v0/e;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Ln3/y/b/a/v0/e;->h(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final A(Ln3/y/b/a/v$e;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/v$e;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    .line 2
    iget-object v1, p1, Ln3/y/b/a/v$e;->a:Ln3/y/b/a/l0;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {v1}, Ln3/y/b/a/l0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 5
    :cond_1
    :try_start_0
    iget-object v5, p0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget-object v6, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    iget v7, p1, Ln3/y/b/a/v$e;->b:I

    iget-wide v8, p1, Ln3/y/b/a/v$e;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Ln3/y/b/a/l0;->j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 6
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Ln3/y/b/a/v;->B(Ljava/lang/Object;Ln3/y/b/a/l0;Ln3/y/b/a/l0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    .line 9
    invoke-virtual {v0, v2, p1}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object p1

    iget p1, p1, Ln3/y/b/a/l0$b;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    invoke-virtual {p0, v0, p1, v1, v2}, Ln3/y/b/a/v;->g(Ln3/y/b/a/l0;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method public final B(Ljava/lang/Object;Ln3/y/b/a/l0;Ln3/y/b/a/l0;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p2, p1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/l0;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move p1, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v5, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    iget-object v6, p0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget v7, p0, Ln3/y/b/a/v;->z:I

    iget-boolean v8, p0, Ln3/y/b/a/v;->A:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Ln3/y/b/a/l0;->d(ILn3/y/b/a/l0$b;Ln3/y/b/a/l0$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2, v4}, Ln3/y/b/a/l0;->l(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p3, p1}, Ln3/y/b/a/l0;->l(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final C(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    add-long/2addr p1, p3

    .line 4
    iget-object p3, v0, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final D(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v2, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    .line 4
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v2, v0, v1, v3}, Ln3/y/b/a/v;->F(Ln3/y/b/a/t0/t$a;JZ)J

    move-result-wide v3

    .line 6
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v5, v1, Ln3/y/b/a/d0;->d:J

    .line 8
    invoke-virtual {p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v7

    .line 9
    invoke-virtual/range {v1 .. v8}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ln3/y/b/a/v$d;->b(I)V

    :cond_0
    return-void
.end method

.method public final E(Ln3/y/b/a/v$e;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v7, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ln3/y/b/a/v$d;->a(I)V

    .line 2
    invoke-virtual {v7, v0, v2}, Ln3/y/b/a/v;->A(Ln3/y/b/a/v$e;Z)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-boolean v6, v7, Ln3/y/b/a/v;->A:Z

    iget-object v10, v7, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget-object v11, v7, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    invoke-virtual {v1, v6, v10, v11}, Ln3/y/b/a/d0;->e(ZLn3/y/b/a/l0$c;Ln3/y/b/a/l0$b;)Ln3/y/b/a/t0/t$a;

    move-result-object v1

    move-object v15, v1

    move v10, v2

    move-wide v12, v8

    move-wide/from16 v18, v12

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
    iget-object v12, v7, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    invoke-virtual {v12, v6, v10, v11}, Ln3/y/b/a/b0;->k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v3

    move-object v15, v6

    move-wide/from16 v18, v10

    move v10, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 9
    iget-wide v14, v0, Ln3/y/b/a/v$e;->c:J

    cmp-long v1, v14, v8

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    move-object v15, v6

    move-wide/from16 v18, v10

    move v10, v1

    :goto_1
    const/4 v11, 0x2

    .line 10
    :try_start_0
    iget-object v1, v7, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    if-eqz v1, :cond_b

    iget v1, v7, Ln3/y/b/a/v;->C:I

    if-lez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    cmp-long v0, v12, v8

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 11
    invoke-virtual {v7, v0}, Ln3/y/b/a/v;->P(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    .line 12
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/v;->x(ZZZZZ)V

    goto/16 :goto_6

    .line 13
    :cond_4
    iget-object v0, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v15, v0}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, v7, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 15
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-eqz v0, :cond_5

    .line 16
    iget-boolean v1, v0, Ln3/y/b/a/z;->d:Z

    if-eqz v1, :cond_5

    cmp-long v1, v12, v3

    if-eqz v1, :cond_5

    .line 17
    iget-object v0, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    iget-object v1, v7, Ln3/y/b/a/v;->s:Ln3/y/b/a/j0;

    .line 18
    invoke-interface {v0, v12, v13, v1}, Ln3/y/b/a/t0/s;->n(JLn3/y/b/a/j0;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    move-wide v0, v12

    .line 19
    :goto_2
    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v3

    iget-object v6, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v8, v6, Ln3/y/b/a/d0;->m:J

    invoke-static {v8, v9}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-nez v3, :cond_8

    .line 20
    iget-object v0, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v14, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 22
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v20

    move-wide/from16 v16, v0

    .line 23
    invoke-virtual/range {v14 .. v21}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v0

    iput-object v0, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-eqz v10, :cond_6

    .line 24
    iget-object v0, v7, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    invoke-virtual {v0, v11}, Ln3/y/b/a/v$d;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v0, v12

    .line 25
    :cond_8
    :try_start_1
    iget-object v3, v7, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 26
    iget-object v4, v3, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 27
    iget-object v3, v3, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-eq v4, v3, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v5

    .line 28
    :goto_3
    invoke-virtual {v7, v15, v0, v1, v3}, Ln3/y/b/a/v;->F(Ln3/y/b/a/t0/t$a;JZ)J

    move-result-wide v0

    cmp-long v3, v12, v0

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    move v2, v5

    :goto_4
    or-int/2addr v10, v2

    move-wide/from16 v16, v0

    goto :goto_7

    .line 29
    :cond_b
    :goto_5
    iput-object v0, v7, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    .line 30
    :goto_7
    iget-object v14, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 31
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v20

    .line 32
    invoke-virtual/range {v14 .. v21}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v0

    iput-object v0, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-eqz v10, :cond_c

    .line 33
    iget-object v0, v7, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    invoke-virtual {v0, v11}, Ln3/y/b/a/v$d;->b(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 34
    iget-object v14, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 35
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v20

    move-wide/from16 v16, v12

    .line 36
    invoke-virtual/range {v14 .. v21}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v1

    iput-object v1, v7, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-eqz v10, :cond_d

    .line 37
    iget-object v1, v7, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    invoke-virtual {v1, v11}, Ln3/y/b/a/v$d;->b(I)V

    :cond_d
    throw v0
.end method

.method public final F(Ln3/y/b/a/t0/t$a;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/v;->S()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/v;->y:Z

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Ln3/y/b/a/v;->P(I)V

    .line 4
    iget-object v2, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 5
    iget-object v2, v2, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    iget-object v4, v3, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v4, v4, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {p1, v4}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Ln3/y/b/a/z;->d:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object p1, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    invoke-virtual {p1, v3}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    invoke-virtual {v3}, Ln3/y/b/a/b0;->a()Ln3/y/b/a/z;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    if-nez p4, :cond_2

    if-ne v2, v3, :cond_2

    if-eqz v3, :cond_4

    .line 9
    iget-wide v6, v3, Ln3/y/b/a/z;->n:J

    add-long/2addr v6, p2

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 10
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length p4, p1

    move v2, v0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v6, p1, v2

    .line 11
    invoke-virtual {p0, v6}, Ln3/y/b/a/v;->c(Ln3/y/b/a/h0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Ln3/y/b/a/h0;

    .line 12
    iput-object p1, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 13
    iput-wide v4, v3, Ln3/y/b/a/z;->n:J

    :cond_4
    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p0, v2}, Ln3/y/b/a/v;->V(Ln3/y/b/a/z;)V

    .line 15
    iget-boolean p1, v3, Ln3/y/b/a/z;->e:Z

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, v3, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {p1, p2, p3}, Ln3/y/b/a/t0/s;->e(J)J

    move-result-wide p1

    .line 17
    iget-object p3, v3, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    iget-wide v2, p0, Ln3/y/b/a/v;->l:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Ln3/y/b/a/v;->m:Z

    invoke-interface {p3, v2, v3, p4}, Ln3/y/b/a/t0/s;->k(JZ)V

    move-wide p2, p1

    .line 18
    :cond_5
    invoke-virtual {p0, p2, p3}, Ln3/y/b/a/v;->y(J)V

    .line 19
    invoke-virtual {p0}, Ln3/y/b/a/v;->s()V

    goto :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ln3/y/b/a/b0;->b(Z)V

    .line 21
    iget-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    sget-object p4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v2, p0, Ln3/y/b/a/v;->d:Ln3/y/b/a/v0/h;

    .line 22
    invoke-virtual {p1, p4, v2}, Ln3/y/b/a/d0;->c(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)Ln3/y/b/a/d0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 23
    invoke-virtual {p0, p2, p3}, Ln3/y/b/a/v;->y(J)V

    .line 24
    :goto_3
    invoke-virtual {p0, v0}, Ln3/y/b/a/v;->m(Z)V

    .line 25
    iget-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    invoke-virtual {p1, v1}, Ln3/y/b/a/x0/t;->b(I)Z

    return-wide p2
.end method

.method public final G(Ln3/y/b/a/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ln3/y/b/a/g0;->f:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 3
    iget-object v1, v1, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->b(Ln3/y/b/a/g0;)V

    .line 5
    iget-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget p1, p1, Ln3/y/b/a/d0;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 6
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    invoke-virtual {p1, v1}, Ln3/y/b/a/x0/t;->b(I)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final H(Ln3/y/b/a/g0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ln3/y/b/a/g0;->f:Landroid/os/Handler;

    .line 2
    new-instance v1, Ln3/y/b/a/u;

    invoke-direct {v1, p0, p1}, Ln3/y/b/a/u;-><init>(Ln3/y/b/a/v;Ln3/y/b/a/g0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final I()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v3}, Ln3/y/b/a/h0;->n()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/v;->B:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Ln3/y/b/a/v;->B:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Ln3/y/b/a/h0;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Ln3/y/b/a/h0;->reset()V

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

.method public final K(Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-boolean v2, v1, Ln3/y/b/a/d0;->g:Z

    move/from16 v12, p1

    if-eq v2, v12, :cond_0

    .line 2
    new-instance v2, Ln3/y/b/a/d0;

    move-object v3, v2

    iget-object v4, v1, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v5, v1, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v6, v1, Ln3/y/b/a/d0;->c:J

    iget-wide v8, v1, Ln3/y/b/a/d0;->d:J

    iget v10, v1, Ln3/y/b/a/d0;->e:I

    iget-object v11, v1, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    iget-object v13, v1, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v14, v1, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    iget-object v15, v1, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    iget-wide v2, v1, Ln3/y/b/a/d0;->k:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Ln3/y/b/a/d0;->l:J

    move-wide/from16 v18, v2

    iget-wide v1, v1, Ln3/y/b/a/d0;->m:J

    move-wide/from16 v20, v1

    move/from16 v12, p1

    move-object/from16 v3, v23

    invoke-direct/range {v3 .. v21}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    move-object/from16 v1, v22

    .line 3
    iput-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    :cond_0
    return-void
.end method

.method public final L(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/v;->y:Z

    .line 2
    iput-boolean p1, p0, Ln3/y/b/a/v;->x:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/v;->S()V

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/v;->U()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget p1, p1, Ln3/y/b/a/d0;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/v;->Q()V

    .line 7
    iget-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    invoke-virtual {p1, v1}, Ln3/y/b/a/x0/t;->b(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    invoke-virtual {p1, v1}, Ln3/y/b/a/x0/t;->b(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final M(Ln3/y/b/a/e0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    invoke-virtual {v0, p1}, Ln3/y/b/a/e;->u(Ln3/y/b/a/e0;)V

    .line 2
    iget-object p1, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 3
    invoke-virtual {p1}, Ln3/y/b/a/e;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 5
    iget-object v0, v0, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final N(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iput p1, p0, Ln3/y/b/a/v;->z:I

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 3
    iput p1, v0, Ln3/y/b/a/b0;->e:I

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/b0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->D(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->m(Z)V

    return-void
.end method

.method public final O(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Ln3/y/b/a/v;->A:Z

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 3
    iput-boolean p1, v0, Ln3/y/b/a/b0;->f:Z

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/b0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->D(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->m(Z)V

    return-void
.end method

.method public final P(I)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v2, v1, Ln3/y/b/a/d0;->e:I

    move/from16 v10, p1

    if-eq v2, v10, :cond_0

    .line 2
    new-instance v2, Ln3/y/b/a/d0;

    move-object v3, v2

    iget-object v4, v1, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v5, v1, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v6, v1, Ln3/y/b/a/d0;->c:J

    iget-wide v8, v1, Ln3/y/b/a/d0;->d:J

    iget-object v11, v1, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    iget-boolean v12, v1, Ln3/y/b/a/d0;->g:Z

    iget-object v13, v1, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v14, v1, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    iget-object v15, v1, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    iget-wide v2, v1, Ln3/y/b/a/d0;->k:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Ln3/y/b/a/d0;->l:J

    move-wide/from16 v18, v2

    iget-wide v1, v1, Ln3/y/b/a/d0;->m:J

    move-wide/from16 v20, v1

    move/from16 v10, p1

    move-object/from16 v3, v23

    invoke-direct/range {v3 .. v21}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    move-object/from16 v1, v22

    .line 3
    iput-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    :cond_0
    return-void
.end method

.method public final Q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/v;->y:Z

    .line 2
    iget-object v1, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Ln3/y/b/a/e;->f:Z

    .line 4
    iget-object v1, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v1}, Ln3/y/b/a/x0/r;->b()V

    .line 5
    iget-object v1, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 6
    invoke-interface {v3}, Ln3/y/b/a/h0;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R(ZZZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Ln3/y/b/a/v;->B:Z

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

    invoke-virtual/range {v2 .. v7}, Ln3/y/b/a/v;->x(ZZZZZ)V

    .line 2
    iget-object p1, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    iget p2, p0, Ln3/y/b/a/v;->C:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ln3/y/b/a/v$d;->a(I)V

    .line 3
    iput v0, p0, Ln3/y/b/a/v;->C:I

    .line 4
    iget-object p1, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    .line 5
    invoke-virtual {p1, v1}, Ln3/y/b/a/d;->b(Z)V

    .line 6
    invoke-virtual {p0, v1}, Ln3/y/b/a/v;->P(I)V

    return-void
.end method

.method public final S()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/y/b/a/e;->f:Z

    .line 3
    iget-object v0, v0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 4
    iget-boolean v2, v0, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/x0/r;->a(J)V

    .line 6
    iput-boolean v1, v0, Ln3/y/b/a/x0/r;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 8
    invoke-interface {v3}, Ln3/y/b/a/h0;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 9
    invoke-interface {v3}, Ln3/y/b/a/h0;->stop()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final T(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)V
    .locals 6

    .line 1
    iget-object p1, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    iget-object v0, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    iget-object p2, p2, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    invoke-interface {v3}, Ln3/y/b/a/h0;->p()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v3, p2, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 6
    :goto_1
    iput-boolean v2, p1, Ln3/y/b/a/d;->l:Z

    .line 7
    iget v2, p1, Ln3/y/b/a/d;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move v2, v1

    move v3, v2

    .line 8
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p2, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 10
    aget-object v4, v0, v3

    invoke-interface {v4}, Ln3/y/b/a/h0;->p()I

    move-result v4

    const/high16 v5, 0x20000

    packed-switch v4, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    move v5, v1

    goto :goto_3

    :pswitch_1
    const/high16 v5, 0x1f40000

    goto :goto_3

    :pswitch_2
    const/high16 v5, 0x360000

    goto :goto_3

    :pswitch_3
    const/high16 v5, 0x22c0000

    :goto_3
    :pswitch_4
    add-int/2addr v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 12
    :cond_3
    iput v2, p1, Ln3/y/b/a/d;->j:I

    .line 13
    iget-object p1, p1, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    invoke-virtual {p1, v2}, Ln3/y/b/a/w0/l;->b(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final U()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Ln3/y/b/a/z;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v1}, Ln3/y/b/a/t0/s;->f()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_0

    :cond_1
    move-wide v8, v2

    :goto_0
    cmp-long v1, v8, v2

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v8, v9}, Ln3/y/b/a/v;->y(J)V

    .line 6
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_16

    .line 7
    iget-object v6, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v7, v6, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v10, v6, Ln3/y/b/a/d0;->d:J

    .line 8
    invoke-virtual {p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v12

    .line 9
    invoke-virtual/range {v6 .. v13}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 10
    iget-object v0, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ln3/y/b/a/v$d;->b(I)V

    goto/16 :goto_a

    .line 11
    :cond_2
    iget-object v1, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    iget-object v2, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 12
    iget-object v2, v2, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    .line 13
    :goto_1
    iget-object v5, v1, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    if-eqz v5, :cond_5

    .line 14
    invoke-interface {v5}, Ln3/y/b/a/h0;->c()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    .line 15
    invoke-interface {v5}, Ln3/y/b/a/h0;->b()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_5

    iget-object v2, v1, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    .line 16
    invoke-interface {v2}, Ln3/y/b/a/h0;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v4

    :goto_3
    if-eqz v2, :cond_6

    .line 17
    iput-boolean v4, v1, Ln3/y/b/a/e;->e:Z

    .line 18
    iget-boolean v2, v1, Ln3/y/b/a/e;->f:Z

    if-eqz v2, :cond_a

    .line 19
    iget-object v2, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v2}, Ln3/y/b/a/x0/r;->b()V

    goto :goto_4

    .line 20
    :cond_6
    iget-object v2, v1, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    invoke-interface {v2}, Ln3/y/b/a/x0/i;->r()J

    move-result-wide v5

    .line 21
    iget-boolean v2, v1, Ln3/y/b/a/e;->e:Z

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v2}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_7

    .line 23
    iget-object v2, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 24
    iget-boolean v5, v2, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v5, :cond_a

    .line 25
    invoke-virtual {v2}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ln3/y/b/a/x0/r;->a(J)V

    .line 26
    iput-boolean v3, v2, Ln3/y/b/a/x0/r;->b:Z

    goto :goto_4

    .line 27
    :cond_7
    iput-boolean v3, v1, Ln3/y/b/a/e;->e:Z

    .line 28
    iget-boolean v2, v1, Ln3/y/b/a/e;->f:Z

    if-eqz v2, :cond_8

    .line 29
    iget-object v2, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v2}, Ln3/y/b/a/x0/r;->b()V

    .line 30
    :cond_8
    iget-object v2, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v2, v5, v6}, Ln3/y/b/a/x0/r;->a(J)V

    .line 31
    iget-object v2, v1, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    invoke-interface {v2}, Ln3/y/b/a/x0/i;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v2

    .line 32
    iget-object v5, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 33
    iget-object v5, v5, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    .line 34
    invoke-virtual {v2, v5}, Ln3/y/b/a/e0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 35
    iget-object v5, v1, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 36
    iget-boolean v6, v5, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v6, :cond_9

    .line 37
    invoke-virtual {v5}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ln3/y/b/a/x0/r;->a(J)V

    .line 38
    :cond_9
    iput-object v2, v5, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    .line 39
    iget-object v5, v1, Ln3/y/b/a/e;->b:Ln3/y/b/a/e$a;

    check-cast v5, Ln3/y/b/a/v;

    .line 40
    iget-object v5, v5, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 41
    iget-object v5, v5, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    const/16 v6, 0x11

    invoke-virtual {v5, v6, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 43
    :cond_a
    :goto_4
    invoke-virtual {v1}, Ln3/y/b/a/e;->r()J

    move-result-wide v1

    .line 44
    iput-wide v1, p0, Ln3/y/b/a/v;->E:J

    .line 45
    iget-wide v5, v0, Ln3/y/b/a/z;->n:J

    sub-long/2addr v1, v5

    .line 46
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v5, v0, Ln3/y/b/a/d0;->m:J

    .line 47
    iget-object v0, p0, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_9

    .line 48
    :cond_b
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v7, v0, Ln3/y/b/a/d0;->c:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_c

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 49
    :cond_c
    iget-object v3, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 50
    invoke-virtual {v3, v0}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v0

    .line 51
    iget v3, p0, Ln3/y/b/a/v;->J:I

    const/4 v7, 0x0

    if-lez v3, :cond_d

    iget-object v8, p0, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/v$c;

    move-wide v10, v1

    move-wide v8, v5

    move-object v5, p0

    goto :goto_6

    :cond_d
    move-object v3, p0

    move-wide v8, v1

    :goto_5
    move-wide v10, v8

    move-wide v8, v5

    move-object v5, v3

    move-object v3, v7

    :goto_6
    if-eqz v3, :cond_10

    .line 52
    iget v6, v3, Ln3/y/b/a/v$c;->b:I

    if-gt v6, v0, :cond_e

    if-ne v6, v0, :cond_10

    iget-wide v12, v3, Ln3/y/b/a/v$c;->c:J

    cmp-long v3, v12, v8

    if-lez v3, :cond_10

    .line 53
    :cond_e
    iget v3, v5, Ln3/y/b/a/v;->J:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v5, Ln3/y/b/a/v;->J:I

    if-lez v3, :cond_f

    .line 54
    iget-object v6, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/v$c;

    goto :goto_6

    :cond_f
    move-object v3, v5

    move-wide v5, v8

    move-wide v8, v10

    goto :goto_5

    .line 55
    :cond_10
    iget v3, v5, Ln3/y/b/a/v;->J:I

    iget-object v6, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    .line 56
    iget-object v3, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    iget v6, v5, Ln3/y/b/a/v;->J:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/v$c;

    goto :goto_7

    :cond_11
    move-object v3, v7

    :goto_7
    if-eqz v3, :cond_13

    .line 57
    iget-object v6, v3, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    if-eqz v6, :cond_13

    iget v6, v3, Ln3/y/b/a/v$c;->b:I

    if-lt v6, v0, :cond_12

    if-ne v6, v0, :cond_13

    iget-wide v12, v3, Ln3/y/b/a/v$c;->c:J

    cmp-long v6, v12, v8

    if-gtz v6, :cond_13

    .line 58
    :cond_12
    iget v3, v5, Ln3/y/b/a/v;->J:I

    add-int/2addr v3, v4

    iput v3, v5, Ln3/y/b/a/v;->J:I

    .line 59
    iget-object v6, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    .line 60
    iget-object v3, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    iget v6, v5, Ln3/y/b/a/v;->J:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/v$c;

    goto :goto_7

    :cond_13
    :goto_8
    if-eqz v3, :cond_15

    .line 61
    iget-object v4, v3, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    if-eqz v4, :cond_15

    iget v4, v3, Ln3/y/b/a/v$c;->b:I

    if-ne v4, v0, :cond_15

    iget-wide v12, v3, Ln3/y/b/a/v$c;->c:J

    cmp-long v4, v12, v8

    if-lez v4, :cond_15

    cmp-long v4, v12, v10

    if-gtz v4, :cond_15

    .line 62
    :try_start_0
    iget-object v4, v3, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    invoke-virtual {v5, v4}, Ln3/y/b/a/v;->G(Ln3/y/b/a/g0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v3, v3, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    iget v4, v5, Ln3/y/b/a/v;->J:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    iget v3, v5, Ln3/y/b/a/v;->J:I

    iget-object v4, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 66
    iget-object v3, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    iget v4, v5, Ln3/y/b/a/v;->J:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/v$c;

    goto :goto_8

    :cond_14
    move-object v3, v7

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 67
    iget-object v1, v3, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, v5, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    iget v2, v5, Ln3/y/b/a/v;->J:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    throw v0

    .line 70
    :cond_15
    :goto_9
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iput-wide v1, v0, Ln3/y/b/a/d0;->m:J

    .line 71
    :cond_16
    :goto_a
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 72
    iget-object v0, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 73
    iget-object v1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    invoke-virtual {v0}, Ln3/y/b/a/z;->d()J

    move-result-wide v2

    iput-wide v2, v1, Ln3/y/b/a/d0;->k:J

    .line 74
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    invoke-virtual {p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v1

    iput-wide v1, v0, Ln3/y/b/a/d0;->l:J

    return-void
.end method

.method public final V(Ln3/y/b/a/z;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4
    :goto_0
    iget-object v5, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 5
    aget-object v5, v5, v3

    .line 6
    invoke-interface {v5}, Ln3/y/b/a/h0;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    aput-boolean v6, v1, v3

    .line 7
    iget-object v6, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 8
    invoke-virtual {v6, v3}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 9
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 10
    iget-object v6, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 11
    invoke-virtual {v6, v3}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-interface {v5}, Ln3/y/b/a/h0;->h()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-interface {v5}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v6

    iget-object v7, p1, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0, v5}, Ln3/y/b/a/v;->c(Ln3/y/b/a/h0;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 16
    iget-object v2, v0, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 17
    iget-object v0, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 18
    invoke-virtual {p1, v2, v0}, Ln3/y/b/a/d0;->c(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)Ln3/y/b/a/d0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 19
    invoke-virtual {p0, v1, v4}, Ln3/y/b/a/v;->e([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    new-instance v1, Ln3/y/b/a/v$b;

    invoke-direct {v1, p1, p2}, Ln3/y/b/a/v$b;-><init>(Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Ln3/y/b/a/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/g0;->a()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p1, Ln3/y/b/a/g0;->a:Ln3/y/b/a/g0$b;

    .line 3
    iget v2, p1, Ln3/y/b/a/g0;->d:I

    .line 4
    iget-object v3, p1, Ln3/y/b/a/g0;->e:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v2, v3}, Ln3/y/b/a/g0$b;->f(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Ln3/y/b/a/g0;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ln3/y/b/a/g0;->b(Z)V

    throw v1
.end method

.method public final c(Ln3/y/b/a/h0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    .line 4
    iput-object v1, v0, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Ln3/y/b/a/e;->e:Z

    .line 6
    :cond_0
    invoke-interface {p1}, Ln3/y/b/a/h0;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p1}, Ln3/y/b/a/h0;->stop()V

    .line 8
    :cond_1
    invoke-interface {p1}, Ln3/y/b/a/h0;->a()V

    return-void
.end method

.method public final d()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Ln3/y/b/a/v;->q:Ln3/y/b/a/x0/a;

    invoke-interface {v0}, Ln3/y/b/a/x0/a;->b()J

    move-result-wide v2

    .line 2
    iget-object v0, v1, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 3
    :cond_0
    iget v11, v1, Ln3/y/b/a/v;->C:I

    if-lez v11, :cond_1

    .line 4
    invoke-interface {v0}, Ln3/y/b/a/t0/t;->a()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-wide v11, v1, Ln3/y/b/a/v;->E:J

    invoke-virtual {v0, v11, v12}, Ln3/y/b/a/b0;->i(J)V

    .line 6
    iget-object v0, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 7
    iget-object v11, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v11, :cond_3

    iget-object v12, v11, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v12, v12, Ln3/y/b/a/a0;->g:Z

    if-nez v12, :cond_2

    .line 8
    invoke-virtual {v11}, Ln3/y/b/a/z;->e()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    iget-object v11, v11, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v11, v11, Ln3/y/b/a/a0;->e:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_2

    iget v0, v0, Ln3/y/b/a/b0;->j:I

    const/16 v11, 0x64

    if-ge v0, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v10

    :goto_2
    if-eqz v0, :cond_d

    .line 9
    iget-object v11, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-wide v12, v1, Ln3/y/b/a/v;->E:J

    iget-object v0, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 10
    iget-object v14, v11, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-nez v14, :cond_4

    .line 11
    iget-object v12, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v13, v0, Ln3/y/b/a/d0;->d:J

    iget-wide v4, v0, Ln3/y/b/a/d0;->c:J

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Ln3/y/b/a/b0;->d(Ln3/y/b/a/t0/t$a;JJ)Ln3/y/b/a/a0;

    move-result-object v0

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v11, v14, v12, v13}, Ln3/y/b/a/b0;->c(Ln3/y/b/a/z;J)Ln3/y/b/a/a0;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_7

    .line 13
    iget-object v0, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 14
    iget-object v0, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, v1, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    aget-object v11, v0, v5

    .line 16
    invoke-interface {v11}, Ln3/y/b/a/h0;->e()Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 17
    :cond_6
    iget-object v0, v1, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    invoke-interface {v0}, Ln3/y/b/a/t0/t;->a()V

    goto/16 :goto_8

    .line 18
    :cond_7
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v5, v1, Ln3/y/b/a/v;->b:[Ln3/y/b/a/b;

    iget-object v11, v1, Ln3/y/b/a/v;->c:Ln3/y/b/a/v0/g;

    iget-object v12, v1, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    .line 19
    iget-object v12, v12, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    .line 20
    iget-object v13, v1, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    iget-object v14, v1, Ln3/y/b/a/v;->d:Ln3/y/b/a/v0/h;

    .line 21
    iget-object v15, v4, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-nez v15, :cond_9

    .line 22
    iget-object v15, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v15}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-wide v8, v0, Ln3/y/b/a/a0;->c:J

    cmp-long v15, v8, v6

    if-eqz v15, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v21, 0x0

    goto :goto_6

    .line 23
    :cond_9
    iget-wide v8, v15, Ln3/y/b/a/z;->n:J

    .line 24
    iget-object v15, v15, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v6, v15, Ln3/y/b/a/a0;->e:J

    add-long/2addr v8, v6

    iget-wide v6, v0, Ln3/y/b/a/a0;->b:J

    sub-long/2addr v8, v6

    :goto_5
    move-wide/from16 v21, v8

    .line 25
    :goto_6
    new-instance v6, Ln3/y/b/a/z;

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v0

    move-object/from16 v27, v14

    invoke-direct/range {v19 .. v27}, Ln3/y/b/a/z;-><init>([Ln3/y/b/a/b;JLn3/y/b/a/v0/g;Ln3/y/b/a/w0/b;Ln3/y/b/a/t0/t;Ln3/y/b/a/a0;Ln3/y/b/a/v0/h;)V

    .line 26
    iget-object v5, v4, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v5, :cond_b

    .line 27
    iget-object v7, v5, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-ne v6, v7, :cond_a

    goto :goto_7

    .line 28
    :cond_a
    invoke-virtual {v5}, Ln3/y/b/a/z;->b()V

    .line 29
    iput-object v6, v5, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 30
    invoke-virtual {v5}, Ln3/y/b/a/z;->c()V

    goto :goto_7

    .line 31
    :cond_b
    iput-object v6, v4, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 32
    iput-object v6, v4, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    :goto_7
    const/4 v5, 0x0

    .line 33
    iput-object v5, v4, Ln3/y/b/a/b0;->k:Ljava/lang/Object;

    .line 34
    iput-object v6, v4, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 35
    iget v5, v4, Ln3/y/b/a/b0;->j:I

    add-int/2addr v5, v10

    iput v5, v4, Ln3/y/b/a/b0;->j:I

    .line 36
    iget-object v4, v6, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    iget-wide v7, v0, Ln3/y/b/a/a0;->b:J

    invoke-interface {v4, v1, v7, v8}, Ln3/y/b/a/t0/s;->o(Ln3/y/b/a/t0/s$a;J)V

    .line 37
    invoke-virtual {v1, v10}, Ln3/y/b/a/v;->K(Z)V

    .line 38
    iget-object v0, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 39
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-ne v0, v6, :cond_c

    .line 40
    iget-object v0, v6, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v4, v0, Ln3/y/b/a/a0;->b:J

    iget-wide v6, v6, Ln3/y/b/a/z;->n:J

    add-long/2addr v4, v6

    .line 41
    invoke-virtual {v1, v4, v5}, Ln3/y/b/a/v;->y(J)V

    :cond_c
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v0}, Ln3/y/b/a/v;->m(Z)V

    .line 43
    :cond_d
    :goto_8
    iget-object v0, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 44
    iget-object v0, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v0, :cond_10

    .line 45
    invoke-virtual {v0}, Ln3/y/b/a/z;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    .line 46
    :cond_e
    iget-object v0, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-boolean v0, v0, Ln3/y/b/a/d0;->g:Z

    if-nez v0, :cond_f

    .line 47
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->s()V

    :cond_f
    const/4 v0, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v1, v0}, Ln3/y/b/a/v;->K(Z)V

    .line 49
    :goto_a
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 50
    iget-object v4, v4, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-nez v4, :cond_11

    goto/16 :goto_10

    .line 51
    :cond_11
    iget-object v5, v4, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-nez v5, :cond_13

    .line 52
    iget-object v5, v4, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v5, v5, Ln3/y/b/a/a0;->g:Z

    if-eqz v5, :cond_1b

    move v5, v0

    .line 53
    :goto_b
    iget-object v6, v1, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v7, v6

    if-ge v5, v7, :cond_1b

    .line 54
    aget-object v6, v6, v5

    .line 55
    iget-object v7, v4, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v7, v7, v5

    if-eqz v7, :cond_12

    .line 56
    invoke-interface {v6}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v8

    if-ne v8, v7, :cond_12

    .line 57
    invoke-interface {v6}, Ln3/y/b/a/h0;->e()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 58
    invoke-interface {v6}, Ln3/y/b/a/h0;->n()V

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 59
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->q()Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_10

    .line 60
    :cond_14
    iget-object v5, v4, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 61
    iget-boolean v5, v5, Ln3/y/b/a/z;->d:Z

    if-nez v5, :cond_15

    goto/16 :goto_10

    .line 62
    :cond_15
    iget-object v4, v4, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 63
    iget-object v5, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 64
    iget-object v6, v5, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-eqz v6, :cond_16

    .line 65
    iget-object v6, v6, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz v6, :cond_16

    move v6, v10

    goto :goto_c

    :cond_16
    move v6, v0

    .line 66
    :goto_c
    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 67
    iget-object v6, v5, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    .line 68
    iget-object v6, v6, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 69
    iput-object v6, v5, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    .line 70
    iget-object v5, v6, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 71
    iget-object v7, v6, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v7}, Ln3/y/b/a/t0/s;->f()J

    move-result-wide v7

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v7, v11

    if-eqz v7, :cond_17

    .line 72
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->I()V

    goto :goto_10

    :cond_17
    move v7, v0

    .line 73
    :goto_d
    iget-object v8, v1, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v9, v8

    if-ge v7, v9, :cond_1b

    .line 74
    aget-object v8, v8, v7

    .line 75
    invoke-virtual {v4, v7}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 76
    invoke-interface {v8}, Ln3/y/b/a/h0;->h()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 77
    iget-object v9, v5, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 78
    iget-object v9, v9, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v9, v9, v7

    .line 79
    invoke-virtual {v5, v7}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v11

    .line 80
    iget-object v12, v1, Ln3/y/b/a/v;->b:[Ln3/y/b/a/b;

    aget-object v12, v12, v7

    .line 81
    iget v12, v12, Ln3/y/b/a/b;->a:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_18

    move v12, v10

    goto :goto_e

    :cond_18
    move v12, v0

    .line 82
    :goto_e
    iget-object v13, v4, Ln3/y/b/a/v0/h;->b:[Ln3/y/b/a/i0;

    aget-object v13, v13, v7

    .line 83
    iget-object v14, v5, Ln3/y/b/a/v0/h;->b:[Ln3/y/b/a/i0;

    aget-object v14, v14, v7

    if-eqz v11, :cond_19

    .line 84
    invoke-virtual {v14, v13}, Ln3/y/b/a/i0;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    if-nez v12, :cond_19

    .line 85
    invoke-static {v9}, Ln3/y/b/a/v;->f(Ln3/y/b/a/v0/e;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 86
    iget-object v11, v6, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v11, v11, v7

    .line 87
    iget-wide v12, v6, Ln3/y/b/a/z;->n:J

    .line 88
    invoke-interface {v8, v9, v11, v12, v13}, Ln3/y/b/a/h0;->t([Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/j0;J)V

    goto :goto_f

    .line 89
    :cond_19
    invoke-interface {v8}, Ln3/y/b/a/h0;->n()V

    :cond_1a
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1b
    :goto_10
    move v4, v0

    .line 90
    :goto_11
    iget-boolean v5, v1, Ln3/y/b/a/v;->x:Z

    if-nez v5, :cond_1c

    goto :goto_12

    .line 91
    :cond_1c
    iget-object v5, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 92
    iget-object v6, v5, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-nez v6, :cond_1d

    goto :goto_12

    .line 93
    :cond_1d
    iget-object v7, v6, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-nez v7, :cond_1e

    goto :goto_12

    .line 94
    :cond_1e
    iget-object v5, v5, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-ne v6, v5, :cond_1f

    .line 95
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->q()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_12

    .line 96
    :cond_1f
    iget-wide v5, v1, Ln3/y/b/a/v;->E:J

    .line 97
    iget-object v8, v7, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v8, v8, Ln3/y/b/a/a0;->b:J

    iget-wide v11, v7, Ln3/y/b/a/z;->n:J

    add-long/2addr v8, v11

    cmp-long v5, v5, v8

    if-ltz v5, :cond_20

    move v5, v10

    goto :goto_13

    :cond_20
    :goto_12
    move v5, v0

    :goto_13
    if-eqz v5, :cond_24

    if-eqz v4, :cond_21

    .line 98
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->t()V

    .line 99
    :cond_21
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 100
    iget-object v5, v4, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 101
    iget-object v4, v4, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-ne v5, v4, :cond_22

    .line 102
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->I()V

    .line 103
    :cond_22
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    invoke-virtual {v4}, Ln3/y/b/a/b0;->a()Ln3/y/b/a/z;

    move-result-object v4

    .line 104
    invoke-virtual {v1, v5}, Ln3/y/b/a/v;->V(Ln3/y/b/a/z;)V

    .line 105
    iget-object v6, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v4, v4, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v7, v4, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v8, v4, Ln3/y/b/a/a0;->b:J

    iget-wide v11, v4, Ln3/y/b/a/a0;->c:J

    .line 106
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v25

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v11

    .line 107
    invoke-virtual/range {v19 .. v26}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v4

    iput-object v4, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 108
    iget-object v4, v5, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v4, v4, Ln3/y/b/a/a0;->f:Z

    if-eqz v4, :cond_23

    move v4, v0

    goto :goto_14

    :cond_23
    const/4 v4, 0x3

    .line 109
    :goto_14
    iget-object v5, v1, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    invoke-virtual {v5, v4}, Ln3/y/b/a/v$d;->b(I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->U()V

    move v4, v10

    goto :goto_11

    .line 111
    :cond_24
    :goto_15
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 112
    iget-object v4, v4, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    const-wide/16 v5, 0xa

    if-nez v4, :cond_25

    .line 113
    invoke-virtual {v1, v2, v3, v5, v6}, Ln3/y/b/a/v;->C(JJ)V

    return-void

    :cond_25
    const-string v7, "doSomeWork"

    .line 114
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->U()V

    .line 116
    iget-boolean v7, v4, Ln3/y/b/a/z;->d:Z

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_2e

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-long/2addr v11, v8

    .line 118
    iget-object v7, v4, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    iget-object v13, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v13, v13, Ln3/y/b/a/d0;->m:J

    iget-wide v8, v1, Ln3/y/b/a/v;->l:J

    sub-long/2addr v13, v8

    iget-boolean v8, v1, Ln3/y/b/a/v;->m:Z

    invoke-interface {v7, v13, v14, v8}, Ln3/y/b/a/t0/s;->k(JZ)V

    move v7, v0

    move v8, v10

    move v9, v8

    .line 119
    :goto_16
    iget-object v13, v1, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v14, v13

    if-ge v7, v14, :cond_2f

    .line 120
    aget-object v13, v13, v7

    .line 121
    invoke-interface {v13}, Ln3/y/b/a/h0;->getState()I

    move-result v14

    if-nez v14, :cond_26

    goto :goto_1d

    .line 122
    :cond_26
    iget-wide v14, v1, Ln3/y/b/a/v;->E:J

    invoke-interface {v13, v14, v15, v11, v12}, Ln3/y/b/a/h0;->i(JJ)V

    if-eqz v8, :cond_27

    .line 123
    invoke-interface {v13}, Ln3/y/b/a/h0;->c()Z

    move-result v8

    if-eqz v8, :cond_27

    move v8, v10

    goto :goto_17

    :cond_27
    move v8, v0

    .line 124
    :goto_17
    iget-object v14, v4, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v14, v14, v7

    invoke-interface {v13}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v15

    if-eq v14, v15, :cond_28

    move v14, v10

    goto :goto_18

    :cond_28
    move v14, v0

    :goto_18
    if-nez v14, :cond_29

    .line 125
    iget-object v15, v4, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz v15, :cond_29

    .line 126
    invoke-interface {v13}, Ln3/y/b/a/h0;->e()Z

    move-result v15

    if-eqz v15, :cond_29

    move v15, v10

    goto :goto_19

    :cond_29
    move v15, v0

    :goto_19
    if-nez v14, :cond_2b

    if-nez v15, :cond_2b

    .line 127
    invoke-interface {v13}, Ln3/y/b/a/h0;->b()Z

    move-result v14

    if-nez v14, :cond_2b

    invoke-interface {v13}, Ln3/y/b/a/h0;->c()Z

    move-result v14

    if-eqz v14, :cond_2a

    goto :goto_1a

    :cond_2a
    move v14, v0

    goto :goto_1b

    :cond_2b
    :goto_1a
    move v14, v10

    :goto_1b
    if-eqz v9, :cond_2c

    if-eqz v14, :cond_2c

    move v9, v10

    goto :goto_1c

    :cond_2c
    move v9, v0

    :goto_1c
    if-nez v14, :cond_2d

    .line 128
    invoke-interface {v13}, Ln3/y/b/a/h0;->o()V

    :cond_2d
    :goto_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 129
    :cond_2e
    iget-object v7, v4, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v7}, Ln3/y/b/a/t0/s;->j()V

    move v8, v10

    move v9, v8

    .line 130
    :cond_2f
    iget-object v7, v4, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v11, v7, Ln3/y/b/a/a0;->e:J

    const/4 v7, 0x4

    const/4 v13, 0x2

    if-eqz v8, :cond_31

    .line 131
    iget-boolean v8, v4, Ln3/y/b/a/z;->d:Z

    if-eqz v8, :cond_31

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v11, v14

    if-eqz v8, :cond_30

    iget-object v8, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v14, v8, Ln3/y/b/a/d0;->m:J

    cmp-long v8, v11, v14

    if-gtz v8, :cond_31

    :cond_30
    iget-object v4, v4, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v4, v4, Ln3/y/b/a/a0;->g:Z

    if-eqz v4, :cond_31

    .line 132
    invoke-virtual {v1, v7}, Ln3/y/b/a/v;->P(I)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->S()V

    goto/16 :goto_25

    .line 134
    :cond_31
    iget-object v4, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v8, v4, Ln3/y/b/a/d0;->e:I

    if-ne v8, v13, :cond_3c

    .line 135
    iget-object v8, v1, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v8, v8

    if-nez v8, :cond_32

    .line 136
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->r()Z

    move-result v10

    goto/16 :goto_24

    :cond_32
    if-nez v9, :cond_33

    goto/16 :goto_23

    .line 137
    :cond_33
    iget-boolean v4, v4, Ln3/y/b/a/d0;->g:Z

    if-nez v4, :cond_34

    goto/16 :goto_24

    .line 138
    :cond_34
    iget-object v4, v1, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 139
    iget-object v4, v4, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 140
    invoke-virtual {v4}, Ln3/y/b/a/z;->e()Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v4, v4, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v4, v4, Ln3/y/b/a/a0;->g:Z

    if-eqz v4, :cond_35

    move v4, v10

    goto :goto_1e

    :cond_35
    move v4, v0

    :goto_1e
    if-nez v4, :cond_3b

    .line 141
    iget-object v4, v1, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    .line 142
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v11

    iget-object v8, v1, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    invoke-virtual {v8}, Ln3/y/b/a/e;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v8

    iget v8, v8, Ln3/y/b/a/e0;->a:F

    iget-boolean v14, v1, Ln3/y/b/a/v;->y:Z

    .line 143
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget v15, Ln3/y/b/a/x0/x;->a:I

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v8, v15

    if-nez v15, :cond_36

    goto :goto_1f

    :cond_36
    long-to-double v11, v11

    float-to-double v7, v8

    div-double/2addr v11, v7

    .line 145
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    :goto_1f
    if-eqz v14, :cond_37

    .line 146
    iget-wide v7, v4, Ln3/y/b/a/d;->f:J

    goto :goto_20

    :cond_37
    iget-wide v7, v4, Ln3/y/b/a/d;->e:J

    :goto_20
    const-wide/16 v17, 0x0

    cmp-long v14, v7, v17

    if-lez v14, :cond_39

    cmp-long v7, v11, v7

    if-gez v7, :cond_39

    .line 147
    iget-boolean v7, v4, Ln3/y/b/a/d;->h:Z

    if-nez v7, :cond_38

    iget-object v7, v4, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    .line 148
    monitor-enter v7

    .line 149
    :try_start_0
    iget v8, v7, Ln3/y/b/a/w0/l;->e:I

    iget v11, v7, Ln3/y/b/a/w0/l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v8, v11

    monitor-exit v7

    .line 150
    iget v4, v4, Ln3/y/b/a/d;->j:I

    if-lt v8, v4, :cond_38

    goto :goto_21

    :catchall_0
    move-exception v0

    .line 151
    monitor-exit v7

    throw v0

    :cond_38
    move v4, v0

    goto :goto_22

    :cond_39
    :goto_21
    move v4, v10

    :goto_22
    if-eqz v4, :cond_3a

    goto :goto_24

    :cond_3a
    :goto_23
    move v10, v0

    :cond_3b
    :goto_24
    if-eqz v10, :cond_3c

    const/4 v4, 0x3

    .line 152
    invoke-virtual {v1, v4}, Ln3/y/b/a/v;->P(I)V

    .line 153
    iget-boolean v7, v1, Ln3/y/b/a/v;->x:Z

    if-eqz v7, :cond_3f

    .line 154
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->Q()V

    goto :goto_25

    :cond_3c
    const/4 v4, 0x3

    .line 155
    iget-object v7, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v7, v7, Ln3/y/b/a/d0;->e:I

    if-ne v7, v4, :cond_3f

    iget-object v4, v1, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v4, v4

    if-nez v4, :cond_3d

    .line 156
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->r()Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_25

    :cond_3d
    if-nez v9, :cond_3f

    .line 157
    :cond_3e
    iget-boolean v4, v1, Ln3/y/b/a/v;->x:Z

    iput-boolean v4, v1, Ln3/y/b/a/v;->y:Z

    .line 158
    invoke-virtual {v1, v13}, Ln3/y/b/a/v;->P(I)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->S()V

    .line 160
    :cond_3f
    :goto_25
    iget-object v4, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v4, v4, Ln3/y/b/a/d0;->e:I

    if-ne v4, v13, :cond_40

    .line 161
    iget-object v4, v1, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v7, v4

    move v9, v0

    :goto_26
    if-ge v9, v7, :cond_40

    aget-object v0, v4, v9

    .line 162
    invoke-interface {v0}, Ln3/y/b/a/h0;->o()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 163
    :cond_40
    iget-boolean v0, v1, Ln3/y/b/a/v;->x:Z

    if-eqz v0, :cond_41

    iget-object v0, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v0, v0, Ln3/y/b/a/d0;->e:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_42

    :cond_41
    iget-object v0, v1, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v0, v0, Ln3/y/b/a/d0;->e:I

    if-ne v0, v13, :cond_43

    .line 164
    :cond_42
    invoke-virtual {v1, v2, v3, v5, v6}, Ln3/y/b/a/v;->C(JJ)V

    goto :goto_27

    .line 165
    :cond_43
    iget-object v4, v1, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v4, v4

    if-eqz v4, :cond_44

    const/4 v4, 0x4

    if-eq v0, v4, :cond_44

    const-wide/16 v4, 0x3e8

    .line 166
    invoke-virtual {v1, v2, v3, v4, v5}, Ln3/y/b/a/v;->C(JJ)V

    goto :goto_27

    .line 167
    :cond_44
    iget-object v0, v1, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 168
    iget-object v0, v0, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :goto_27
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->X()V

    return-void
.end method

.method public final e([ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-array v1, v1, [Ln3/y/b/a/h0;

    iput-object v1, v0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 3
    iget-object v1, v1, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 4
    iget-object v1, v1, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ln3/y/b/a/h0;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 9
    invoke-virtual {v1, v3}, Ln3/y/b/a/v0/h;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10
    aget-boolean v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    .line 11
    iget-object v7, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 12
    iget-object v7, v7, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 13
    iget-object v8, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    aget-object v8, v8, v3

    .line 14
    iget-object v9, v0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    aput-object v8, v9, v4

    .line 15
    invoke-interface {v8}, Ln3/y/b/a/h0;->getState()I

    move-result v4

    if-nez v4, :cond_6

    .line 16
    iget-object v4, v7, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 17
    iget-object v9, v4, Ln3/y/b/a/v0/h;->b:[Ln3/y/b/a/i0;

    aget-object v10, v9, v3

    .line 18
    iget-object v4, v4, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    .line 19
    iget-object v4, v4, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v4, v4, v3

    .line 20
    invoke-static {v4}, Ln3/y/b/a/v;->f(Ln3/y/b/a/v0/e;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    .line 21
    iget-boolean v4, v0, Ln3/y/b/a/v;->x:Z

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v4, v4, Ln3/y/b/a/d0;->e:I

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
    iget-object v5, v7, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v12, v5, v3

    iget-wide v13, v0, Ln3/y/b/a/v;->E:J

    move v5, v3

    .line 23
    iget-wide v2, v7, Ln3/y/b/a/z;->n:J

    move-object v9, v8

    move-wide/from16 v16, v2

    .line 24
    invoke-interface/range {v9 .. v17}, Ln3/y/b/a/h0;->s(Ln3/y/b/a/i0;[Landroidx/media2/exoplayer/external/Format;Ln3/y/b/a/t0/j0;JZJ)V

    .line 25
    iget-object v2, v0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 26
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v8}, Ln3/y/b/a/h0;->m()Ln3/y/b/a/x0/i;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 28
    iget-object v7, v2, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    if-eq v3, v7, :cond_5

    if-nez v7, :cond_4

    .line 29
    iput-object v3, v2, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    .line 30
    iput-object v8, v2, Ln3/y/b/a/e;->c:Ln3/y/b/a/h0;

    .line 31
    iget-object v2, v2, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 32
    iget-object v2, v2, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    .line 33
    invoke-interface {v3, v2}, Ln3/y/b/a/x0/i;->u(Ln3/y/b/a/e0;)V

    goto :goto_4

    .line 34
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Ln3/y/b/a/f;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Ln3/y/b/a/f;-><init>(ILjava/lang/Throwable;I)V

    .line 36
    throw v2

    :cond_5
    :goto_4
    if-eqz v4, :cond_7

    .line 37
    invoke-interface {v8}, Ln3/y/b/a/h0;->start()V

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

.method public final g(Ln3/y/b/a/l0;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/l0;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget-object v2, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/l0;->j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v0, v0, Ln3/y/b/a/d0;->k:J

    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/v;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    return v2

    .line 2
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ln3/y/b/a/e0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p0, v3, p1}, Ln3/y/b/a/v;->o(Ln3/y/b/a/e0;Z)V

    goto/16 :goto_7

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/g0;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->H(Ln3/y/b/a/g0;)V

    goto/16 :goto_7

    .line 4
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/g0;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->G(Ln3/y/b/a/g0;)V

    goto/16 :goto_7

    .line 7
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, p1}, Ln3/y/b/a/v;->J(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 8
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->O(Z)V

    goto/16 :goto_7

    .line 9
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->N(I)V

    goto/16 :goto_7

    .line 10
    :pswitch_6
    invoke-virtual {p0}, Ln3/y/b/a/v;->w()V

    goto/16 :goto_7

    .line 11
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/t0/s;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->k(Ln3/y/b/a/t0/s;)V

    goto/16 :goto_7

    .line 12
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/t0/s;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->n(Ln3/y/b/a/t0/s;)V

    goto :goto_7

    .line 13
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/v$b;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->p(Ln3/y/b/a/v$b;)V

    goto :goto_7

    .line 14
    :pswitch_a
    invoke-virtual {p0}, Ln3/y/b/a/v;->v()V

    return v1

    .line 15
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    invoke-virtual {p0, v2, p1, v1}, Ln3/y/b/a/v;->R(ZZZ)V

    goto :goto_7

    .line 16
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/j0;

    .line 17
    iput-object p1, p0, Ln3/y/b/a/v;->s:Ln3/y/b/a/j0;

    goto :goto_7

    .line 18
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/e0;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->M(Ln3/y/b/a/e0;)V

    goto :goto_7

    .line 19
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/y/b/a/v$e;

    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->E(Ln3/y/b/a/v$e;)V

    goto :goto_7

    .line 20
    :pswitch_f
    invoke-virtual {p0}, Ln3/y/b/a/v;->d()V

    goto :goto_7

    .line 21
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    invoke-virtual {p0, p1}, Ln3/y/b/a/v;->L(Z)V

    goto :goto_7

    .line 22
    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ln3/y/b/a/t0/t;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_6

    move p1, v1

    goto :goto_6

    :cond_6
    move p1, v2

    :goto_6
    invoke-virtual {p0, v3, v4, p1}, Ln3/y/b/a/v;->u(Ln3/y/b/a/t0/t;ZZ)V

    .line 23
    :goto_7
    invoke-virtual {p0}, Ln3/y/b/a/v;->t()V
    :try_end_0
    .catch Ln3/y/b/a/f; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    .line 24
    :goto_8
    instance-of v3, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_7

    .line 25
    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 26
    new-instance v3, Ln3/y/b/a/f;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p1, v0}, Ln3/y/b/a/f;-><init>(ILjava/lang/Throwable;I)V

    goto :goto_9

    .line 27
    :cond_7
    check-cast p1, Ljava/lang/RuntimeException;

    .line 28
    new-instance v3, Ln3/y/b/a/f;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1, v0}, Ln3/y/b/a/f;-><init>(ILjava/lang/Throwable;I)V

    .line 29
    :goto_9
    invoke-virtual {p0, v1, v2, v2}, Ln3/y/b/a/v;->R(ZZZ)V

    .line 30
    iget-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    invoke-virtual {p1, v3}, Ln3/y/b/a/d0;->b(Ln3/y/b/a/f;)Ln3/y/b/a/d0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 31
    invoke-virtual {p0}, Ln3/y/b/a/v;->t()V

    goto :goto_a

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p0, v2, v2, v2}, Ln3/y/b/a/v;->R(ZZZ)V

    .line 33
    iget-object v3, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 34
    new-instance v4, Ln3/y/b/a/f;

    invoke-direct {v4, v2, p1, v0}, Ln3/y/b/a/f;-><init>(ILjava/lang/Throwable;I)V

    .line 35
    invoke-virtual {v3, v4}, Ln3/y/b/a/d0;->b(Ln3/y/b/a/f;)Ln3/y/b/a/d0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 36
    invoke-virtual {p0}, Ln3/y/b/a/v;->t()V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 37
    invoke-virtual {p0, v1, v2, v2}, Ln3/y/b/a/v;->R(ZZZ)V

    .line 38
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    invoke-virtual {v0, p1}, Ln3/y/b/a/d0;->b(Ln3/y/b/a/f;)Ln3/y/b/a/d0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 39
    invoke-virtual {p0}, Ln3/y/b/a/v;->t()V

    :goto_a
    return v1

    nop

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
.end method

.method public i(Ln3/y/b/a/t0/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    iget-wide v3, p0, Ln3/y/b/a/v;->E:J

    .line 4
    iget-wide v5, v0, Ln3/y/b/a/z;->n:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 5
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final k(Ln3/y/b/a/t0/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

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
    iget-wide v1, p0, Ln3/y/b/a/v;->E:J

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/b0;->i(J)V

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/v;->s()V

    return-void
.end method

.method public l(Ln3/y/b/a/t0/k0;)V
    .locals 2

    .line 1
    check-cast p1, Ln3/y/b/a/t0/s;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final m(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v1, v1, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-nez v1, :cond_0

    .line 3
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v2, v2, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    :goto_0
    move-object v15, v2

    .line 4
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    .line 5
    invoke-virtual {v2, v15}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v14, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 7
    new-instance v13, Ln3/y/b/a/d0;

    move-object v3, v13

    iget-object v4, v14, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v5, v14, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v6, v14, Ln3/y/b/a/d0;->c:J

    iget-wide v8, v14, Ln3/y/b/a/d0;->d:J

    iget v10, v14, Ln3/y/b/a/d0;->e:I

    iget-object v11, v14, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    iget-boolean v12, v14, Ln3/y/b/a/d0;->g:Z

    move-object/from16 v16, v13

    iget-object v13, v14, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v23, v1

    iget-object v1, v14, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    move-object v0, v14

    move-object v14, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Ln3/y/b/a/d0;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ln3/y/b/a/d0;->l:J

    move-wide/from16 v18, v1

    iget-wide v0, v0, Ln3/y/b/a/d0;->m:J

    move-wide/from16 v20, v0

    invoke-direct/range {v3 .. v21}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    .line 8
    iput-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    goto :goto_1

    :cond_1
    move-object/from16 v23, v1

    move/from16 v22, v2

    .line 9
    :goto_1
    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-nez v23, :cond_2

    .line 10
    iget-wide v2, v1, Ln3/y/b/a/d0;->m:J

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ln3/y/b/a/z;->d()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v1, Ln3/y/b/a/d0;->k:J

    .line 12
    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v2

    iput-wide v2, v1, Ln3/y/b/a/d0;->l:J

    if-nez v22, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v23, :cond_4

    move-object/from16 v1, v23

    .line 13
    iget-boolean v2, v1, Ln3/y/b/a/z;->d:Z

    if-eqz v2, :cond_4

    .line 14
    iget-object v2, v1, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 15
    iget-object v1, v1, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 16
    invoke-virtual {v0, v2, v1}, Ln3/y/b/a/v;->T(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)V

    :cond_4
    return-void
.end method

.method public final n(Ln3/y/b/a/t0/s;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v1, v1, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v1, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

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
    iget-object v3, v0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 4
    invoke-virtual {v3}, Ln3/y/b/a/e;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v3

    iget v3, v3, Ln3/y/b/a/e0;->a:F

    iget-object v4, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v4, v4, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    .line 5
    iput-boolean v2, v1, Ln3/y/b/a/z;->d:Z

    .line 6
    iget-object v2, v1, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v2}, Ln3/y/b/a/t0/s;->h()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    iput-object v2, v1, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 7
    invoke-virtual {v1, v3, v4}, Ln3/y/b/a/z;->h(FLn3/y/b/a/l0;)Ln3/y/b/a/v0/h;

    move-result-object v3

    .line 8
    iget-object v2, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v4, v2, Ln3/y/b/a/a0;->b:J

    .line 9
    iget-object v2, v1, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    array-length v2, v2

    new-array v7, v2, [Z

    const/4 v6, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Ln3/y/b/a/z;->a(Ln3/y/b/a/v0/h;JZ[Z)J

    move-result-wide v10

    .line 10
    iget-wide v2, v1, Ln3/y/b/a/z;->n:J

    iget-object v4, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v5, v4, Ln3/y/b/a/a0;->b:J

    sub-long v7, v5, v10

    add-long/2addr v7, v2

    iput-wide v7, v1, Ln3/y/b/a/z;->n:J

    cmp-long v2, v10, v5

    if-nez v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance v2, Ln3/y/b/a/a0;

    iget-object v9, v4, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v12, v4, Ln3/y/b/a/a0;->c:J

    iget-wide v14, v4, Ln3/y/b/a/a0;->d:J

    iget-wide v5, v4, Ln3/y/b/a/a0;->e:J

    iget-boolean v3, v4, Ln3/y/b/a/a0;->f:Z

    iget-boolean v4, v4, Ln3/y/b/a/a0;->g:Z

    move-object v8, v2

    move-wide/from16 v16, v5

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v8 .. v19}, Ln3/y/b/a/a0;-><init>(Ln3/y/b/a/t0/t$a;JJJJZZ)V

    move-object v4, v2

    .line 12
    :goto_1
    iput-object v4, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    .line 13
    iget-object v2, v1, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 14
    iget-object v3, v1, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 15
    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/v;->T(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)V

    .line 16
    iget-object v2, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 17
    iget-object v2, v2, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v1, v1, Ln3/y/b/a/a0;->b:J

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/v;->y(J)V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ln3/y/b/a/v;->V(Ln3/y/b/a/z;)V

    .line 20
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->s()V

    return-void
.end method

.method public final o(Ln3/y/b/a/e0;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4
    iget p2, p1, Ln3/y/b/a/e0;->a:F

    .line 5
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 6
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 8
    iget-object v1, v1, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    invoke-virtual {v1}, Ln3/y/b/a/v0/f;->a()[Ln3/y/b/a/v0/e;

    move-result-object v1

    .line 9
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v5, p2}, Ln3/y/b/a/v0/e;->i(F)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v1, p2, v2

    if-eqz v1, :cond_3

    .line 13
    iget v3, p1, Ln3/y/b/a/e0;->a:F

    invoke-interface {v1, v3}, Ln3/y/b/a/h0;->g(F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final p(Ln3/y/b/a/v$b;)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v$b;->a:Ln3/y/b/a/t0/t;

    iget-object v2, v6, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    if-eq v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v6, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    iget v2, v6, Ln3/y/b/a/v;->C:I

    invoke-virtual {v1, v2}, Ln3/y/b/a/v$d;->a(I)V

    const/4 v1, 0x0

    .line 3
    iput v1, v6, Ln3/y/b/a/v;->C:I

    .line 4
    iget-object v2, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v3, v2, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    .line 5
    iget-object v0, v0, Ln3/y/b/a/v$b;->b:Ln3/y/b/a/l0;

    move-object v8, v0

    .line 6
    iget-object v4, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 7
    iput-object v0, v4, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    .line 8
    new-instance v4, Ln3/y/b/a/d0;

    move-object v7, v4

    iget-object v9, v2, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v10, v2, Ln3/y/b/a/d0;->c:J

    iget-wide v12, v2, Ln3/y/b/a/d0;->d:J

    iget v14, v2, Ln3/y/b/a/d0;->e:I

    iget-object v15, v2, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    iget-boolean v5, v2, Ln3/y/b/a/d0;->g:Z

    move/from16 v16, v5

    iget-object v5, v2, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-object/from16 v17, v5

    iget-object v5, v2, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    move-object/from16 v18, v5

    iget-object v5, v2, Ln3/y/b/a/d0;->j:Ln3/y/b/a/t0/t$a;

    move-object/from16 v19, v5

    move-object/from16 p1, v0

    iget-wide v0, v2, Ln3/y/b/a/d0;->k:J

    move-wide/from16 v20, v0

    iget-wide v0, v2, Ln3/y/b/a/d0;->l:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Ln3/y/b/a/d0;->m:J

    move-wide/from16 v24, v0

    invoke-direct/range {v7 .. v25}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    .line 9
    iput-object v4, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 10
    iget-object v0, v6, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v2, v6, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/v$c;

    invoke-virtual {v6, v2}, Ln3/y/b/a/v;->z(Ln3/y/b/a/v$c;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, v6, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/v$c;

    iget-object v2, v2, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ln3/y/b/a/g0;->b(Z)V

    .line 13
    iget-object v2, v6, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v6, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    iget-object v0, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    .line 16
    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v7, v2, Ln3/y/b/a/d0;->d:J

    goto :goto_1

    :cond_3
    iget-object v2, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v7, v2, Ln3/y/b/a/d0;->m:J

    .line 17
    :goto_1
    iget-object v2, v6, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;

    const/4 v4, 0x4

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v6, v2, v12}, Ln3/y/b/a/v;->A(Ln3/y/b/a/v$e;Z)Landroid/util/Pair;

    move-result-object v0

    .line 19
    iput-object v11, v6, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {v6, v4}, Ln3/y/b/a/v;->P(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 21
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/v;->x(ZZZZZ)V

    return-void

    .line 22
    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 23
    iget-object v3, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Ln3/y/b/a/b0;->k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    cmp-long v2, v7, v9

    if-nez v2, :cond_7

    .line 24
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/l0;->p()Z

    move-result v2

    if-nez v2, :cond_7

    .line 25
    iget-boolean v0, v6, Ln3/y/b/a/v;->A:Z

    move-object/from16 v2, p1

    .line 26
    invoke-virtual {v2, v0}, Ln3/y/b/a/l0;->a(Z)I

    move-result v0

    .line 27
    invoke-virtual {v6, v2, v0, v9, v10}, Ln3/y/b/a/v;->g(Ln3/y/b/a/l0;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 28
    iget-object v1, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ln3/y/b/a/b0;->k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v2

    if-nez v2, :cond_6

    .line 30
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_6
    move-wide v2, v7

    :goto_2
    move-object v14, v1

    move-wide/from16 v17, v2

    goto :goto_4

    :cond_7
    move-object/from16 v2, p1

    .line 31
    iget-object v13, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v13}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v13

    if-ne v13, v1, :cond_9

    .line 32
    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v0, v3, v2}, Ln3/y/b/a/v;->B(Ljava/lang/Object;Ln3/y/b/a/l0;Ln3/y/b/a/l0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 33
    invoke-virtual {v6, v4}, Ln3/y/b/a/v;->P(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 34
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/v;->x(ZZZZZ)V

    return-void

    .line 35
    :cond_8
    iget-object v1, v6, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    .line 36
    invoke-virtual {v2, v0, v1}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v0

    iget v0, v0, Ln3/y/b/a/l0$b;->c:I

    .line 37
    invoke-virtual {v6, v2, v0, v9, v10}, Ln3/y/b/a/v;->g(Ln3/y/b/a/l0;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 38
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 39
    iget-object v3, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Ln3/y/b/a/b0;->k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;

    move-result-object v0

    :goto_3
    move-object v14, v0

    move-wide/from16 v17, v1

    goto :goto_4

    .line 40
    :cond_9
    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 41
    iget-object v1, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7, v8}, Ln3/y/b/a/b0;->k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;

    move-result-object v0

    :cond_a
    move-object v14, v0

    move-wide/from16 v17, v7

    .line 42
    :goto_4
    iget-object v0, v6, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v0, v14}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1f

    cmp-long v0, v7, v17

    if-nez v0, :cond_1f

    .line 43
    iget-object v0, v6, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-wide v3, v6, Ln3/y/b/a/v;->E:J

    .line 44
    iget-object v7, v0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v7, :cond_b

    goto :goto_7

    .line 45
    :cond_b
    iget-wide v1, v7, Ln3/y/b/a/z;->n:J

    .line 46
    iget-boolean v8, v7, Ln3/y/b/a/z;->d:Z

    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 47
    :goto_5
    iget-object v15, v6, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v5, v15

    if-ge v8, v5, :cond_10

    .line 48
    aget-object v5, v15, v8

    invoke-interface {v5}, Ln3/y/b/a/h0;->getState()I

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v6, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    aget-object v5, v5, v8

    .line 49
    invoke-interface {v5}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v5

    iget-object v15, v7, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v15, v15, v8

    if-eq v5, v15, :cond_d

    goto :goto_6

    .line 50
    :cond_d
    iget-object v5, v6, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    aget-object v5, v5, v8

    invoke-interface {v5}, Ln3/y/b/a/h0;->k()J

    move-result-wide v9

    cmp-long v5, v9, v13

    if-nez v5, :cond_e

    move-wide v1, v13

    goto :goto_7

    .line 51
    :cond_e
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_f
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_5

    .line 52
    :cond_10
    :goto_7
    iget-object v5, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    move-object/from16 v35, v11

    move-object v11, v5

    move-object/from16 v5, v35

    :goto_8
    if-eqz v11, :cond_1d

    .line 53
    iget-object v7, v11, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    if-nez v5, :cond_11

    .line 54
    invoke-virtual {v0, v7}, Ln3/y/b/a/b0;->g(Ln3/y/b/a/a0;)Ln3/y/b/a/a0;

    move-result-object v5

    goto :goto_b

    .line 55
    :cond_11
    invoke-virtual {v0, v5, v3, v4}, Ln3/y/b/a/b0;->c(Ln3/y/b/a/z;J)Ln3/y/b/a/a0;

    move-result-object v8

    if-nez v8, :cond_12

    .line 56
    invoke-virtual {v0, v5}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    move-result v0

    goto :goto_a

    .line 57
    :cond_12
    iget-wide v9, v7, Ln3/y/b/a/a0;->b:J

    iget-wide v13, v8, Ln3/y/b/a/a0;->b:J

    cmp-long v9, v9, v13

    if-nez v9, :cond_13

    iget-object v9, v7, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-object v10, v8, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v9, v10}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    move v9, v12

    goto :goto_9

    :cond_13
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_14

    .line 58
    invoke-virtual {v0, v5}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    move-result v0

    :goto_a
    xor-int v5, v12, v0

    goto/16 :goto_12

    :cond_14
    move-object v5, v8

    .line 59
    :goto_b
    iget-wide v8, v7, Ln3/y/b/a/a0;->c:J

    .line 60
    iget-wide v13, v5, Ln3/y/b/a/a0;->c:J

    cmp-long v10, v8, v13

    if-nez v10, :cond_15

    move-wide/from16 v33, v1

    move-wide/from16 v31, v3

    move-object v10, v5

    goto :goto_c

    .line 61
    :cond_15
    new-instance v10, Ln3/y/b/a/a0;

    iget-object v13, v5, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    move-object v14, v13

    iget-wide v12, v5, Ln3/y/b/a/a0;->b:J

    move-wide/from16 v31, v3

    iget-wide v3, v5, Ln3/y/b/a/a0;->d:J

    move-wide/from16 v33, v1

    iget-wide v1, v5, Ln3/y/b/a/a0;->e:J

    iget-boolean v15, v5, Ln3/y/b/a/a0;->f:Z

    iget-boolean v6, v5, Ln3/y/b/a/a0;->g:Z

    move-object/from16 v19, v10

    move-object/from16 v20, v14

    move-wide/from16 v21, v12

    move-wide/from16 v23, v8

    move-wide/from16 v25, v3

    move-wide/from16 v27, v1

    move/from16 v29, v15

    move/from16 v30, v6

    invoke-direct/range {v19 .. v30}, Ln3/y/b/a/a0;-><init>(Ln3/y/b/a/t0/t$a;JJJJZZ)V

    .line 62
    :goto_c
    iput-object v10, v11, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    .line 63
    iget-wide v1, v7, Ln3/y/b/a/a0;->e:J

    iget-wide v3, v5, Ln3/y/b/a/a0;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_17

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-nez v1, :cond_1c

    cmp-long v1, v3, v5

    if-nez v1, :cond_18

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_f

    .line 64
    :cond_18
    iget-wide v1, v11, Ln3/y/b/a/z;->n:J

    add-long/2addr v1, v3

    .line 65
    :goto_f
    iget-object v3, v0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-ne v11, v3, :cond_1a

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v33, v3

    if-eqz v3, :cond_19

    cmp-long v1, v33, v1

    if-ltz v1, :cond_1a

    :cond_19
    const/4 v5, 0x1

    goto :goto_10

    :cond_1a
    const/4 v5, 0x0

    .line 66
    :goto_10
    invoke-virtual {v0, v11}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez v5, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v5, 0x0

    goto :goto_12

    :cond_1c
    const-wide/high16 v3, -0x8000000000000000L

    .line 67
    iget-object v1, v11, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-wide v13, v3

    move-object v5, v11

    move-wide/from16 v3, v31

    move-object v11, v1

    move-wide/from16 v1, v33

    goto/16 :goto_8

    :cond_1d
    :goto_11
    const/4 v5, 0x1

    :goto_12
    if-nez v5, :cond_1e

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 68
    invoke-virtual {v0, v1}, Ln3/y/b/a/v;->D(Z)V

    goto :goto_16

    :cond_1e
    move-object/from16 v0, p0

    goto :goto_16

    :cond_1f
    move-object v0, v6

    .line 69
    iget-object v3, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 70
    iget-object v3, v3, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-eqz v3, :cond_21

    .line 71
    :cond_20
    :goto_13
    iget-object v3, v3, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz v3, :cond_21

    .line 72
    iget-object v4, v3, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v4, v4, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v4, v14}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 73
    iget-object v4, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    iget-object v6, v3, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    invoke-virtual {v4, v6}, Ln3/y/b/a/b0;->g(Ln3/y/b/a/a0;)Ln3/y/b/a/a0;

    move-result-object v4

    iput-object v4, v3, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    goto :goto_13

    .line 74
    :cond_21
    invoke-virtual {v14}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_14

    :cond_22
    move-wide/from16 v1, v17

    .line 75
    :goto_14
    iget-object v3, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 76
    iget-object v4, v3, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 77
    iget-object v3, v3, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-eq v4, v3, :cond_23

    const/4 v4, 0x1

    goto :goto_15

    :cond_23
    const/4 v4, 0x0

    .line 78
    :goto_15
    invoke-virtual {v0, v14, v1, v2, v4}, Ln3/y/b/a/v;->F(Ln3/y/b/a/t0/t$a;JZ)J

    move-result-wide v15

    .line 79
    iget-object v13, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 80
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v19

    .line 81
    invoke-virtual/range {v13 .. v20}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    :goto_16
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Ln3/y/b/a/v;->m(Z)V

    return-void
.end method

.method public final q()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    .line 3
    iget-boolean v1, v0, Ln3/y/b/a/z;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 5
    aget-object v3, v3, v1

    .line 6
    iget-object v4, v0, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v4, v4, v1

    .line 7
    invoke-interface {v3}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Ln3/y/b/a/h0;->e()Z

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

.method public final r()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v1, v1, Ln3/y/b/a/a0;->e:J

    .line 4
    iget-boolean v0, v0, Ln3/y/b/a/z;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v3, v0, Ln3/y/b/a/d0;->m:J

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

.method public final s()V
    .locals 13

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 3
    iget-boolean v1, v0, Ln3/y/b/a/z;->d:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v1}, Ln3/y/b/a/t0/s;->d()J

    move-result-wide v1

    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p0, v4}, Ln3/y/b/a/v;->K(Z)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v2}, Ln3/y/b/a/v;->j(J)J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    iget-object v5, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 7
    invoke-virtual {v5}, Ln3/y/b/a/e;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v5

    iget v5, v5, Ln3/y/b/a/e0;->a:F

    .line 8
    iget-object v6, v3, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    .line 9
    monitor-enter v6

    .line 10
    :try_start_0
    iget v7, v6, Ln3/y/b/a/w0/l;->e:I

    iget v8, v6, Ln3/y/b/a/w0/l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v7, v8

    monitor-exit v6

    .line 11
    iget v6, v3, Ln3/y/b/a/d;->j:I

    const/4 v8, 0x1

    if-lt v7, v6, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v4

    .line 12
    :goto_1
    iget-boolean v7, v3, Ln3/y/b/a/d;->l:Z

    if-eqz v7, :cond_3

    iget-wide v9, v3, Ln3/y/b/a/d;->c:J

    goto :goto_2

    :cond_3
    iget-wide v9, v3, Ln3/y/b/a/d;->b:J

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_5

    .line 13
    sget v11, Ln3/y/b/a/x0/x;->a:I

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    long-to-double v9, v9

    float-to-double v11, v5

    mul-double/2addr v9, v11

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 15
    :goto_3
    iget-wide v11, v3, Ln3/y/b/a/d;->d:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_5
    cmp-long v5, v1, v9

    if-gez v5, :cond_8

    .line 16
    iget-boolean v1, v3, Ln3/y/b/a/d;->h:Z

    if-nez v1, :cond_6

    if-nez v6, :cond_7

    :cond_6
    move v4, v8

    :cond_7
    iput-boolean v4, v3, Ln3/y/b/a/d;->k:Z

    goto :goto_4

    .line 17
    :cond_8
    iget-wide v7, v3, Ln3/y/b/a/d;->d:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_9

    if-eqz v6, :cond_a

    .line 18
    :cond_9
    iput-boolean v4, v3, Ln3/y/b/a/d;->k:Z

    .line 19
    :cond_a
    :goto_4
    iget-boolean v1, v3, Ln3/y/b/a/d;->k:Z

    .line 20
    invoke-virtual {p0, v1}, Ln3/y/b/a/v;->K(Z)V

    if-eqz v1, :cond_b

    .line 21
    iget-wide v1, p0, Ln3/y/b/a/v;->E:J

    .line 22
    invoke-virtual {v0}, Ln3/y/b/a/z;->f()Z

    move-result v3

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 23
    iget-wide v3, v0, Ln3/y/b/a/z;->n:J

    sub-long/2addr v1, v3

    .line 24
    iget-object v0, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v0, v1, v2}, Ln3/y/b/a/t0/s;->a(J)Z

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v6

    throw v0
.end method

.method public final t()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    iget-object v1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 2
    iget-object v2, v0, Ln3/y/b/a/v$d;->a:Ln3/y/b/a/d0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v2, v0, Ln3/y/b/a/v$d;->b:I

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Ln3/y/b/a/v$d;->c:Z

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
    iget-object v2, p0, Ln3/y/b/a/v;->i:Landroid/os/Handler;

    .line 4
    iget v4, v0, Ln3/y/b/a/v$d;->b:I

    .line 5
    iget-boolean v5, v0, Ln3/y/b/a/v$d;->c:Z

    if-eqz v5, :cond_2

    .line 6
    iget v0, v0, Ln3/y/b/a/v$d;->d:I

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
    iget-object v0, p0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    iget-object v1, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 10
    iput-object v1, v0, Ln3/y/b/a/v$d;->a:Ln3/y/b/a/d0;

    .line 11
    iput v3, v0, Ln3/y/b/a/v$d;->b:I

    .line 12
    iput-boolean v3, v0, Ln3/y/b/a/v$d;->c:Z

    :cond_3
    return-void
.end method

.method public final u(Ln3/y/b/a/t0/t;ZZ)V
    .locals 7

    .line 1
    iget v0, p0, Ln3/y/b/a/v;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln3/y/b/a/v;->C:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 2
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/v;->x(ZZZZZ)V

    .line 3
    iget-object p2, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2, p3}, Ln3/y/b/a/d;->b(Z)V

    .line 5
    iput-object p1, p0, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p0, p2}, Ln3/y/b/a/v;->P(I)V

    .line 7
    iget-object p3, p0, Ln3/y/b/a/v;->f:Ln3/y/b/a/w0/d;

    invoke-interface {p3}, Ln3/y/b/a/w0/d;->a()Ln3/y/b/a/w0/e0;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Ln3/y/b/a/t0/t;->b(Ln3/y/b/a/t0/t$b;Ln3/y/b/a/w0/e0;)V

    .line 8
    iget-object p1, p0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    invoke-virtual {p1, p2}, Ln3/y/b/a/x0/t;->b(I)Z

    return-void
.end method

.method public final v()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/v;->x(ZZZZZ)V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v;->e:Ln3/y/b/a/d;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ln3/y/b/a/d;->b(Z)V

    .line 4
    invoke-virtual {p0, v1}, Ln3/y/b/a/v;->P(I)V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/v;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Ln3/y/b/a/v;->w:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final w()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    invoke-virtual {v1}, Ln3/y/b/a/e;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v1

    iget v1, v1, Ln3/y/b/a/e0;->a:F

    .line 2
    iget-object v2, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 3
    iget-object v3, v2, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 4
    iget-object v2, v2, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    const/4 v4, 0x1

    move-object v5, v3

    move v3, v4

    :goto_0
    if-eqz v5, :cond_10

    .line 5
    iget-boolean v6, v5, Ln3/y/b/a/z;->d:Z

    if-nez v6, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    iget-object v6, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v6, v6, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {v5, v1, v6}, Ln3/y/b/a/z;->h(FLn3/y/b/a/l0;)Ln3/y/b/a/v0/h;

    move-result-object v8

    .line 7
    iget-object v6, v5, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    const/4 v13, 0x0

    if-eqz v6, :cond_4

    .line 8
    iget-object v7, v6, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    iget v7, v7, Ln3/y/b/a/v0/f;->a:I

    iget-object v9, v8, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    iget v9, v9, Ln3/y/b/a/v0/f;->a:I

    if-eq v7, v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v13

    .line 9
    :goto_1
    iget-object v9, v8, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    iget v9, v9, Ln3/y/b/a/v0/f;->a:I

    if-ge v7, v9, :cond_3

    .line 10
    invoke-virtual {v8, v6, v7}, Ln3/y/b/a/v0/h;->a(Ln3/y/b/a/v0/h;I)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v13

    :goto_3
    if-nez v6, :cond_e

    const/4 v1, 0x4

    if-eqz v3, :cond_b

    .line 11
    iget-object v2, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 12
    iget-object v3, v2, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 13
    invoke-virtual {v2, v3}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    move-result v11

    .line 14
    iget-object v2, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 15
    iget-object v5, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v9, v5, Ln3/y/b/a/d0;->m:J

    move-object v7, v3

    move-object v12, v2

    .line 16
    invoke-virtual/range {v7 .. v12}, Ln3/y/b/a/z;->a(Ln3/y/b/a/v0/h;JZ[Z)J

    move-result-wide v5

    .line 17
    iget-object v7, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v8, v7, Ln3/y/b/a/d0;->e:I

    if-eq v8, v1, :cond_5

    iget-wide v7, v7, Ln3/y/b/a/d0;->m:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    .line 18
    iget-object v14, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v15, v14, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-wide v7, v14, Ln3/y/b/a/d0;->d:J

    .line 19
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->h()J

    move-result-wide v20

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    .line 20
    invoke-virtual/range {v14 .. v21}, Ln3/y/b/a/d0;->a(Ln3/y/b/a/t0/t$a;JJJ)Ln3/y/b/a/d0;

    move-result-object v7

    iput-object v7, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 21
    iget-object v7, v0, Ln3/y/b/a/v;->o:Ln3/y/b/a/v$d;

    invoke-virtual {v7, v1}, Ln3/y/b/a/v$d;->b(I)V

    .line 22
    invoke-virtual {v0, v5, v6}, Ln3/y/b/a/v;->y(J)V

    .line 23
    :cond_5
    iget-object v5, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v5, v5

    new-array v5, v5, [Z

    move v6, v13

    move v7, v6

    .line 24
    :goto_4
    iget-object v8, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v9, v8

    if-ge v6, v9, :cond_a

    .line 25
    aget-object v8, v8, v6

    .line 26
    invoke-interface {v8}, Ln3/y/b/a/h0;->getState()I

    move-result v9

    if-eqz v9, :cond_6

    move v9, v4

    goto :goto_5

    :cond_6
    move v9, v13

    :goto_5
    aput-boolean v9, v5, v6

    .line 27
    iget-object v9, v3, Ln3/y/b/a/z;->c:[Ln3/y/b/a/t0/j0;

    aget-object v9, v9, v6

    if-eqz v9, :cond_7

    add-int/lit8 v7, v7, 0x1

    .line 28
    :cond_7
    aget-boolean v10, v5, v6

    if-eqz v10, :cond_9

    .line 29
    invoke-interface {v8}, Ln3/y/b/a/h0;->j()Ln3/y/b/a/t0/j0;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 30
    invoke-virtual {v0, v8}, Ln3/y/b/a/v;->c(Ln3/y/b/a/h0;)V

    goto :goto_6

    .line 31
    :cond_8
    aget-boolean v9, v2, v6

    if-eqz v9, :cond_9

    .line 32
    iget-wide v9, v0, Ln3/y/b/a/v;->E:J

    invoke-interface {v8, v9, v10}, Ln3/y/b/a/h0;->l(J)V

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 33
    :cond_a
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 34
    iget-object v6, v3, Ln3/y/b/a/z;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 35
    iget-object v3, v3, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 36
    invoke-virtual {v2, v6, v3}, Ln3/y/b/a/d0;->c(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;)Ln3/y/b/a/d0;

    move-result-object v2

    iput-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    .line 37
    invoke-virtual {v0, v5, v7}, Ln3/y/b/a/v;->e([ZI)V

    goto :goto_7

    .line 38
    :cond_b
    iget-object v2, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    invoke-virtual {v2, v5}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    .line 39
    iget-boolean v2, v5, Ln3/y/b/a/z;->d:Z

    if-eqz v2, :cond_c

    .line 40
    iget-object v2, v5, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-wide v2, v2, Ln3/y/b/a/a0;->b:J

    iget-wide v6, v0, Ln3/y/b/a/v;->E:J

    .line 41
    iget-wide v9, v5, Ln3/y/b/a/z;->n:J

    sub-long/2addr v6, v9

    .line 42
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v9, 0x0

    .line 43
    iget-object v6, v5, Ln3/y/b/a/z;->h:[Ln3/y/b/a/b;

    array-length v6, v6

    new-array v10, v6, [Z

    move-object v6, v8

    move-wide v7, v2

    invoke-virtual/range {v5 .. v10}, Ln3/y/b/a/z;->a(Ln3/y/b/a/v0/h;JZ[Z)J

    .line 44
    :cond_c
    :goto_7
    invoke-virtual {v0, v4}, Ln3/y/b/a/v;->m(Z)V

    .line 45
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v2, v2, Ln3/y/b/a/d0;->e:I

    if-eq v2, v1, :cond_d

    .line 46
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->s()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/v;->U()V

    .line 48
    iget-object v1, v0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/t;->b(I)Z

    :cond_d
    return-void

    :cond_e
    if-ne v5, v2, :cond_f

    move v3, v13

    .line 49
    :cond_f
    iget-object v5, v5, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    goto/16 :goto_0

    :cond_10
    :goto_8
    return-void
.end method

.method public final x(ZZZZZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    iget-object v2, v0, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 2
    iget-object v2, v2, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Ln3/y/b/a/v;->y:Z

    .line 4
    iget-object v3, v0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 5
    iput-boolean v2, v3, Ln3/y/b/a/e;->f:Z

    .line 6
    iget-object v3, v3, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 7
    iget-boolean v4, v3, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v3}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ln3/y/b/a/x0/r;->a(J)V

    .line 9
    iput-boolean v2, v3, Ln3/y/b/a/x0/r;->b:Z

    :cond_0
    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, v0, Ln3/y/b/a/v;->E:J

    .line 11
    iget-object v3, v0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 12
    :try_start_0
    invoke-virtual {v0, v6}, Ln3/y/b/a/v;->c(Ln3/y/b/a/h0;)V
    :try_end_0
    .catch Ln3/y/b/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    iget-object v3, v0, Ln3/y/b/a/v;->a:[Ln3/y/b/a/h0;

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 14
    :try_start_1
    invoke-interface {v6}, Ln3/y/b/a/h0;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-array v3, v2, [Ln3/y/b/a/h0;

    .line 15
    iput-object v3, v0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 16
    iput-object v3, v0, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_5

    .line 17
    iget-object v4, v0, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;

    if-nez v4, :cond_4

    iget-object v4, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v4, v4, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {v4}, Ln3/y/b/a/l0;->p()Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    iget-object v4, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v5, v4, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v4, v4, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    iget-object v4, v4, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v6, v0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    invoke-virtual {v5, v4, v6}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 19
    iget-object v4, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v4, v4, Ln3/y/b/a/d0;->m:J

    iget-object v6, v0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    .line 20
    iget-wide v7, v6, Ln3/y/b/a/l0$b;->e:J

    add-long/2addr v4, v7

    .line 21
    new-instance v7, Ln3/y/b/a/v$e;

    iget v6, v6, Ln3/y/b/a/l0$b;->c:I

    invoke-direct {v7, v1, v6, v4, v5}, Ln3/y/b/a/v$e;-><init>(Ln3/y/b/a/l0;IJ)V

    iput-object v7, v0, Ln3/y/b/a/v;->D:Ln3/y/b/a/v$e;

    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v4, p3

    .line 22
    :goto_3
    iget-object v5, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    xor-int/lit8 v6, p4, 0x1

    invoke-virtual {v5, v6}, Ln3/y/b/a/b0;->b(Z)V

    .line 23
    invoke-virtual {v0, v2}, Ln3/y/b/a/v;->K(Z)V

    if-eqz p4, :cond_7

    .line 24
    iget-object v5, v0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 25
    iput-object v1, v5, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    .line 26
    iget-object v5, v0, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/v$c;

    .line 27
    iget-object v6, v6, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    invoke-virtual {v6, v2}, Ln3/y/b/a/g0;->b(Z)V

    goto :goto_4

    .line 28
    :cond_6
    iget-object v5, v0, Ln3/y/b/a/v;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 29
    iput v2, v0, Ln3/y/b/a/v;->J:I

    :cond_7
    if-eqz v4, :cond_8

    .line 30
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-boolean v5, v0, Ln3/y/b/a/v;->A:Z

    iget-object v6, v0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget-object v7, v0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    invoke-virtual {v2, v5, v6, v7}, Ln3/y/b/a/d0;->e(ZLn3/y/b/a/l0$c;Ln3/y/b/a/l0$b;)Ln3/y/b/a/t0/t$a;

    move-result-object v2

    goto :goto_5

    .line 31
    :cond_8
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v2, v2, Ln3/y/b/a/d0;->b:Ln3/y/b/a/t0/t$a;

    :goto_5
    move-object/from16 v17, v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_9

    move-wide/from16 v22, v5

    goto :goto_6

    .line 32
    :cond_9
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v7, v2, Ln3/y/b/a/d0;->m:J

    move-wide/from16 v22, v7

    :goto_6
    if-eqz v4, :cond_a

    move-wide v10, v5

    goto :goto_7

    .line 33
    :cond_a
    iget-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-wide v4, v2, Ln3/y/b/a/d0;->d:J

    move-wide v10, v4

    .line 34
    :goto_7
    new-instance v2, Ln3/y/b/a/d0;

    if-eqz p4, :cond_b

    goto :goto_8

    .line 35
    :cond_b
    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v1, v1, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    :goto_8
    move-object v6, v1

    iget-object v1, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget v12, v1, Ln3/y/b/a/d0;->e:I

    if-eqz p5, :cond_c

    move-object v13, v3

    goto :goto_9

    .line 36
    :cond_c
    iget-object v4, v1, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    move-object v13, v4

    :goto_9
    const/4 v14, 0x0

    if-eqz p4, :cond_d

    .line 37
    sget-object v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_a

    :cond_d
    iget-object v4, v1, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_a
    move-object v15, v4

    if-eqz p4, :cond_e

    .line 38
    iget-object v1, v0, Ln3/y/b/a/v;->d:Ln3/y/b/a/v0/h;

    goto :goto_b

    :cond_e
    iget-object v1, v1, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    :goto_b
    move-object/from16 v16, v1

    const-wide/16 v20, 0x0

    move-object v5, v2

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Ln3/y/b/a/d0;-><init>(Ln3/y/b/a/l0;Ln3/y/b/a/t0/t$a;JJILn3/y/b/a/f;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/h;Ln3/y/b/a/t0/t$a;JJJ)V

    iput-object v2, v0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    if-eqz p2, :cond_f

    .line 39
    iget-object v1, v0, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    if-eqz v1, :cond_f

    .line 40
    invoke-interface {v1, v0}, Ln3/y/b/a/t0/t;->f(Ln3/y/b/a/t0/t$b;)V

    .line 41
    iput-object v3, v0, Ln3/y/b/a/v;->u:Ln3/y/b/a/t0/t;

    :cond_f
    return-void
.end method

.method public final y(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, v0, Ln3/y/b/a/z;->n:J

    add-long/2addr p1, v0

    .line 4
    :goto_0
    iput-wide p1, p0, Ln3/y/b/a/v;->E:J

    .line 5
    iget-object v0, p0, Ln3/y/b/a/v;->n:Ln3/y/b/a/e;

    .line 6
    iget-object v0, v0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v0, p1, p2}, Ln3/y/b/a/x0/r;->a(J)V

    .line 7
    iget-object p1, p0, Ln3/y/b/a/v;->v:[Ln3/y/b/a/h0;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 8
    iget-wide v3, p0, Ln3/y/b/a/v;->E:J

    invoke-interface {v2, v3, v4}, Ln3/y/b/a/h0;->l(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/v;->r:Ln3/y/b/a/b0;

    .line 10
    iget-object p1, p1, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    :goto_2
    if-eqz p1, :cond_4

    .line 11
    iget-object p2, p1, Ln3/y/b/a/z;->m:Ln3/y/b/a/v0/h;

    .line 12
    iget-object p2, p2, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    invoke-virtual {p2}, Ln3/y/b/a/v0/f;->a()[Ln3/y/b/a/v0/e;

    move-result-object p2

    .line 13
    array-length v1, p2

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {v3}, Ln3/y/b/a/v0/e;->e()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_3
    iget-object p1, p1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final z(Ln3/y/b/a/v$c;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p1, Ln3/y/b/a/v$c;->a:Ln3/y/b/a/g0;

    .line 3
    iget-object v3, v0, Ln3/y/b/a/g0;->c:Ln3/y/b/a/l0;

    .line 4
    iget v7, v0, Ln3/y/b/a/g0;->g:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v8

    .line 6
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    .line 7
    invoke-virtual {v0}, Ln3/y/b/a/l0;->p()Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Ln3/y/b/a/l0;->p()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 9
    :cond_1
    :try_start_0
    iget-object v5, p0, Ln3/y/b/a/v;->j:Ln3/y/b/a/l0$c;

    iget-object v6, p0, Ln3/y/b/a/v;->k:Ln3/y/b/a/l0$b;

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Ln3/y/b/a/l0;->j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_2

    :goto_0
    move-object v10, v4

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    if-nez v10, :cond_4

    return v2

    .line 11
    :cond_4
    iget-object v0, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    iput v0, p1, Ln3/y/b/a/v$c;->b:I

    .line 15
    iput-wide v1, p1, Ln3/y/b/a/v$c;->c:J

    .line 16
    iput-object v3, p1, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_5
    iget-object v3, p0, Ln3/y/b/a/v;->t:Ln3/y/b/a/d0;

    iget-object v3, v3, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    invoke-virtual {v3, v0}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_6

    return v2

    .line 18
    :cond_6
    iput v0, p1, Ln3/y/b/a/v$c;->b:I

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
