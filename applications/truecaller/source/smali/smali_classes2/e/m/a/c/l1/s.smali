.class public final Le/m/a/c/l1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/o;
.implements Le/m/a/c/g1/i;
.implements Le/m/a/c/p1/c0$b;
.implements Le/m/a/c/p1/c0$f;
.implements Le/m/a/c/l1/v$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/l1/s$f;,
        Le/m/a/c/l1/s$d;,
        Le/m/a/c/l1/s$b;,
        Le/m/a/c/l1/s$a;,
        Le/m/a/c/l1/s$e;,
        Le/m/a/c/l1/s$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/c/l1/o;",
        "Le/m/a/c/g1/i;",
        "Le/m/a/c/p1/c0$b<",
        "Le/m/a/c/l1/s$a;",
        ">;",
        "Le/m/a/c/p1/c0$f;",
        "Le/m/a/c/l1/v$b;"
    }
.end annotation


# static fields
.field public static final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final R:Lcom/google/android/exoplayer2/Format;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:J

.field public E:J

.field public J:Z

.field public K:J

.field public L:J

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public final a:Landroid/net/Uri;

.field public final b:Le/m/a/c/p1/l;

.field public final c:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/c/p1/b0;

.field public final e:Le/m/a/c/l1/q$a;

.field public final f:Le/m/a/c/l1/s$c;

.field public final g:Le/m/a/c/p1/d;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:Le/m/a/c/p1/c0;

.field public final k:Le/m/a/c/l1/s$b;

.field public final l:Le/m/a/c/q1/i;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Landroid/os/Handler;

.field public p:Le/m/a/c/l1/o$a;

.field public q:Le/m/a/c/g1/q;

