.class public Ln3/m0/c0/p/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/b;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/m0/c0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/p/b/b;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/p/b/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_DELAY_MET"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m0/c0/p/b/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/p/b/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2}, Ln3/m0/c0/b;->b(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroid/content/Intent;ILn3/m0/c0/p/b/e;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 3
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "Handling constraints changed %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ln3/m0/c0/p/b/c;

    iget-object v0, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p3}, Ln3/m0/c0/p/b/c;-><init>(Landroid/content/Context;ILn3/m0/c0/p/b/e;)V

    .line 5
    iget-object p2, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 6
    iget-object p2, p2, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object p2

    .line 8
    check-cast p2, Ln3/m0/c0/s/t;

    invoke-virtual {p2}, Ln3/m0/c0/s/t;->g()Ljava/util/List;

    move-result-object p2

    .line 9
    iget-object p3, p1, Ln3/m0/c0/p/b/c;->a:Landroid/content/Context;

    .line 10
    sget-object v0, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a:Ljava/lang/String;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/m0/c0/s/p;

    .line 12
    iget-object v8, v8, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 13
    iget-boolean v9, v8, Ln3/m0/d;->d:Z

    or-int/2addr v4, v9

    .line 14
    iget-boolean v9, v8, Ln3/m0/d;->b:Z

    or-int/2addr v5, v9

    .line 15
    iget-boolean v9, v8, Ln3/m0/d;->e:Z

    or-int/2addr v6, v9

    .line 16
    iget-object v8, v8, Ln3/m0/d;->a:Ln3/m0/q;

    .line 17
    sget-object v9, Ln3/m0/q;->a:Ln3/m0/q;

    if-eq v8, v9, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    or-int/2addr v7, v8

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 18
    :cond_2
    sget-object v1, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-string v8, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v8, p3, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 22
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 23
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 25
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-virtual {p3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    iget-object p3, p1, Ln3/m0/c0/p/b/c;->d:Ln3/m0/c0/q/d;

    invoke-virtual {p3, p2}, Ln3/m0/c0/q/d;->b(Ljava/lang/Iterable;)V

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/p;

    .line 31
    iget-object v1, v0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ln3/m0/c0/s/p;->a()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 33
    invoke-virtual {v0}, Ln3/m0/c0/s/p;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Ln3/m0/c0/p/b/c;->d:Ln3/m0/c0/q/d;

    .line 34
    invoke-virtual {v6, v1}, Ln3/m0/c0/q/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/m0/c0/s/p;

    .line 37
    iget-object p3, p3, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Ln3/m0/c0/p/b/c;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Ln3/m0/c0/p/b/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v4, Ln3/m0/c0/p/b/c;->e:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v2

    const-string p3, "Creating a delay_met command for workSpec with id (%s)"

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, p3, v5}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 40
    iget-object p3, p1, Ln3/m0/c0/p/b/c;->c:Ln3/m0/c0/p/b/e;

    new-instance v1, Ln3/m0/c0/p/b/e$b;

    iget v4, p1, Ln3/m0/c0/p/b/c;->b:I

    invoke-direct {v1, p3, v0, v4}, Ln3/m0/c0/p/b/e$b;-><init>(Ln3/m0/c0/p/b/e;Landroid/content/Intent;I)V

    .line 41
    iget-object p3, p3, Ln3/m0/c0/p/b/e;->g:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 42
    :cond_6
    iget-object p1, p1, Ln3/m0/c0/p/b/c;->d:Ln3/m0/c0/q/d;

    invoke-virtual {p1}, Ln3/m0/c0/q/d;->c()V

    goto/16 :goto_9

    :cond_7
    const-string v1, "ACTION_RESCHEDULE"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_8

    .line 44
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Handling reschedule %s, %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 45
    iget-object p1, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 46
    invoke-virtual {p1}, Ln3/m0/c0/l;->q()V

    goto/16 :goto_9

    .line 47
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "KEY_WORKSPEC_ID"

    .line 48
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_c

    .line 49
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move v6, v2

    :goto_3
    if-ge v6, v3, :cond_b

    .line 50
    aget-object v7, v5, v6

    .line 51
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    move v1, v3

    goto :goto_5

    :cond_c
    :goto_4
    move v1, v2

    :goto_5
    if-nez v1, :cond_d

    .line 52
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object p2, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    const-string p3, "Invalid request for %s, requires %s."

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "KEY_WORKSPEC_ID"

    aput-object v0, v1, v3

    .line 53
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Throwable;

    .line 54
    invoke-virtual {p1, p2, p3, v0}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_d
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const-string v6, "Handling schedule work for %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v5, v6}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 59
    iget-object v0, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 60
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 61
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 62
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    check-cast v5, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v5, p1}, Ln3/m0/c0/s/t;->k(Ljava/lang/String;)Ln3/m0/c0/s/p;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_e

    .line 64
    :try_start_2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s no longer in the DB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p1, p3}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_6
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    goto/16 :goto_9

    .line 66
    :cond_e
    :try_start_3
    iget-object v7, v5, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    invoke-virtual {v7}, Ln3/m0/x$a;->a()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 67
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "because it is finished."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p1, p3}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    .line 68
    :cond_f
    invoke-virtual {v5}, Ln3/m0/c0/s/p;->a()J

    move-result-wide v6

    .line 69
    invoke-virtual {v5}, Ln3/m0/c0/s/p;->b()Z

    move-result v5

    if-nez v5, :cond_10

    .line 70
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    const-string v5, "Setting up Alarms for %s at %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 72
    invoke-virtual {p2, v1, v3, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    iget-object p2, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    .line 74
    iget-object p3, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 75
    invoke-static {p2, p3, p1, v6, v7}, Ln3/m0/c0/p/b/a;->b(Landroid/content/Context;Ln3/m0/c0/l;Ljava/lang/String;J)V

    goto :goto_7

    .line 76
    :cond_10
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v5

    const-string v8, "Opportunistically setting an alarm for %s at %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v3

    .line 78
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 79
    invoke-virtual {v5, v1, v3, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 80
    iget-object v1, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    .line 81
    iget-object v2, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 82
    invoke-static {v1, v2, p1, v6, v7}, Ln3/m0/c0/p/b/a;->b(Landroid/content/Context;Ln3/m0/c0/l;Ljava/lang/String;J)V

    .line 83
    iget-object p1, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    invoke-static {p1}, Ln3/m0/c0/p/b/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 84
    new-instance v1, Ln3/m0/c0/p/b/e$b;

    invoke-direct {v1, p3, p1, p2}, Ln3/m0/c0/p/b/e$b;-><init>(Ln3/m0/c0/p/b/e;Landroid/content/Intent;I)V

    .line 85
    iget-object p1, p3, Ln3/m0/c0/p/b/e;->g:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :goto_7
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    .line 87
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 88
    throw p1

    :cond_11
    const-string v1, "ACTION_DELAY_MET"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 91
    iget-object v1, p0, Ln3/m0/c0/p/b/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    const-string v0, "KEY_WORKSPEC_ID"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v4, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    const-string v5, "Handing delay met for %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v6}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Ln3/m0/c0/p/b/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 95
    new-instance v0, Ln3/m0/c0/p/b/d;

    iget-object v2, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p1, p3}, Ln3/m0/c0/p/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ln3/m0/c0/p/b/e;)V

    .line 96
    iget-object p2, p0, Ln3/m0/c0/p/b/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v0}, Ln3/m0/c0/p/b/d;->e()V

    goto :goto_8

    .line 98
    :cond_12
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    const-string p3, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 99
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Throwable;

    .line 100
    invoke-virtual {p2, v4, p1, p3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 101
    :goto_8
    monitor-exit v1

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_13
    const-string v1, "ACTION_STOP_WORK"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_WORKSPEC_ID"

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object v0, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "Handing stopWork work for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 106
    iget-object p2, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 107
    invoke-virtual {p2, p1}, Ln3/m0/c0/l;->r(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Ln3/m0/c0/p/b/b;->a:Landroid/content/Context;

    .line 109
    iget-object v0, p3, Ln3/m0/c0/p/b/e;->e:Ln3/m0/c0/l;

    .line 110
    sget-object v1, Ln3/m0/c0/p/b/a;->a:Ljava/lang/String;

    .line 111
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 112
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v0

    .line 113
    check-cast v0, Ln3/m0/c0/s/i;

    invoke-virtual {v0, p1}, Ln3/m0/c0/s/i;->a(Ljava/lang/String;)Ln3/m0/c0/s/g;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 114
    iget v1, v1, Ln3/m0/c0/s/g;->b:I

    invoke-static {p2, p1, v1}, Ln3/m0/c0/p/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object v1, Ln3/m0/c0/p/b/a;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v4, "Removing SystemIdInfo for workSpecId (%s)"

    .line 116
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 117
    invoke-virtual {p2, v1, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {v0, p1}, Ln3/m0/c0/s/i;->c(Ljava/lang/String;)V

    .line 119
    :cond_14
    invoke-virtual {p3, p1, v2}, Ln3/m0/c0/p/b/e;->b(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_15
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_WORKSPEC_ID"

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 124
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v5, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Handling onExecutionCompleted %s, %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Throwable;

    .line 126
    invoke-virtual {v1, v5, p1, p2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {p0, v0, p3}, Ln3/m0/c0/p/b/b;->b(Ljava/lang/String;Z)V

    goto :goto_9

    .line 128
    :cond_16
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object p3, Ln3/m0/c0/p/b/b;->d:Ljava/lang/String;

    const-string v0, "Ignoring intent %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p1, v0}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method
