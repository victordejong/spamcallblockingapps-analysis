.class public Le/f/a/n/o/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Le/f/a/r/i;

.field public final synthetic b:Le/f/a/n/o/m;


# direct methods
.method public constructor <init>(Le/f/a/n/o/m;Le/f/a/r/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/n/o/m$a;->b:Le/f/a/n/o/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/n/o/m$a;->a:Le/f/a/r/i;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/f/a/n/o/m$a;->a:Le/f/a/r/i;

    check-cast v0, Le/f/a/r/j;

    .line 2
    iget-object v1, v0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v1}, Le/f/a/t/k/d;->a()V

    .line 3
    iget-object v0, v0, Le/f/a/r/j;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Le/f/a/n/o/m$a;->b:Le/f/a/n/o/m;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Le/f/a/n/o/m$a;->b:Le/f/a/n/o/m;

    iget-object v2, v2, Le/f/a/n/o/m;->a:Le/f/a/n/o/m$e;

    iget-object v3, p0, Le/f/a/n/o/m$a;->a:Le/f/a/r/i;

    .line 7
    iget-object v2, v2, Le/f/a/n/o/m$e;->a:Ljava/util/List;

    .line 8
    new-instance v4, Le/f/a/n/o/m$d;

    .line 9
    sget-object v5, Le/f/a/t/e;->b:Ljava/util/concurrent/Executor;

    .line 10
    invoke-direct {v4, v3, v5}, Le/f/a/n/o/m$d;-><init>(Le/f/a/r/i;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Le/f/a/n/o/m$a;->b:Le/f/a/n/o/m;

    iget-object v3, p0, Le/f/a/n/o/m$a;->a:Le/f/a/r/i;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object v2, v2, Le/f/a/n/o/m;->t:Le/f/a/n/o/r;

    check-cast v3, Le/f/a/r/j;

    const/4 v4, 0x5

    .line 15
    invoke-virtual {v3, v2, v4}, Le/f/a/r/j;->k(Le/f/a/n/o/r;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 16
    :try_start_3
    new-instance v3, Le/f/a/n/o/c;

    invoke-direct {v3, v2}, Le/f/a/n/o/c;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 17
    :cond_0
    :goto_0
    iget-object v2, p0, Le/f/a/n/o/m$a;->b:Le/f/a/n/o/m;

    invoke-virtual {v2}, Le/f/a/n/o/m;->c()V

    .line 18
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 20
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