.field public r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field public s:[Le/m/a/c/l1/v;

.field public t:[Le/m/a/c/l1/s$f;

.field public u:Z

.field public v:Z

.field public w:Le/m/a/c/l1/s$d;

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    sput-object v0, Le/m/a/c/l1/s;->Q:Ljava/util/Map;

    const-wide v0, 0x7fffffffffffffffL

    const-string v2, "icy"

    const-string v3, "application/x-icy"

    .line 5
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/Format;->i(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Le/m/a/c/l1/s;->R:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Le/m/a/c/p1/l;[Le/m/a/c/g1/h;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Le/m/a/c/l1/q$a;Le/m/a/c/l1/s$c;Le/m/a/c/p1/d;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Le/m/a/c/p1/l;",
            "[",
            "Le/m/a/c/g1/h;",
            "Le/m/a/c/f1/e<",
            "*>;",
            "Le/m/a/c/p1/b0;",
            "Le/m/a/c/l1/q$a;",
            "Le/m/a/c/l1/s$c;",
            "Le/m/a/c/p1/d;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/s;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Le/m/a/c/l1/s;->b:Le/m/a/c/p1/l;

    .line 4
    iput-object p4, p0, Le/m/a/c/l1/s;->c:Le/m/a/c/f1/e;

    .line 5
    iput-object p5, p0, Le/m/a/c/l1/s;->d:Le/m/a/c/p1/b0;

    .line 6
    iput-object p6, p0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 7
    iput-object p7, p0, Le/m/a/c/l1/s;->f:Le/m/a/c/l1/s$c;

    .line 8
    iput-object p8, p0, Le/m/a/c/l1/s;->g:Le/m/a/c/p1/d;

    .line 9
    iput-object p9, p0, Le/m/a/c/l1/s;->h:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Le/m/a/c/l1/s;->i:J

    .line 11
    new-instance p1, Le/m/a/c/p1/c0;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Le/m/a/c/p1/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    .line 12
    new-instance p1, Le/m/a/c/l1/s$b;

    invoke-direct {p1, p3}, Le/m/a/c/l1/s$b;-><init>([Le/m/a/c/g1/h;)V

    iput-object p1, p0, Le/m/a/c/l1/s;->k:Le/m/a/c/l1/s$b;

    .line 13
    new-instance p1, Le/m/a/c/q1/i;

    invoke-direct {p1}, Le/m/a/c/q1/i;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/s;->l:Le/m/a/c/q1/i;

    .line 14
    new-instance p1, Le/m/a/c/l1/i;

    invoke-direct {p1, p0}, Le/m/a/c/l1/i;-><init>(Le/m/a/c/l1/s;)V

    iput-object p1, p0, Le/m/a/c/l1/s;->m:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Le/m/a/c/l1/j;

    invoke-direct {p1, p0}, Le/m/a/c/l1/j;-><init>(Le/m/a/c/l1/s;)V

    iput-object p1, p0, Le/m/a/c/l1/s;->n:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Le/m/a/c/l1/s$f;

    .line 17
    iput-object p2, p0, Le/m/a/c/l1/s;->t:[Le/m/a/c/l1/s$f;

    new-array p1, p1, [Le/m/a/c/l1/v;

    .line 18
    iput-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p1, p0, Le/m/a/c/l1/s;->L:J

    const-wide/16 p3, -0x1

    .line 20
    iput-wide p3, p0, Le/m/a/c/l1/s;->E:J

    .line 21
    iput-wide p1, p0, Le/m/a/c/l1/s;->D:J

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Le/m/a/c/l1/s;->y:I

    .line 23
    iget-object p1, p6, Le/m/a/c/l1/q$a;->b:Le/m/a/c/l1/p$a;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p2, p6, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/c/l1/q$a$a;

    .line 26
    iget-object p4, p3, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 27
    iget-object p3, p3, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance p5, Le/m/a/c/l1/h;

    invoke-direct {p5, p6, p4, p1}, Le/m/a/c/l1/h;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V

    invoke-virtual {p6, p3, p5}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 26

    move-object/from16 v8, p0

    .line 1
    new-instance v9, Le/m/a/c/l1/s$a;

    iget-object v2, v8, Le/m/a/c/l1/s;->a:Landroid/net/Uri;

    iget-object v3, v8, Le/m/a/c/l1/s;->b:Le/m/a/c/p1/l;

    iget-object v4, v8, Le/m/a/c/l1/s;->k:Le/m/a/c/l1/s$b;

    iget-object v6, v8, Le/m/a/c/l1/s;->l:Le/m/a/c/q1/i;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Le/m/a/c/l1/s$a;-><init>(Le/m/a/c/l1/s;Landroid/net/Uri;Le/m/a/c/p1/l;Le/m/a/c/l1/s$b;Le/m/a/c/g1/i;Le/m/a/c/q1/i;)V

    .line 2
    iget-boolean v0, v8, Le/m/a/c/l1/s;->v:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v8, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Le/m/a/c/l1/s$d;->a:Le/m/a/c/g1/q;

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/l1/s;->v()Z

    move-result v1

    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 7
    iget-wide v1, v8, Le/m/a/c/l1/s;->D:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-wide v10, v8, Le/m/a/c/l1/s;->L:J

    cmp-long v1, v10, v1

    if-lez v1, :cond_0

    .line 8
    iput-boolean v6, v8, Le/m/a/c/l1/s;->O:Z

    .line 9
    iput-wide v3, v8, Le/m/a/c/l1/s;->L:J

    return-void

    .line 10
    :cond_0
    iget-wide v1, v8, Le/m/a/c/l1/s;->L:J

    .line 11
    invoke-interface {v0, v1, v2}, Le/m/a/c/g1/q;->b(J)Le/m/a/c/g1/q$a;

    move-result-object v0

    iget-object v0, v0, Le/m/a/c/g1/q$a;->a:Le/m/a/c/g1/r;

    iget-wide v0, v0, Le/m/a/c/g1/r;->b:J

    iget-wide v10, v8, Le/m/a/c/l1/s;->L:J

    .line 12
    iget-object v2, v9, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    iput-wide v0, v2, Le/m/a/c/g1/p;->a:J

    .line 13
    iput-wide v10, v9, Le/m/a/c/l1/s$a;->i:J

    .line 14
    iput-boolean v6, v9, Le/m/a/c/l1/s$a;->h:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v9, Le/m/a/c/l1/s$a;->m:Z

    .line 16
    iput-wide v3, v8, Le/m/a/c/l1/s;->L:J

    .line 17
    :cond_1
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/l1/s;->t()I

    move-result v0

    iput v0, v8, Le/m/a/c/l1/s;->N:I

    .line 18
    iget-object v1, v8, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    iget-object v0, v8, Le/m/a/c/l1/s;->d:Le/m/a/c/p1/b0;

    iget v2, v8, Le/m/a/c/l1/s;->y:I

    .line 19
    check-cast v0, Le/m/a/c/p1/u;

    invoke-virtual {v0, v2}, Le/m/a/c/p1/u;->a(I)I

    move-result v5

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Ln3/g0/y;->z(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-object v0, v1, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 24
    new-instance v10, Le/m/a/c/p1/c0$d;

    move-object v0, v10

    move-object v3, v9

    move-object/from16 v4, p0

    move-wide v6, v14

    invoke-direct/range {v0 .. v7}, Le/m/a/c/p1/c0$d;-><init>(Le/m/a/c/p1/c0;Landroid/os/Looper;Le/m/a/c/p1/c0$e;Le/m/a/c/p1/c0$b;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v10, v0, v1}, Le/m/a/c/p1/c0$d;->b(J)V

    .line 25
    iget-object v0, v8, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 26
    iget-object v11, v9, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 27
    iget-wide v4, v9, Le/m/a/c/l1/s$a;->i:J

    .line 28
    iget-wide v6, v8, Le/m/a/c/l1/s;->D:J

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v9, Le/m/a/c/l1/q$b;

    iget-object v12, v11, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v19}, Le/m/a/c/l1/q$b;-><init>(Le/m/a/c/p1/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v10, Le/m/a/c/l1/q$c;

    .line 32
    invoke-virtual {v0, v4, v5}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v22

    .line 33
    invoke-virtual {v0, v6, v7}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v24

    move-object/from16 v16, v10

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v25}, Le/m/a/c/l1/q$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 34
    iget-object v1, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/l1/q$a$a;

    .line 35
    iget-object v3, v2, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 36
    iget-object v2, v2, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v4, Le/m/a/c/l1/a;

    invoke-direct {v4, v0, v3, v9, v10}, Le/m/a/c/l1/a;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$b;Le/m/a/c/l1/q$c;)V

    invoke-virtual {v0, v2, v4}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/l1/s;->A:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/m/a/c/l1/s;->v()Z

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
    .locals 1

    .line 1
    iget-boolean p1, p0, Le/m/a/c/l1/s;->O:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    .line 2
    iget-object p1, p1, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    .line 3
    iget-boolean p1, p0, Le/m/a/c/l1/s;->M:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Le/m/a/c/l1/s;->v:Z

    if-eqz p1, :cond_1

    iget p1, p0, Le/m/a/c/l1/s;->C:I

    if-nez p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Le/m/a/c/l1/s;->l:Le/m/a/c/q1/i;

    invoke-virtual {p1}, Le/m/a/c/q1/i;->a()Z

    move-result p1

    .line 5
    iget-object p2, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    invoke-virtual {p2}, Le/m/a/c/p1/c0;->b()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Le/m/a/c/l1/s;->A()V

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0

    :cond_3
    :goto_2
    return p2
.end method

.method public b()J
    .locals 11

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Le/m/a/c/l1/s$d;->c:[Z

    .line 4
    iget-boolean v1, p0, Le/m/a/c/l1/s;->O:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/l1/s;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-wide v0, p0, Le/m/a/c/l1/s;->L:J

    return-wide v0

    .line 7
    :cond_1
    iget-boolean v1, p0, Le/m/a/c/l1/s;->x:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 9
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v9, v9, v6

    .line 10
    monitor-enter v9

    .line 11
    :try_start_0
    iget-boolean v10, v9, Le/m/a/c/l1/v;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    .line 12
    iget-object v9, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v9, v9, v6

    .line 13
    invoke-virtual {v9}, Le/m/a/c/l1/v;->h()J

    move-result-wide v9

    .line 14
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
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

    .line 16
    invoke-virtual {p0}, Le/m/a/c/l1/s;->u()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 17
    iget-wide v7, p0, Le/m/a/c/l1/s;->K:J

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
    iget v0, p0, Le/m/a/c/l1/s;->C:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/m/a/c/l1/s;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Le/m/a/c/l1/s$d;->a:Le/m/a/c/g1/q;

    .line 4
    iget-object v0, v0, Le/m/a/c/l1/s$d;->c:[Z

    .line 5
    invoke-interface {v1}, Le/m/a/c/g1/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Le/m/a/c/l1/s;->A:Z

    .line 7
    iput-wide p1, p0, Le/m/a/c/l1/s;->K:J

    .line 8
    invoke-virtual {p0}, Le/m/a/c/l1/s;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-wide p1, p0, Le/m/a/c/l1/s;->L:J

    return-wide p1

    .line 10
    :cond_1
    iget v2, p0, Le/m/a/c/l1/s;->y:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    .line 11
    iget-object v2, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 12
    iget-object v4, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v4, v4, v3

    .line 13
    invoke-virtual {v4, p1, p2, v1}, Le/m/a/c/l1/v;->q(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    iget-boolean v4, p0, Le/m/a/c/l1/s;->x:Z

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-wide p1

    .line 15
    :cond_5
    iput-boolean v1, p0, Le/m/a/c/l1/s;->M:Z

    .line 16
    iput-wide p1, p0, Le/m/a/c/l1/s;->L:J

    .line 17
    iput-boolean v1, p0, Le/m/a/c/l1/s;->O:Z

    .line 18
    iget-object v0, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    invoke-virtual {v0}, Le/m/a/c/p1/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    .line 20
    iget-object v0, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    invoke-static {v0}, Ln3/g0/y;->z(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/m/a/c/p1/c0$d;->a(Z)V

    goto :goto_4

    .line 21
    :cond_6
    iget-object v0, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    const/4 v2, 0x0

    .line 22
    iput-object v2, v0, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    .line 23
    iget-object v0, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 24
    invoke-virtual {v4, v1}, Le/m/a/c/l1/v;->p(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-wide p1
.end method

.method public f()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/m/a/c/l1/s;->B:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 3
    iget-object v1, v0, Le/m/a/c/l1/q$a;->b:Le/m/a/c/l1/p$a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/l1/q$a$a;

    .line 6
    iget-object v4, v3, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 7
    iget-object v3, v3, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v5, Le/m/a/c/l1/g;

    invoke-direct {v5, v0, v4, v1}, Le/m/a/c/l1/g;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V

    invoke-virtual {v0, v3, v5}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Le/m/a/c/l1/s;->B:Z

    .line 9
    :cond_1
    iget-boolean v0, p0, Le/m/a/c/l1/s;->A:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Le/m/a/c/l1/s;->O:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Le/m/a/c/l1/s;->t()I

    move-result v0

    iget v1, p0, Le/m/a/c/l1/s;->N:I

    if-le v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Le/m/a/c/l1/s;->A:Z

    .line 12
    iget-wide v0, p0, Le/m/a/c/l1/s;->K:J

    return-wide v0

    :cond_3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/l1/s;->u:Z

    .line 2
    iget-object v0, p0, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    iget-object v1, p0, Le/m/a/c/l1/s;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Le/m/a/c/l1/s$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public i(II)Le/m/a/c/g1/s;
    .locals 1

    .line 1
    new-instance p2, Le/m/a/c/l1/s$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Le/m/a/c/l1/s$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Le/m/a/c/l1/s;->z(Le/m/a/c/l1/s$f;)Le/m/a/c/g1/s;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/c/l1/s;->y()V

    .line 2
    iget-boolean v0, p0, Le/m/a/c/l1/s;->O:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/m/a/c/l1/s;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public k(JZ)V
    .locals 14

    move-object v1, p0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/l1/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Le/m/a/c/l1/s$d;->d:[Z

    .line 5
    iget-object v2, v1, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 6
    iget-object v4, v1, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v4, v4, v3

    aget-boolean v5, v0, v3

    .line 7
    iget-object v11, v4, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    .line 8
    monitor-enter v4

    .line 9
    :try_start_0
    iget v6, v4, Le/m/a/c/l1/v;->o:I

    const-wide/16 v12, -0x1

    if-eqz v6, :cond_4

    iget-object v7, v4, Le/m/a/c/l1/v;->l:[J

    iget v8, v4, Le/m/a/c/l1/v;->q:I

    aget-wide v9, v7, v8

    cmp-long v7, p1, v9

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    .line 10
    iget v5, v4, Le/m/a/c/l1/v;->r:I

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    move-object v5, v4

    move v6, v8

    move-wide v8, p1

    move/from16 v10, p3

    .line 11
    invoke-virtual/range {v5 .. v10}, Le/m/a/c/l1/v;->g(IIJZ)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 12
    monitor-exit v4

    goto :goto_3

    .line 13
    :cond_3
    :try_start_1
    invoke-virtual {v4, v5}, Le/m/a/c/l1/v;->e(I)J

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_3

    .line 14
    :cond_4
    :goto_2
    monitor-exit v4

    .line 15
    :goto_3
    invoke-virtual {v11, v12, v13}, Le/m/a/c/l1/u;->a(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v4

    throw v0

    :cond_5
    return-void
.end method

.method public l([Le/m/a/c/n1/f;[Z[Le/m/a/c/l1/w;[ZJ)J
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Le/m/a/c/l1/s$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 4
    iget-object v0, v0, Le/m/a/c/l1/s$d;->d:[Z

    .line 5
    iget v2, p0, Le/m/a/c/l1/s;->C:I

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

    check-cast v5, Le/m/a/c/l1/s$e;

    .line 9
    iget v5, v5, Le/m/a/c/l1/s$e;->a:I

    .line 10
    aget-boolean v7, v0, v5

    invoke-static {v7}, Ln3/g0/y;->x(Z)V

    .line 11
    iget v7, p0, Le/m/a/c/l1/s;->C:I

    sub-int/2addr v7, v6

    iput v7, p0, Le/m/a/c/l1/s;->C:I

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
    iget-boolean p2, p0, Le/m/a/c/l1/s;->z:Z

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
    invoke-interface {v4}, Le/m/a/c/n1/f;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 19
    invoke-interface {v4, v3}, Le/m/a/c/n1/f;->d(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 20
    invoke-interface {v4}, Le/m/a/c/n1/f;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 21
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 22
    iget v5, p0, Le/m/a/c/l1/s;->C:I

    add-int/2addr v5, v6

    iput v5, p0, Le/m/a/c/l1/s;->C:I

    .line 23
    aput-boolean v6, v0, v4

    .line 24
    new-instance v5, Le/m/a/c/l1/s$e;

    invoke-direct {v5, p0, v4}, Le/m/a/c/l1/s$e;-><init>(Le/m/a/c/l1/s;I)V

    aput-object v5, p3, v2

    .line 25
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 26
    iget-object p2, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object p2, p2, v4

    .line 27
    invoke-virtual {p2, p5, p6, v6}, Le/m/a/c/l1/v;->q(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 28
    iget v4, p2, Le/m/a/c/l1/v;->p:I

    iget p2, p2, Le/m/a/c/l1/v;->r:I

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

    .line 29
    :cond_9
    iget p1, p0, Le/m/a/c/l1/s;->C:I

    if-nez p1, :cond_c

    .line 30
    iput-boolean v3, p0, Le/m/a/c/l1/s;->M:Z

    .line 31
    iput-boolean v3, p0, Le/m/a/c/l1/s;->A:Z

    .line 32
    iget-object p1, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    invoke-virtual {p1}, Le/m/a/c/p1/c0;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 33
    iget-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length p2, p1

    move p3, v3

    :goto_7
    if-ge p3, p2, :cond_a

    aget-object p4, p1, p3

    .line 34
    invoke-virtual {p4}, Le/m/a/c/l1/v;->f()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 35
    :cond_a
    iget-object p1, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    .line 36
    iget-object p1, p1, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    invoke-static {p1}, Ln3/g0/y;->z(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Le/m/a/c/p1/c0$d;->a(Z)V

    goto :goto_a

    .line 37
    :cond_b
    iget-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 38
    invoke-virtual {p4, v3}, Le/m/a/c/l1/v;->p(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 39
    invoke-virtual {p0, p5, p6}, Le/m/a/c/l1/s;->e(J)J

    move-result-wide p5

    .line 40
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 41
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 42
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 43
    :cond_e
    :goto_a
    iput-boolean v6, p0, Le/m/a/c/l1/s;->z:Z

    return-wide p5
.end method

.method public m(Le/m/a/c/p1/c0$e;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/m/a/c/l1/s$a;

    .line 2
    iget-object v2, v0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 3
    iget-object v4, v1, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    .line 4
    iget-object v3, v1, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 5
    iget-object v5, v3, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 6
    iget-object v6, v3, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    .line 7
    iget-wide v11, v1, Le/m/a/c/l1/s$a;->i:J

    .line 8
    iget-wide v9, v0, Le/m/a/c/l1/s;->D:J

    .line 9
    iget-wide v7, v3, Le/m/a/c/p1/d0;->b:J

    .line 10
    new-instance v15, Le/m/a/c/l1/q$b;

    move-object v3, v15

    move-wide/from16 v16, v7

    move-wide/from16 v7, p2

    move-object/from16 v18, v15

    move-wide v14, v9

    move-wide/from16 v9, p4

    move-wide/from16 p2, v14

    move-wide v13, v11

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Le/m/a/c/l1/q$b;-><init>(Le/m/a/c/p1/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Le/m/a/c/l1/q$c;

    .line 11
    invoke-virtual {v2, v13, v14}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v13

    move-wide/from16 v4, p2

    .line 12
    invoke-virtual {v2, v4, v5}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v15

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v7, v3

    const/4 v4, 0x0

    move v11, v4

    const/4 v4, 0x0

    move-object v12, v4

    move-object/from16 v4, v18

    invoke-direct/range {v7 .. v16}, Le/m/a/c/l1/q$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 13
    iget-object v5, v2, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/l1/q$a$a;

    .line 14
    iget-object v7, v6, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 15
    iget-object v6, v6, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v8, Le/m/a/c/l1/d;

    invoke-direct {v8, v2, v7, v4, v3}, Le/m/a/c/l1/d;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$b;Le/m/a/c/l1/q$c;)V

    invoke-virtual {v2, v6, v8}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-nez p6, :cond_3

    .line 16
    iget-wide v2, v0, Le/m/a/c/l1/s;->E:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 17
    iget-wide v1, v1, Le/m/a/c/l1/s$a;->k:J

    .line 18
    iput-wide v1, v0, Le/m/a/c/l1/s;->E:J

    .line 19
    :cond_1
    iget-object v1, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 20
    invoke-virtual {v5, v3}, Le/m/a/c/l1/v;->p(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget v1, v0, Le/m/a/c/l1/s;->C:I

    if-lez v1, :cond_3

    .line 22
    iget-object v1, v0, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {v1, v0}, Le/m/a/c/l1/x$a;->g(Le/m/a/c/l1/x;)V

    :cond_3
    return-void
.end method

.method public n(Le/m/a/c/p1/c0$e;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/m/a/c/l1/s$a;

    .line 2
    iget-wide v2, v0, Le/m/a/c/l1/s;->D:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, v0, Le/m/a/c/l1/s;->q:Le/m/a/c/g1/q;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Le/m/a/c/g1/q;->c()Z

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/l1/s;->u()J

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
    iput-wide v3, v0, Le/m/a/c/l1/s;->D:J

    .line 6
    iget-object v5, v0, Le/m/a/c/l1/s;->f:Le/m/a/c/l1/s$c;

    iget-boolean v6, v0, Le/m/a/c/l1/s;->J:Z

    check-cast v5, Le/m/a/c/l1/t;

    invoke-virtual {v5, v3, v4, v2, v6}, Le/m/a/c/l1/t;->i(JZZ)V

    .line 7
    :cond_1
    iget-object v2, v0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 8
    iget-object v4, v1, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    .line 9
    iget-object v3, v1, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 10
    iget-object v5, v3, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 11
    iget-object v6, v3, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    .line 12
    iget-wide v11, v1, Le/m/a/c/l1/s$a;->i:J

    .line 13
    iget-wide v9, v0, Le/m/a/c/l1/s;->D:J

    .line 14
    iget-wide v7, v3, Le/m/a/c/p1/d0;->b:J

    .line 15
    new-instance v15, Le/m/a/c/l1/q$b;

    move-object v3, v15

    move-wide/from16 v16, v7

    move-wide/from16 v7, p2

    move-object/from16 v18, v15

    move-wide v14, v9

    move-wide/from16 v9, p4

    move-wide/from16 p2, v14

    move-wide v13, v11

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Le/m/a/c/l1/q$b;-><init>(Le/m/a/c/p1/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Le/m/a/c/l1/q$c;

    .line 16
    invoke-virtual {v2, v13, v14}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v13

    move-wide/from16 v4, p2

    .line 17
    invoke-virtual {v2, v4, v5}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v15

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v7, v3

    const/4 v4, 0x0

    move v11, v4

    const/4 v4, 0x0

    move-object v12, v4

    move-object/from16 v4, v18

    invoke-direct/range {v7 .. v16}, Le/m/a/c/l1/q$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 18
    iget-object v5, v2, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/l1/q$a$a;

    .line 19
    iget-object v7, v6, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 20
    iget-object v6, v6, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v8, Le/m/a/c/l1/f;

    invoke-direct {v8, v2, v7, v4, v3}, Le/m/a/c/l1/f;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$b;Le/m/a/c/l1/q$c;)V

    invoke-virtual {v2, v6, v8}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 21
    :cond_2
    iget-wide v2, v0, Le/m/a/c/l1/s;->E:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 22
    iget-wide v1, v1, Le/m/a/c/l1/s$a;->k:J

    .line 23
    iput-wide v1, v0, Le/m/a/c/l1/s;->E:J

    :cond_3
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Le/m/a/c/l1/s;->O:Z

    .line 25
    iget-object v1, v0, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 26
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v1, v0}, Le/m/a/c/l1/x$a;->g(Le/m/a/c/l1/x;)V

    return-void
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    invoke-virtual {v0}, Le/m/a/c/p1/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/l1/s;->l:Le/m/a/c/q1/i;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Le/m/a/c/q1/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(JLe/m/a/c/x0;)J
    .locals 20

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    .line 1
    iget-object v4, v3, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v4, v4, Le/m/a/c/l1/s$d;->a:Le/m/a/c/g1/q;

    .line 4
    invoke-interface {v4}, Le/m/a/c/g1/q;->c()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    return-wide v6

    .line 5
    :cond_0
    invoke-interface {v4, v0, v1}, Le/m/a/c/g1/q;->b(J)Le/m/a/c/g1/q$a;

    move-result-object v4

    .line 6
    iget-object v5, v4, Le/m/a/c/g1/q$a;->a:Le/m/a/c/g1/r;

    iget-wide v8, v5, Le/m/a/c/g1/r;->a:J

    iget-object v4, v4, Le/m/a/c/g1/q$a;->b:Le/m/a/c/g1/r;

    iget-wide v4, v4, Le/m/a/c/g1/r;->a:J

    .line 7
    sget-object v10, Le/m/a/c/x0;->c:Le/m/a/c/x0;

    invoke-virtual {v10, v2}, Le/m/a/c/x0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v4, v0

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-wide v10, v2, Le/m/a/c/x0;->a:J

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
    iget-wide v10, v2, Le/m/a/c/x0;->b:J

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

.method public q(Le/m/a/c/l1/o$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/l1/s;->l:Le/m/a/c/q1/i;

    invoke-virtual {p1}, Le/m/a/c/q1/i;->a()Z

    .line 3
    invoke-virtual {p0}, Le/m/a/c/l1/s;->A()V

    return-void
.end method

.method public r(Le/m/a/c/p1/c0$e;JJLjava/io/IOException;I)Le/m/a/c/p1/c0$c;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/m/a/c/l1/s$a;

    .line 2
    iget-wide v2, v0, Le/m/a/c/l1/s;->E:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3
    iget-wide v2, v1, Le/m/a/c/l1/s$a;->k:J

    .line 4
    iput-wide v2, v0, Le/m/a/c/l1/s;->E:J

    .line 5
    :cond_0
    iget-object v2, v0, Le/m/a/c/l1/s;->d:Le/m/a/c/p1/b0;

    iget v7, v0, Le/m/a/c/l1/s;->y:I

    .line 6
    move-object v6, v2

    check-cast v6, Le/m/a/c/p1/u;

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Le/m/a/c/p1/u;->b(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_1

    .line 7
    sget-object v2, Le/m/a/c/p1/c0;->e:Le/m/a/c/p1/c0$c;

    goto :goto_5

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/l1/s;->t()I

    move-result v8

    .line 9
    iget v11, v0, Le/m/a/c/l1/s;->N:I

    if-le v8, v11, :cond_2

    move v11, v9

    goto :goto_0

    :cond_2
    move v11, v10

    .line 10
    :goto_0
    iget-wide v12, v0, Le/m/a/c/l1/s;->E:J

    cmp-long v4, v12, v4

    if-nez v4, :cond_6

    iget-object v4, v0, Le/m/a/c/l1/s;->q:Le/m/a/c/g1/q;

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4}, Le/m/a/c/g1/q;->g()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-boolean v4, v0, Le/m/a/c/l1/s;->v:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Le/m/a/c/l1/s;->B()Z

    move-result v4

    if-nez v4, :cond_4

    .line 13
    iput-boolean v9, v0, Le/m/a/c/l1/s;->M:Z

    move v4, v10

    goto :goto_4

    .line 14
    :cond_4
    iget-boolean v4, v0, Le/m/a/c/l1/s;->v:Z

    iput-boolean v4, v0, Le/m/a/c/l1/s;->A:Z

    const-wide/16 v4, 0x0

    .line 15
    iput-wide v4, v0, Le/m/a/c/l1/s;->K:J

    .line 16
    iput v10, v0, Le/m/a/c/l1/s;->N:I

    .line 17
    iget-object v6, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v7, v6

    move v8, v10

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v12, v6, v8

    .line 18
    invoke-virtual {v12, v10}, Le/m/a/c/l1/v;->p(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v6, v1, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    iput-wide v4, v6, Le/m/a/c/g1/p;->a:J

    .line 20
    iput-wide v4, v1, Le/m/a/c/l1/s$a;->i:J

    .line 21
    iput-boolean v9, v1, Le/m/a/c/l1/s$a;->h:Z

    .line 22
    iput-boolean v10, v1, Le/m/a/c/l1/s$a;->m:Z

    goto :goto_3

    .line 23
    :cond_6
    :goto_2
    iput v8, v0, Le/m/a/c/l1/s;->N:I

    :goto_3
    move v4, v9

    :goto_4
    if-eqz v4, :cond_7

    .line 24
    invoke-static {v11, v2, v3}, Le/m/a/c/p1/c0;->a(ZJ)Le/m/a/c/p1/c0$c;

    move-result-object v2

    goto :goto_5

    :cond_7
    sget-object v2, Le/m/a/c/p1/c0;->d:Le/m/a/c/p1/c0$c;

    .line 25
    :goto_5
    iget-object v3, v0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 26
    iget-object v12, v1, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    .line 27
    iget-object v4, v1, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 28
    iget-object v13, v4, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 29
    iget-object v14, v4, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    .line 30
    iget-wide v6, v1, Le/m/a/c/l1/s$a;->i:J

    move-wide/from16 v21, v6

    .line 31
    iget-wide v5, v0, Le/m/a/c/l1/s;->D:J

    .line 32
    iget-wide v7, v4, Le/m/a/c/p1/d0;->b:J

    .line 33
    iget v1, v2, Le/m/a/c/p1/c0$c;->a:I

    if-eqz v1, :cond_8

    if-ne v1, v9, :cond_9

    :cond_8
    move v10, v9

    :cond_9
    xor-int/lit8 v1, v10, 0x1

    .line 34
    new-instance v4, Le/m/a/c/l1/q$b;

    move-object v11, v4

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    move-wide/from16 v19, v7

    invoke-direct/range {v11 .. v20}, Le/m/a/c/l1/q$b;-><init>(Le/m/a/c/p1/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v7, Le/m/a/c/l1/q$c;

    move-wide/from16 v8, v21

    .line 35
    invoke-virtual {v3, v8, v9}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v21

    .line 36
    invoke-virtual {v3, v5, v6}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v23

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v7

    const/4 v5, 0x0

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v24}, Le/m/a/c/l1/q$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 37
    iget-object v5, v3, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/l1/q$a$a;

    .line 38
    iget-object v13, v6, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 39
    iget-object v6, v6, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v8, Le/m/a/c/l1/b;

    move-object v11, v8

    move-object v12, v3

    move-object v14, v4

    move-object v15, v7

    move-object/from16 v16, p6

    move/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Le/m/a/c/l1/b;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$b;Le/m/a/c/l1/q$c;Ljava/io/IOException;Z)V

    invoke-virtual {v3, v6, v8}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_a
    return-object v2
.end method

.method public s(Le/m/a/c/g1/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Le/m/a/c/g1/q$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v1, v2, v3}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 3
    :goto_0
    iput-object p1, p0, Le/m/a/c/l1/s;->q:Le/m/a/c/g1/q;

    .line 4
    iget-object p1, p0, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    iget-object v0, p0, Le/m/a/c/l1/s;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t()I
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget v5, v4, Le/m/a/c/l1/v;->p:I

    iget v4, v4, Le/m/a/c/l1/v;->o:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final u()J
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Le/m/a/c/l1/v;->h()J

    move-result-wide v5

    .line 3
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final v()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/l1/s;->L:J

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

.method public final w(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Le/m/a/c/l1/s$d;->e:[Z

    .line 4
    aget-boolean v2, v1, p1

    if-nez v2, :cond_1

    .line 5
    iget-object v0, v0, Le/m/a/c/l1/s$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v0, v2

    .line 8
    iget-object v0, p0, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    iget-object v2, v6, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Le/m/a/c/q1/q;->e(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v2, p0, Le/m/a/c/l1/s;->K:J

    .line 10
    new-instance v13, Le/m/a/c/l1/q$c;

    .line 11
    invoke-virtual {v0, v2, v3}, Le/m/a/c/l1/q$a;->a(J)J

    move-result-wide v9

    const/4 v4, 0x1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Le/m/a/c/l1/q$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 12
    iget-object v2, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/l1/q$a$a;

    .line 13
    iget-object v4, v3, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 14
    iget-object v3, v3, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v5, Le/m/a/c/l1/c;

    invoke-direct {v5, v0, v4, v13}, Le/m/a/c/l1/c;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$c;)V

    invoke-virtual {v0, v3, v5}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 15
    aput-boolean v0, v1, p1

    :cond_1
    return-void
.end method

.method public final x(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->w:Le/m/a/c/l1/s$d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Le/m/a/c/l1/s$d;->c:[Z

    .line 4
    iget-boolean v1, p0, Le/m/a/c/l1/s;->M:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Le/m/a/c/l1/v;->m(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Le/m/a/c/l1/s;->L:J

    .line 7
    iput-boolean v0, p0, Le/m/a/c/l1/s;->M:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/m/a/c/l1/s;->A:Z

    .line 9
    iput-wide v1, p0, Le/m/a/c/l1/s;->K:J

    .line 10
    iput v0, p0, Le/m/a/c/l1/s;->N:I

    .line 11
    iget-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 12
    invoke-virtual {v3, v0}, Le/m/a/c/l1/v;->p(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1, p0}, Le/m/a/c/l1/x$a;->g(Le/m/a/c/l1/x;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public y()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    iget-object v1, p0, Le/m/a/c/l1/s;->d:Le/m/a/c/p1/b0;

    iget v2, p0, Le/m/a/c/l1/s;->y:I

    check-cast v1, Le/m/a/c/p1/u;

    invoke-virtual {v1, v2}, Le/m/a/c/p1/u;->a(I)I

    move-result v1

    .line 2
    iget-object v2, v0, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    if-nez v2, :cond_3

    .line 3
    iget-object v0, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, v0, Le/m/a/c/p1/c0$d;->a:I

    .line 5
    :cond_0
    iget-object v2, v0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v0, v0, Le/m/a/c/p1/c0$d;->f:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    throw v2

    :cond_2
    :goto_0
    return-void

    .line 7
    :cond_3
    throw v2
.end method

.method public final z(Le/m/a/c/l1/s$f;)Le/m/a/c/g1/s;
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Le/m/a/c/l1/s;->t:[Le/m/a/c/l1/s$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Le/m/a/c/l1/s$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Le/m/a/c/l1/v;

    iget-object v2, p0, Le/m/a/c/l1/s;->g:Le/m/a/c/p1/d;

    iget-object v3, p0, Le/m/a/c/l1/s;->c:Le/m/a/c/f1/e;

    invoke-direct {v1, v2, v3}, Le/m/a/c/l1/v;-><init>(Le/m/a/c/p1/d;Le/m/a/c/f1/e;)V

    .line 5
    iput-object p0, v1, Le/m/a/c/l1/v;->d:Le/m/a/c/l1/v$b;

    .line 6
    iget-object v2, p0, Le/m/a/c/l1/s;->t:[Le/m/a/c/l1/s$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Le/m/a/c/l1/s$f;

    .line 7
    aput-object p1, v2, v0

    .line 8
    sget p1, Le/m/a/c/q1/d0;->a:I

    .line 9
    iput-object v2, p0, Le/m/a/c/l1/s;->t:[Le/m/a/c/l1/s$f;

    .line 10
    iget-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Le/m/a/c/l1/v;

    .line 11
    aput-object v1, p1, v0

    .line 12
    iput-object p1, p0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    return-object v1
.end method
