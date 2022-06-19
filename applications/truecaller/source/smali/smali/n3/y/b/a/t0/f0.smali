.class public final Ln3/y/b/a/t0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/s;
.implements Ln3/y/b/a/q0/h;
.implements Ln3/y/b/a/w0/a0$b;
.implements Ln3/y/b/a/w0/a0$f;
.implements Ln3/y/b/a/t0/i0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/f0$f;,
        Ln3/y/b/a/t0/f0$d;,
        Ln3/y/b/a/t0/f0$b;,
        Ln3/y/b/a/t0/f0$a;,
        Ln3/y/b/a/t0/f0$e;,
        Ln3/y/b/a/t0/f0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/y/b/a/t0/s;",
        "Ln3/y/b/a/q0/h;",
        "Ln3/y/b/a/w0/a0$b<",
        "Ln3/y/b/a/t0/f0$a;",
        ">;",
        "Ln3/y/b/a/w0/a0$f;",
        "Ln3/y/b/a/t0/i0$b;"
    }
.end annotation


# static fields
.field public static final Q:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public E:J

.field public J:J

.field public K:J

.field public L:J

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public final a:Landroid/net/Uri;

.field public final b:Ln3/y/b/a/w0/h;

.field public final c:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ln3/y/b/a/w0/z;

.field public final e:Ln3/y/b/a/t0/c0$a;

.field public final f:Ln3/y/b/a/t0/f0$c;

.field public final g:Ln3/y/b/a/w0/b;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:Ln3/y/b/a/w0/a0;

.field public final k:Ln3/y/b/a/t0/f0$b;

.field public final l:Ln3/y/b/a/x0/c;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Landroid/os/Handler;

.field public p:Ln3/y/b/a/t0/s$a;

.field public q:Ln3/y/b/a/q0/n;

.field public r:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

