.class public Le/m/d/t/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/t/f;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/t/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Le/m/d/t/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Le/m/d/m/c0;

    new-instance v0, Le/m/d/t/b;

    invoke-direct {v0, p1}, Le/m/d/t/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Le/m/d/m/c0;-><init>(Le/m/d/v/b;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Le/m/d/t/a;->a:Le/m/d/t/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Le/m/d/t/d;->a:Le/m/d/v/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/m/d/t/f$a;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/m/d/t/d;->a:Le/m/d/v/b;

    .line 3
    invoke-interface {v2}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/t/g;

    invoke-virtual {v2, p1, v0, v1}, Le/m/d/t/g;->a(Ljava/lang/String;J)Z

    move-result p1

    .line 4
    iget-object v2, p0, Le/m/d/t/d;->a:Le/m/d/v/b;

    invoke-interface {v2}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/t/g;

    .line 5
    monitor-enter v2

    :try_start_0
    const-string v3, "fire-global"

    .line 6
    invoke-virtual {v2, v3, v0, v1}, Le/m/d/t/g;->a(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Le/m/d/t/f$a;->e:Le/m/d/t/f$a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    sget-object p1, Le/m/d/t/f$a;->d:Le/m/d/t/f$a;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Le/m/d/t/f$a;->c:Le/m/d/t/f$a;

    return-object p1

    .line 10
    :cond_2
    sget-object p1, Le/m/d/t/f$a;->b:Le/m/d/t/f$a;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1
.end method
