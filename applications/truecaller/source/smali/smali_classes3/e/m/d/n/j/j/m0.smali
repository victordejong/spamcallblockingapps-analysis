.class public Le/m/d/n/j/j/m0;
.super Le/m/d/n/j/j/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/ExecutorService;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/m0;->a:Ljava/lang/String;

    iput-object p2, p0, Le/m/d/n/j/j/m0;->b:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Le/m/d/n/j/j/m0;->c:J

    iput-object p5, p0, Le/m/d/n/j/j/m0;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Le/m/d/n/j/j/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x3

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 3
    iget-object v2, p0, Le/m/d/n/j/j/m0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    iget-object v2, p0, Le/m/d/n/j/j/m0;->b:Ljava/util/concurrent/ExecutorService;

    iget-wide v3, p0, Le/m/d/n/j/j/m0;->c:J

    iget-object v5, p0, Le/m/d/n/j/j/m0;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 6
    iget-object v2, p0, Le/m/d/n/j/j/m0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Le/m/d/n/j/j/m0;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    .line 8
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 10
    iget-object v0, p0, Le/m/d/n/j/j/m0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    return-void
.end method
