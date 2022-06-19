.class public Le/i/b/i2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/i2/g;

.field public final b:Le/i/b/u2/r;

.field public final c:Le/i/b/e2;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Le/i/b/u2/x;


# direct methods
.method public constructor <init>(Le/i/b/i2/g;Le/i/b/u2/r;Le/i/b/e2;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Le/i/b/u2/x;)V
    .locals 1

    const-string v0, "pubSdkApi"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdbRequestFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduledExecutorService"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/i2/f;->a:Le/i/b/i2/g;

    iput-object p2, p0, Le/i/b/i2/f;->b:Le/i/b/u2/r;

    iput-object p3, p0, Le/i/b/i2/f;->c:Le/i/b/e2;

    iput-object p4, p0, Le/i/b/i2/f;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Le/i/b/i2/f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Le/i/b/i2/f;->f:Le/i/b/u2/x;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/u2/p;Lcom/criteo/publisher/context/ContextData;Le/i/b/b3;)V
    .locals 9

    const-string v0, "cacheAdUnit"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextData"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveCdbCallListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/i2/f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Le/i/b/i2/f$a;

    invoke-direct {v1, p3}, Le/i/b/i2/f$a;-><init>(Le/i/b/b3;)V

    .line 2
    iget-object v2, p0, Le/i/b/i2/f;->f:Le/i/b/u2/x;

    .line 3
    iget-object v2, v2, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 4
    invoke-virtual {v2}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f40

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 9
    iget-object v0, p0, Le/i/b/i2/f;->d:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v8, Le/i/b/i2/d;

    .line 11
    iget-object v2, p0, Le/i/b/i2/f;->a:Le/i/b/i2/g;

    .line 12
    iget-object v3, p0, Le/i/b/i2/f;->b:Le/i/b/u2/r;

    .line 13
    iget-object v4, p0, Le/i/b/i2/f;->c:Le/i/b/e2;

    .line 14
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v8

    move-object v6, p2

    move-object v7, p3

    .line 15
    invoke-direct/range {v1 .. v7}, Le/i/b/i2/d;-><init>(Le/i/b/i2/g;Le/i/b/u2/r;Le/i/b/e2;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Le/i/b/c2;)V

    .line 16
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