.field public s:[Ln3/y/b/a/t0/i0;

.field public t:[Ln3/y/b/a/t0/k;

.field public u:[Ln3/y/b/a/t0/f0$f;

.field public v:Z

.field public w:Z

.field public x:Ln3/y/b/a/t0/f0$d;

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/f0;->Q:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ln3/y/b/a/w0/h;[Ln3/y/b/a/q0/g;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/f0$c;Ln3/y/b/a/w0/b;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ln3/y/b/a/w0/h;",
            "[",
            "Ln3/y/b/a/q0/g;",
            "Ln3/y/b/a/p0/c<",
            "*>;",
            "Ln3/y/b/a/w0/z;",
            "Ln3/y/b/a/t0/c0$a;",
            "Ln3/y/b/a/t0/f0$c;",
            "Ln3/y/b/a/w0/b;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/f0;->b:Ln3/y/b/a/w0/h;

    .line 4
    iput-object p4, p0, Ln3/y/b/a/t0/f0;->c:Ln3/y/b/a/p0/c;

    .line 5
    iput-object p5, p0, Ln3/y/b/a/t0/f0;->d:Ln3/y/b/a/w0/z;

    .line 6
    iput-object p6, p0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    .line 7
    iput-object p7, p0, Ln3/y/b/a/t0/f0;->f:Ln3/y/b/a/t0/f0$c;

    .line 8
    iput-object p8, p0, Ln3/y/b/a/t0/f0;->g:Ln3/y/b/a/w0/b;

    .line 9
    iput-object p9, p0, Ln3/y/b/a/t0/f0;->h:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->i:J

    .line 11
    new-instance p1, Ln3/y/b/a/w0/a0;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Ln3/y/b/a/w0/a0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    .line 12
    new-instance p1, Ln3/y/b/a/t0/f0$b;

    invoke-direct {p1, p3}, Ln3/y/b/a/t0/f0$b;-><init>([Ln3/y/b/a/q0/g;)V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->k:Ln3/y/b/a/t0/f0$b;

    .line 13
    new-instance p1, Ln3/y/b/a/x0/c;

    invoke-direct {p1}, Ln3/y/b/a/x0/c;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->l:Ln3/y/b/a/x0/c;

    .line 14
    new-instance p1, Ln3/y/b/a/t0/d0;

    invoke-direct {p1, p0}, Ln3/y/b/a/t0/d0;-><init>(Ln3/y/b/a/t0/f0;)V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->m:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Ln3/y/b/a/t0/e0;

    invoke-direct {p1, p0}, Ln3/y/b/a/t0/e0;-><init>(Ln3/y/b/a/t0/f0;)V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->n:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Ln3/y/b/a/t0/f0$f;

    .line 17
    iput-object p2, p0, Ln3/y/b/a/t0/f0;->u:[Ln3/y/b/a/t0/f0$f;

    new-array p2, p1, [Ln3/y/b/a/t0/i0;

    .line 18
    iput-object p2, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    new-array p1, p1, [Ln3/y/b/a/t0/k;

    .line 19
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->L:J

    const-wide/16 p3, -0x1

    .line 21
    iput-wide p3, p0, Ln3/y/b/a/t0/f0;->J:J

    .line 22
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->E:J

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Ln3/y/b/a/t0/f0;->z:I

    .line 24
    invoke-virtual {p6}, Ln3/y/b/a/t0/c0$a;->p()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Ln3/y/b/a/t0/f0$a;

    iget-object v2, v7, Ln3/y/b/a/t0/f0;->a:Landroid/net/Uri;

    iget-object v3, v7, Ln3/y/b/a/t0/f0;->b:Ln3/y/b/a/w0/h;

    iget-object v4, v7, Ln3/y/b/a/t0/f0;->k:Ln3/y/b/a/t0/f0$b;

    iget-object v6, v7, Ln3/y/b/a/t0/f0;->l:Ln3/y/b/a/x0/c;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/t0/f0$a;-><init>(Ln3/y/b/a/t0/f0;Landroid/net/Uri;Ln3/y/b/a/w0/h;Ln3/y/b/a/t0/f0$b;Ln3/y/b/a/q0/h;Ln3/y/b/a/x0/c;)V

    .line 2
    iget-boolean v0, v7, Ln3/y/b/a/t0/f0;->w:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v7, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->a:Ln3/y/b/a/q0/n;

    .line 6
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/f0;->w()Z

    move-result v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 7
    iget-wide v1, v7, Ln3/y/b/a/t0/f0;->E:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-wide v9, v7, Ln3/y/b/a/t0/f0;->L:J

    cmp-long v1, v9, v1

    if-lez v1, :cond_0

    .line 8
    iput-boolean v6, v7, Ln3/y/b/a/t0/f0;->O:Z

    .line 9
    iput-wide v3, v7, Ln3/y/b/a/t0/f0;->L:J

    return-void

    .line 10
    :cond_0
    iget-wide v1, v7, Ln3/y/b/a/t0/f0;->L:J

    .line 11
    invoke-interface {v0, v1, v2}, Ln3/y/b/a/q0/n;->b(J)Ln3/y/b/a/q0/n$a;

    move-result-object v0

    iget-object v0, v0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    iget-wide v0, v0, Ln3/y/b/a/q0/o;->b:J

    iget-wide v9, v7, Ln3/y/b/a/t0/f0;->L:J

    .line 12
    iget-object v2, v8, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    iput-wide v0, v2, Ln3/y/b/a/q0/m;->a:J

    .line 13
    iput-wide v9, v8, Ln3/y/b/a/t0/f0$a;->i:J

    .line 14
    iput-boolean v6, v8, Ln3/y/b/a/t0/f0$a;->h:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v8, Ln3/y/b/a/t0/f0$a;->m:Z

    .line 16
    iput-wide v3, v7, Ln3/y/b/a/t0/f0;->L:J

    .line 17
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/f0;->u()I

    move-result v0

    iput v0, v7, Ln3/y/b/a/t0/f0;->N:I

    .line 18
    iget-object v0, v7, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    iget-object v1, v7, Ln3/y/b/a/t0/f0;->d:Ln3/y/b/a/w0/z;

    iget v2, v7, Ln3/y/b/a/t0/f0;->z:I

    .line 19
    check-cast v1, Ln3/y/b/a/w0/t;

    invoke-virtual {v1, v2}, Ln3/y/b/a/w0/t;->b(I)I

    move-result v1

    .line 20
    invoke-virtual {v0, v8, v7, v1}, Ln3/y/b/a/w0/a0;->f(Ln3/y/b/a/w0/a0$e;Ln3/y/b/a/w0/a0$b;I)J

    move-result-wide v20

    .line 21
    iget-object v9, v7, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    .line 22
    iget-object v10, v8, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 23
    iget-wide v0, v8, Ln3/y/b/a/t0/f0$a;->i:J

    .line 24
    iget-wide v2, v7, Ln3/y/b/a/t0/f0;->E:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    .line 25
    invoke-virtual/range {v9 .. v21}, Ln3/y/b/a/t0/c0$a;->n(Ln3/y/b/a/w0/k;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->B:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public a(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Ln3/y/b/a/t0/f0;->O:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ln3/y/b/a/t0/f0;->M:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ln3/y/b/a/t0/f0;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Ln3/y/b/a/t0/f0;->D:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->l:Ln3/y/b/a/x0/c;

    invoke-virtual {p1}, Ln3/y/b/a/x0/c;->a()Z

    move-result p1

    .line 3
    iget-object p2, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {p2}, Ln3/y/b/a/w0/a0;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->A()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()J
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->c:[Z

    .line 4
    iget-boolean v1, p0, Ln3/y/b/a/t0/f0;->O:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-wide v0, p0, Ln3/y/b/a/t0/f0;->L:J

    return-wide v0

    .line 7
    :cond_1
    iget-boolean v1, p0, Ln3/y/b/a/t0/f0;->y:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 9
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v9, v9, v6

    .line 10
    iget-object v9, v9, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 11
    monitor-enter v9

    .line 12
    :try_start_0
    iget-boolean v10, v9, Ln3/y/b/a/t0/h0;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    .line 13
    iget-object v9, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v9, v9, v6

    .line 14
    invoke-virtual {v9}, Ln3/y/b/a/t0/i0;->j()J

    move-result-wide v9

    .line 15
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v9

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->v()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 18
    iget-wide v7, p0, Ln3/y/b/a/t0/f0;->K:J

    :cond_6
    return-wide v7
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/f0;->D:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/t0/f0$d;->a:Ln3/y/b/a/q0/n;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->c:[Z

    .line 5
    invoke-interface {v1}, Ln3/y/b/a/q0/n;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Ln3/y/b/a/t0/f0;->B:Z

    .line 7
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->K:J

    .line 8
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->L:J

    return-wide p1

    .line 10
    :cond_1
    iget v2, p0, Ln3/y/b/a/t0/f0;->z:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    .line 11
    iget-object v2, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v2, v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    .line 12
    iget-object v5, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v5, v5, v3

    .line 13
    invoke-virtual {v5}, Ln3/y/b/a/t0/i0;->r()V

    .line 14
    invoke-virtual {v5, p1, p2, v4, v1}, Ln3/y/b/a/t0/i0;->e(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_4

    .line 15
    aget-boolean v4, v0, v3

    if-nez v4, :cond_3

    iget-boolean v4, p0, Ln3/y/b/a/t0/f0;->y:Z

    if-nez v4, :cond_4

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    return-wide p1

    .line 16
    :cond_6
    iput-boolean v1, p0, Ln3/y/b/a/t0/f0;->M:Z

    .line 17
    iput-wide p1, p0, Ln3/y/b/a/t0/f0;->L:J

    .line 18
    iput-boolean v1, p0, Ln3/y/b/a/t0/f0;->O:Z

    .line 19
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {v0}, Ln3/y/b/a/w0/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {v0}, Ln3/y/b/a/w0/a0;->a()V

    goto :goto_5

    .line 21
    :cond_7
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v2, v0

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 22
    invoke-virtual {v4, v1}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->C:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {v0}, Ln3/y/b/a/t0/c0$a;->s()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/t0/f0;->C:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->B:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->O:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->u()I

    move-result v0

    iget v1, p0, Ln3/y/b/a/t0/f0;->N:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ln3/y/b/a/t0/f0;->B:Z

    .line 7
    iget-wide v0, p0, Ln3/y/b/a/t0/f0;->K:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/f0;->v:Z

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    iget-object v1, p0, Ln3/y/b/a/t0/f0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public i(II)Ln3/y/b/a/q0/p;
    .locals 1

    .line 1
    new-instance p2, Ln3/y/b/a/t0/f0$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ln3/y/b/a/t0/f0$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Ln3/y/b/a/t0/f0;->z(Ln3/y/b/a/t0/f0$f;)Ln3/y/b/a/q0/p;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    iget-object v1, p0, Ln3/y/b/a/t0/f0;->d:Ln3/y/b/a/w0/z;

    iget v2, p0, Ln3/y/b/a/t0/f0;->z:I

    check-cast v1, Ln3/y/b/a/w0/t;

    invoke-virtual {v1, v2}, Ln3/y/b/a/w0/t;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/a0;->d(I)V

    .line 2
    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->O:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ln3/y/b/a/t0/f0;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public k(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->d:[Z

    .line 5
    iget-object v1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    iget-object v3, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Ln3/y/b/a/t0/i0;->h(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Ln3/y/b/a/w0/a0$e;JJLjava/io/IOException;I)Ln3/y/b/a/w0/a0$c;
    .locals 31

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/t0/f0$a;

    .line 2
    iget-wide v2, v0, Ln3/y/b/a/t0/f0;->J:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3
    iget-wide v2, v1, Ln3/y/b/a/t0/f0$a;->k:J

    .line 4
    iput-wide v2, v0, Ln3/y/b/a/t0/f0;->J:J

    .line 5
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->d:Ln3/y/b/a/w0/z;

    iget v7, v0, Ln3/y/b/a/t0/f0;->z:I

    .line 6
    move-object v6, v2

    check-cast v6, Ln3/y/b/a/w0/t;

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Ln3/y/b/a/w0/t;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v6

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 7
    sget-object v2, Ln3/y/b/a/w0/a0;->e:Ln3/y/b/a/w0/a0$c;

    goto :goto_5

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/f0;->u()I

    move-result v8

    .line 9
    iget v10, v0, Ln3/y/b/a/t0/f0;->N:I

    const/4 v11, 0x0

    if-le v8, v10, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    move v10, v11

    .line 10
    :goto_0
    iget-wide v12, v0, Ln3/y/b/a/t0/f0;->J:J

    cmp-long v4, v12, v4

    if-nez v4, :cond_6

    iget-object v4, v0, Ln3/y/b/a/t0/f0;->q:Ln3/y/b/a/q0/n;

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4}, Ln3/y/b/a/q0/n;->g()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-boolean v4, v0, Ln3/y/b/a/t0/f0;->w:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/f0;->B()Z

    move-result v4

    if-nez v4, :cond_4

    .line 13
    iput-boolean v9, v0, Ln3/y/b/a/t0/f0;->M:Z

    goto :goto_4

    .line 14
    :cond_4
    iget-boolean v4, v0, Ln3/y/b/a/t0/f0;->w:Z

    iput-boolean v4, v0, Ln3/y/b/a/t0/f0;->B:Z

    const-wide/16 v4, 0x0

    .line 15
    iput-wide v4, v0, Ln3/y/b/a/t0/f0;->K:J

    .line 16
    iput v11, v0, Ln3/y/b/a/t0/f0;->N:I

    .line 17
    iget-object v6, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v7, v6

    move v8, v11

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v12, v6, v8

    .line 18
    invoke-virtual {v12, v11}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v6, v1, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    iput-wide v4, v6, Ln3/y/b/a/q0/m;->a:J

    .line 20
    iput-wide v4, v1, Ln3/y/b/a/t0/f0$a;->i:J

    .line 21
    iput-boolean v9, v1, Ln3/y/b/a/t0/f0$a;->h:Z

    .line 22
    iput-boolean v11, v1, Ln3/y/b/a/t0/f0$a;->m:Z

    goto :goto_3

    .line 23
    :cond_6
    :goto_2
    iput v8, v0, Ln3/y/b/a/t0/f0;->N:I

    :goto_3
    move v11, v9

    :goto_4
    if-eqz v11, :cond_7

    .line 24
    invoke-static {v10, v2, v3}, Ln3/y/b/a/w0/a0;->b(ZJ)Ln3/y/b/a/w0/a0$c;

    move-result-object v2

    goto :goto_5

    .line 25
    :cond_7
    sget-object v2, Ln3/y/b/a/w0/a0;->d:Ln3/y/b/a/w0/a0$c;

    .line 26
    :goto_5
    iget-object v10, v0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    .line 27
    iget-object v11, v1, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    .line 28
    iget-object v3, v1, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 29
    iget-object v12, v3, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 30
    iget-object v13, v3, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 31
    iget-wide v4, v1, Ln3/y/b/a/t0/f0$a;->i:J

    move-wide/from16 v19, v4

    .line 32
    iget-wide v4, v0, Ln3/y/b/a/t0/f0;->E:J

    move-wide/from16 v21, v4

    .line 33
    iget-wide v3, v3, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v27, v3

    .line 34
    invoke-virtual {v2}, Ln3/y/b/a/w0/a0$c;->a()Z

    move-result v1

    xor-int/lit8 v30, v1, 0x1

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-wide/from16 v23, p2

    move-wide/from16 v25, p4

    move-object/from16 v29, p6

    .line 35
    invoke-virtual/range {v10 .. v30}, Ln3/y/b/a/t0/c0$a;->k(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public m()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, v2}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ln3/y/b/a/t0/k;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->k:Ln3/y/b/a/t0/f0$b;

    .line 6
    iget-object v1, v0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ln3/y/b/a/q0/g;->release()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    :cond_2
    return-void
.end method

.method public n(JLn3/y/b/a/j0;)J
    .locals 20

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    .line 1
    iget-object v4, v3, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v4, v4, Ln3/y/b/a/t0/f0$d;->a:Ln3/y/b/a/q0/n;

    .line 4
    invoke-interface {v4}, Ln3/y/b/a/q0/n;->c()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    return-wide v6

    .line 5
    :cond_0
    invoke-interface {v4, v0, v1}, Ln3/y/b/a/q0/n;->b(J)Ln3/y/b/a/q0/n$a;

    move-result-object v4

    .line 6
    iget-object v5, v4, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    iget-wide v8, v5, Ln3/y/b/a/q0/o;->a:J

    iget-object v4, v4, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    iget-wide v4, v4, Ln3/y/b/a/q0/o;->a:J

    .line 7
    sget-object v10, Ln3/y/b/a/j0;->c:Ln3/y/b/a/j0;

    invoke-virtual {v10, v2}, Ln3/y/b/a/j0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v4, v0

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-wide v10, v2, Ln3/y/b/a/j0;->a:J

    const-wide/high16 v12, -0x8000000000000000L

    sub-long v14, v0, v10

    xor-long/2addr v10, v0

    xor-long v16, v0, v14

    and-long v10, v10, v16

    cmp-long v10, v10, v6

    if-gez v10, :cond_2

    goto :goto_0

    :cond_2
    move-wide v12, v14

    .line 9
    :goto_0
    iget-wide v10, v2, Ln3/y/b/a/j0;->b:J

    const-wide v14, 0x7fffffffffffffffL

    add-long v16, v0, v10

    xor-long v18, v0, v16

    xor-long v10, v10, v16

    and-long v10, v10, v18

    cmp-long v2, v10, v6

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v14, v16

    :goto_1
    cmp-long v2, v12, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v2, :cond_4

    cmp-long v2, v8, v14

    if-gtz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    cmp-long v10, v12, v4

    if-gtz v10, :cond_5

    cmp-long v10, v4, v14

    if-gtz v10, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    sub-long v6, v8, v0

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_9

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    :goto_4
    move-wide v4, v8

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move-wide v4, v12

    :cond_9
    :goto_5
    return-wide v4
.end method

.method public o(Ln3/y/b/a/t0/s$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->l:Ln3/y/b/a/x0/c;

    invoke-virtual {p1}, Ln3/y/b/a/x0/c;->a()Z

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/t0/f0;->A()V

    return-void
.end method

.method public p(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    iget-object v0, p0, Ln3/y/b/a/t0/f0;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q(Ln3/y/b/a/q0/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->r:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ln3/y/b/a/q0/n$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v1, v2, v3}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 3
    :goto_0
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->q:Ln3/y/b/a/q0/n;

    .line 4
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    iget-object v0, p0, Ln3/y/b/a/t0/f0;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r([Ln3/y/b/a/v0/e;[Z[Ln3/y/b/a/t0/j0;[ZJ)J
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/t0/f0$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->d:[Z

    .line 5
    iget v2, p0, Ln3/y/b/a/t0/f0;->D:I

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 7
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 8
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Ln3/y/b/a/t0/f0$e;

    .line 9
    iget v5, v5, Ln3/y/b/a/t0/f0$e;->a:I

    .line 10
    aget-boolean v7, v0, v5

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 11
    iget v7, p0, Ln3/y/b/a/t0/f0;->D:I

    sub-int/2addr v7, v6

    iput v7, p0, Ln3/y/b/a/t0/f0;->D:I

    .line 12
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 13
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean p2, p0, Ln3/y/b/a/t0/f0;->A:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 15
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 16
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 17
    aget-object v4, p1, v2

    .line 18
    invoke-interface {v4}, Ln3/y/b/a/v0/e;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 19
    invoke-interface {v4, v3}, Ln3/y/b/a/v0/e;->d(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 20
    invoke-interface {v4}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 21
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 22
    iget v5, p0, Ln3/y/b/a/t0/f0;->D:I

    add-int/2addr v5, v6

    iput v5, p0, Ln3/y/b/a/t0/f0;->D:I

    .line 23
    aput-boolean v6, v0, v4

    .line 24
    new-instance v5, Ln3/y/b/a/t0/f0$e;

    invoke-direct {v5, p0, v4}, Ln3/y/b/a/t0/f0$e;-><init>(Ln3/y/b/a/t0/f0;I)V

    aput-object v5, p3, v2

    .line 25
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 26
    iget-object p2, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object p2, p2, v4

    .line 27
    invoke-virtual {p2}, Ln3/y/b/a/t0/i0;->r()V

    .line 28
    invoke-virtual {p2, p5, p6, v6, v6}, Ln3/y/b/a/t0/i0;->e(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 29
    iget-object p2, p2, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 30
    iget v4, p2, Ln3/y/b/a/t0/h0;->j:I

    iget p2, p2, Ln3/y/b/a/t0/h0;->l:I

    add-int/2addr v4, p2

    if-eqz v4, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    :cond_9
    iget p1, p0, Ln3/y/b/a/t0/f0;->D:I

    if-nez p1, :cond_c

    .line 32
    iput-boolean v3, p0, Ln3/y/b/a/t0/f0;->M:Z

    .line 33
    iput-boolean v3, p0, Ln3/y/b/a/t0/f0;->B:Z

    .line 34
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {p1}, Ln3/y/b/a/w0/a0;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 36
    invoke-virtual {p3}, Ln3/y/b/a/t0/i0;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 37
    :cond_a
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {p1}, Ln3/y/b/a/w0/a0;->a()V

    goto :goto_a

    .line 38
    :cond_b
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 39
    invoke-virtual {p4, v3}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 40
    invoke-virtual {p0, p5, p6}, Ln3/y/b/a/t0/f0;->e(J)J

    move-result-wide p5

    .line 41
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 42
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 43
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 44
    :cond_e
    :goto_a
    iput-boolean v6, p0, Ln3/y/b/a/t0/f0;->A:Z

    return-wide p5
.end method

.method public s(Ln3/y/b/a/w0/a0$e;JJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/t0/f0$a;

    .line 2
    iget-wide v2, v0, Ln3/y/b/a/t0/f0;->E:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, v0, Ln3/y/b/a/t0/f0;->q:Ln3/y/b/a/q0/n;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Ln3/y/b/a/q0/n;->c()Z

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/f0;->v()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 5
    :goto_0
    iput-wide v3, v0, Ln3/y/b/a/t0/f0;->E:J

    .line 6
    iget-object v5, v0, Ln3/y/b/a/t0/f0;->f:Ln3/y/b/a/t0/f0$c;

    check-cast v5, Ln3/y/b/a/t0/g0;

    invoke-virtual {v5, v3, v4, v2}, Ln3/y/b/a/t0/g0;->q(JZ)V

    .line 7
    :cond_1
    iget-object v6, v0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    .line 8
    iget-object v7, v1, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    .line 9
    iget-object v2, v1, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 10
    iget-object v8, v2, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 11
    iget-object v9, v2, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 12
    iget-wide v3, v1, Ln3/y/b/a/t0/f0$a;->i:J

    move-wide v15, v3

    .line 13
    iget-wide v3, v0, Ln3/y/b/a/t0/f0;->E:J

    move-wide/from16 v17, v3

    .line 14
    iget-wide v2, v2, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v23, v2

    const/4 v14, 0x0

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    .line 15
    invoke-virtual/range {v6 .. v24}, Ln3/y/b/a/t0/c0$a;->h(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 16
    iget-wide v2, v0, Ln3/y/b/a/t0/f0;->J:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 17
    iget-wide v1, v1, Ln3/y/b/a/t0/f0$a;->k:J

    .line 18
    iput-wide v1, v0, Ln3/y/b/a/t0/f0;->J:J

    :cond_2
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Ln3/y/b/a/t0/f0;->O:Z

    .line 20
    iget-object v1, v0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v1, v0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    return-void
.end method

.method public t(Ln3/y/b/a/w0/a0$e;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/t0/f0$a;

    .line 2
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    .line 3
    iget-object v3, v1, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    .line 4
    iget-object v10, v1, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 5
    iget-object v4, v10, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 6
    iget-object v5, v10, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    iget-wide v11, v1, Ln3/y/b/a/t0/f0$a;->i:J

    .line 8
    iget-wide v13, v0, Ln3/y/b/a/t0/f0;->E:J

    .line 9
    iget-wide v6, v10, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v19, v6

    const/4 v10, 0x0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 10
    invoke-virtual/range {v2 .. v20}, Ln3/y/b/a/t0/c0$a;->e(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_2

    .line 11
    iget-wide v2, v0, Ln3/y/b/a/t0/f0;->J:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 12
    iget-wide v1, v1, Ln3/y/b/a/t0/f0$a;->k:J

    .line 13
    iput-wide v1, v0, Ln3/y/b/a/t0/f0;->J:J

    .line 14
    :cond_0
    iget-object v1, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 15
    invoke-virtual {v5, v3}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget v1, v0, Ln3/y/b/a/t0/f0;->D:I

    if-lez v1, :cond_2

    .line 17
    iget-object v1, v0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v1, v0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    :cond_2
    return-void
.end method

.method public final u()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget-object v4, v4, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    .line 3
    iget v5, v4, Ln3/y/b/a/t0/h0;->j:I

    iget v4, v4, Ln3/y/b/a/t0/h0;->i:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final v()J
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Ln3/y/b/a/t0/i0;->j()J

    move-result-wide v5

    .line 3
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final w()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/f0;->L:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/t0/f0$d;->e:[Z

    .line 4
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 5
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 6
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    .line 7
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v0, v2

    .line 8
    iget-object v3, p0, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ln3/y/b/a/x0/j;->e(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Ln3/y/b/a/t0/f0;->K:J

    .line 10
    invoke-virtual/range {v3 .. v9}, Ln3/y/b/a/t0/c0$a;->b(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 11
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t0/f0$d;->c:[Z

    .line 4
    iget-boolean v1, p0, Ln3/y/b/a/t0/f0;->M:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object p1, v0, p1

    .line 5
    iget-object p1, p1, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    invoke-virtual {p1}, Ln3/y/b/a/t0/h0;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Ln3/y/b/a/t0/f0;->L:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ln3/y/b/a/t0/f0;->M:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Ln3/y/b/a/t0/f0;->B:Z

    .line 9
    iput-wide v0, p0, Ln3/y/b/a/t0/f0;->K:J

    .line 10
    iput p1, p0, Ln3/y/b/a/t0/f0;->N:I

    .line 11
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {v3, p1}, Ln3/y/b/a/t0/i0;->q(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1, p0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final z(Ln3/y/b/a/t0/f0$f;)Ln3/y/b/a/q0/p;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Ln3/y/b/a/t0/f0;->u:[Ln3/y/b/a/t0/f0$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ln3/y/b/a/t0/f0$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ln3/y/b/a/t0/i0;

    iget-object v2, p0, Ln3/y/b/a/t0/f0;->g:Ln3/y/b/a/w0/b;

    invoke-direct {v1, v2}, Ln3/y/b/a/t0/i0;-><init>(Ln3/y/b/a/w0/b;)V

    .line 5
    iput-object p0, v1, Ln3/y/b/a/t0/i0;->o:Ln3/y/b/a/t0/i0$b;

    .line 6
    iget-object v2, p0, Ln3/y/b/a/t0/f0;->u:[Ln3/y/b/a/t0/f0$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln3/y/b/a/t0/f0$f;

    .line 7
    aput-object p1, v2, v0

    .line 8
    sget p1, Ln3/y/b/a/x0/x;->a:I

    .line 9
    iput-object v2, p0, Ln3/y/b/a/t0/f0;->u:[Ln3/y/b/a/t0/f0$f;

    .line 10
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln3/y/b/a/t0/i0;

    .line 11
    aput-object v1, p1, v0

    .line 12
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    .line 13
    iget-object p1, p0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    .line 14
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln3/y/b/a/t0/k;

    .line 15
    new-instance v2, Ln3/y/b/a/t0/k;

    iget-object v3, p0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v3, v3, v0

    iget-object v4, p0, Ln3/y/b/a/t0/f0;->c:Ln3/y/b/a/p0/c;

    invoke-direct {v2, v3, v4}, Ln3/y/b/a/t0/k;-><init>(Ln3/y/b/a/t0/i0;Ln3/y/b/a/p0/c;)V

    aput-object v2, p1, v0

    .line 16
    iput-object p1, p0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    return-object v1
.end method
