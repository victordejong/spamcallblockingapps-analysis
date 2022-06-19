.class public Lp3/a/n1/i2$q;
.super Lp3/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/i2$x;

.field public b:J

.field public final synthetic c:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    invoke-direct {p0}, Lp3/a/j;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/a/n1/i2$q;->a:Lp3/a/n1/i2$x;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 3
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    .line 5
    iget-object v1, v1, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    .line 8
    iget-object v2, v2, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 9
    iget-object v2, v2, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-nez v2, :cond_7

    iget-object v2, p0, Lp3/a/n1/i2$q;->a:Lp3/a/n1/i2$x;

    iget-boolean v3, v2, Lp3/a/n1/i2$x;->b:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-wide v3, p0, Lp3/a/n1/i2$q;->b:J

    add-long/2addr v3, p1

    iput-wide v3, p0, Lp3/a/n1/i2$q;->b:J

    .line 11
    iget-object p1, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    .line 12
    iget-wide v5, p1, Lp3/a/n1/i2;->p:J

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_2
    iget-wide v7, p1, Lp3/a/n1/i2;->j:J

    cmp-long p2, v3, v7

    const/4 v7, 0x1

    if-lez p2, :cond_3

    .line 15
    iput-boolean v7, v2, Lp3/a/n1/i2$x;->c:Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p1, Lp3/a/n1/i2;->i:Lp3/a/n1/i2$r;

    sub-long/2addr v3, v5

    .line 17
    iget-object p1, p1, Lp3/a/n1/i2$r;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    .line 18
    iget-object v2, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    iget-wide v3, p0, Lp3/a/n1/i2$q;->b:J

    .line 19
    iput-wide v3, v2, Lp3/a/n1/i2;->p:J

    .line 20
    iget-wide v2, v2, Lp3/a/n1/i2;->k:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_4

    .line 21
    iget-object p1, p0, Lp3/a/n1/i2$q;->a:Lp3/a/n1/i2$x;

    iput-boolean v7, p1, Lp3/a/n1/i2$x;->c:Z

    .line 22
    :cond_4
    :goto_0
    iget-object p1, p0, Lp3/a/n1/i2$q;->a:Lp3/a/n1/i2$x;

    iget-boolean p2, p1, Lp3/a/n1/i2$x;->c:Z

    if-eqz p2, :cond_5

    .line 23
    iget-object p2, p0, Lp3/a/n1/i2$q;->c:Lp3/a/n1/i2;

    .line 24
    invoke-virtual {p2, p1}, Lp3/a/n1/i2;->q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;

    move-result-object v0

    .line 25
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 26
    check-cast v0, Lp3/a/n1/i2$c;

    invoke-virtual {v0}, Lp3/a/n1/i2$c;->run()V

    :cond_6
    return-void

    .line 27
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
