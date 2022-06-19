.class public final Ln3/m0/u$a;
.super Ln3/m0/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/m0/z$a<",
        "Ln3/m0/u$a;",
        "Ln3/m0/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln3/m0/z$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v0, 0xdbba0

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    .line 4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object p3, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p4, v3

    const-string v2, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 6
    invoke-static {v2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p4, v2}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p2, v0

    .line 7
    :cond_0
    invoke-virtual {p1, p2, p3, p2, p3}, Ln3/m0/c0/s/p;->d(JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Ln3/m0/z$a;-><init>(Ljava/lang/Class;)V

    .line 9
    iget-object p1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    .line 10
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 11
    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    .line 12
    invoke-virtual {p1, p2, p3, p4, p5}, Ln3/m0/c0/s/p;->d(JJ)V

    return-void
.end method


# virtual methods
.method public c()Ln3/m0/z;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/m0/z$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-object v0, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 2
    iget-boolean v0, v0, Ln3/m0/d;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-boolean v0, v0, Ln3/m0/c0/s/p;->q:Z

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ln3/m0/u;

    invoke-direct {v0, p0}, Ln3/m0/u;-><init>(Ln3/m0/u$a;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ln3/m0/z$a;
    .locals 0

    return-object p0
.end method
