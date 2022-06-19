.class public Le/f/a/o/e$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/o/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/f/a/o/e;


# direct methods
.method public constructor <init>(Le/f/a/o/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/o/e$a;->a:Le/f/a/o/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object p2, p0, Le/f/a/o/e$a;->a:Le/f/a/o/e;

    iget-boolean v0, p2, Le/f/a/o/e;->c:Z

    .line 2
    invoke-virtual {p2, p1}, Le/f/a/o/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Le/f/a/o/e;->c:Z

    .line 3
    iget-object p1, p0, Le/f/a/o/e$a;->a:Le/f/a/o/e;

    iget-boolean p1, p1, Le/f/a/o/e;->c:Z

    if-eq v0, p1, :cond_4

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Le/f/a/o/e$a;->a:Le/f/a/o/e;

    iget-boolean p1, p1, Le/f/a/o/e;->c:Z

    .line 6
    :cond_0
    iget-object p1, p0, Le/f/a/o/e$a;->a:Le/f/a/o/e;

    iget-object p2, p1, Le/f/a/o/e;->b:Le/f/a/o/c$a;

    iget-boolean p1, p1, Le/f/a/o/e;->c:Z

    check-cast p2, Le/f/a/i$c;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p2, Le/f/a/i$c;->b:Le/f/a/i;

    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p2, p2, Le/f/a/i$c;->a:Le/f/a/o/n;

    .line 10
    iget-object v0, p2, Le/f/a/o/n;->a:Ljava/util/Set;

    invoke-static {v0}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/r/d;

    .line 11
    invoke-interface {v1}, Le/f/a/r/d;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Le/f/a/r/d;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-interface {v1}, Le/f/a/r/d;->clear()V

    .line 13
    iget-boolean v2, p2, Le/f/a/o/n;->c:Z

    if-nez v2, :cond_2

    .line 14
    invoke-interface {v1}, Le/f/a/r/d;->h()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p2, Le/f/a/o/n;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    :goto_1
    return-void
.end method
