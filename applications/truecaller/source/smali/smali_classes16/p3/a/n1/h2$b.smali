.class public final Lp3/a/n1/h2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/h2;


# direct methods
.method public constructor <init>(Lp3/a/n1/h2;Lp3/a/n1/h2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/h2$b;->a:Lp3/a/n1/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp3/a/n1/h2$b;->a:Lp3/a/n1/h2;

    .line 2
    iget-boolean v1, v0, Lp3/a/n1/h2;->f:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-object v2, v0, Lp3/a/n1/h2;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lp3/a/n1/h2;->d:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Lp3/a/n1/h2$b;->a:Lp3/a/n1/h2;

    .line 6
    iget-wide v5, v0, Lp3/a/n1/h2;->e:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    .line 7
    iget-object v3, v0, Lp3/a/n1/h2;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v4, Lp3/a/n1/h2$c;

    invoke-direct {v4, v0, v2}, Lp3/a/n1/h2$c;-><init>(Lp3/a/n1/h2;Lp3/a/n1/h2$a;)V

    invoke-interface {v3, v4, v5, v6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lp3/a/n1/h2;->g:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lp3/a/n1/h2;->f:Z

    .line 11
    iput-object v2, v0, Lp3/a/n1/h2;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    iget-object v0, v0, Lp3/a/n1/h2;->c:Ljava/lang/Runnable;

    .line 13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
