.class public Ln3/m0/c0/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/q/c;
.implements Ln3/m0/c0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/r/c$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ln3/m0/c0/l;

.field public final c:Ln3/m0/c0/t/x/a;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/m0/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/m0/c0/s/p;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/m0/c0/s/p;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ln3/m0/c0/q/d;

.field public j:Ln3/m0/c0/r/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/r/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/r/c;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/r/c;->d:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Ln3/m0/c0/r/c;->a:Landroid/content/Context;

    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/r/c;->b:Ln3/m0/c0/l;

    .line 5
    iget-object p1, p1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    .line 6
    iput-object p1, p0, Ln3/m0/c0/r/c;->c:Ln3/m0/c0/t/x/a;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/r/c;->h:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/r/c;->g:Ljava/util/Map;

    .line 11
    new-instance v0, Ln3/m0/c0/q/d;

    iget-object v1, p0, Ln3/m0/c0/r/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Ln3/m0/c0/q/d;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;Ln3/m0/c0/q/c;)V

    iput-object v0, p0, Ln3/m0/c0/r/c;->i:Ln3/m0/c0/q/d;

    .line 12
    iget-object p1, p0, Ln3/m0/c0/r/c;->b:Ln3/m0/c0/l;

    .line 13
    iget-object p1, p1, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 14
    invoke-virtual {p1, p0}, Ln3/m0/c0/d;->a(Ln3/m0/c0/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ln3/m0/i;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget p0, p2, Ln3/m0/i;->a:I

    const-string v1, "KEY_NOTIFICATION_ID"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget p0, p2, Ln3/m0/i;->b:I

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p0, p2, Ln3/m0/i;->c:Landroid/app/Notification;

    const-string p2, "KEY_NOTIFICATION"

    .line 8
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 9
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ln3/m0/i;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget v1, p2, Ln3/m0/i;->a:I

    const-string v2, "KEY_NOTIFICATION_ID"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget v1, p2, Ln3/m0/i;->b:I

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object p2, p2, Ln3/m0/i;->c:Landroid/app/Notification;

    const-string v1, "KEY_NOTIFICATION"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object p2, p0, Ln3/m0/c0/r/c;->d:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/r/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/m0/c0/r/c;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/m0/c0/r/c;->i:Ln3/m0/c0/q/d;

    iget-object v2, p0, Ln3/m0/c0/r/c;->h:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ln3/m0/c0/q/d;->b(Ljava/lang/Iterable;)V

    .line 5
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/m0/i;

    .line 7
    iget-object v0, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    iget-object v0, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/i;

    .line 17
    iget-object v2, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    .line 18
    iget v3, v0, Ln3/m0/i;->a:I

    .line 19
    iget v4, v0, Ln3/m0/i;->b:I

    .line 20
    iget-object v5, v0, Ln3/m0/i;->c:Landroid/app/Notification;

    .line 21
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/impl/foreground/SystemForegroundService;->j(IILandroid/app/Notification;)V

    .line 22
    iget-object v2, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    .line 23
    iget v0, v0, Ln3/m0/i;->a:I

    .line 24
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 25
    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance v4, Ln3/m0/c0/r/e;

    invoke-direct {v4, v2, v0}, Ln3/m0/c0/r/e;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_3
    iget-object v0, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Ln3/m0/c0/r/c;->k:Ljava/lang/String;

    const-string v4, "Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    iget v6, p2, Ln3/m0/i;->a:I

    .line 29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    .line 30
    iget v6, p2, Ln3/m0/i;->b:I

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    .line 32
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 33
    invoke-virtual {v2, v3, p1, v1}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    iget p1, p2, Ln3/m0/i;->a:I

    .line 35
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 36
    iget-object p2, v0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance v1, Ln3/m0/c0/r/e;

    invoke-direct {v1, v0, p1}, Ln3/m0/c0/r/e;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/r/c;->k:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "Constraints unmet for WorkSpec %s"

    .line 4
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 5
    invoke-virtual {v1, v2, v4, v5}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v1, p0, Ln3/m0/c0/r/c;->b:Ln3/m0/c0/l;

    .line 7
    iget-object v2, v1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    new-instance v4, Ln3/m0/c0/t/p;

    invoke-direct {v4, v1, v0, v3}, Ln3/m0/c0/t/p;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Z)V

    check-cast v2, Ln3/m0/c0/t/x/b;

    .line 8
    iget-object v0, v2, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {v0, v4}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_NOTIFICATION"

    .line 4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 5
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v4

    sget-object v5, Ln3/m0/c0/r/c;->k:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    .line 7
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    .line 9
    iget-object v4, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    if-eqz v4, :cond_2

    .line 10
    new-instance v4, Ln3/m0/i;

    invoke-direct {v4, v0, p1, v2}, Ln3/m0/i;-><init>(ILandroid/app/Notification;I)V

    .line 11
    iget-object v5, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iput-object v3, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-virtual {v1, v0, v2, p1}, Landroidx/work/impl/foreground/SystemForegroundService;->j(IILandroid/app/Notification;)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object v3, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    check-cast v3, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 16
    iget-object v4, v3, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance v5, Ln3/m0/c0/r/d;

    invoke-direct {v5, v3, v0, p1}, Ln3/m0/c0/r/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_2

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    .line 18
    iget-object p1, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/i;

    .line 20
    iget v0, v0, Ln3/m0/i;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Ln3/m0/c0/r/c;->f:Ljava/util/Map;

    iget-object v0, p0, Ln3/m0/c0/r/c;->e:Ljava/lang/String;

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/m0/i;

    if-eqz p1, :cond_2

    .line 23
    iget-object v0, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    .line 24
    iget v2, p1, Ln3/m0/i;->a:I

    .line 25
    iget-object p1, p1, Ln3/m0/i;->c:Landroid/app/Notification;

    .line 26
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-virtual {v0, v2, v1, p1}, Landroidx/work/impl/foreground/SystemForegroundService;->j(IILandroid/app/Notification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/m0/c0/r/c;->j:Ln3/m0/c0/r/c$a;

    .line 2
    iget-object v0, p0, Ln3/m0/c0/r/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/r/c;->i:Ln3/m0/c0/q/d;

    invoke-virtual {v1}, Ln3/m0/c0/q/d;->c()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Ln3/m0/c0/r/c;->b:Ln3/m0/c0/l;

    .line 6
    iget-object v0, v0, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 7
    invoke-virtual {v0, p0}, Ln3/m0/c0/d;->e(Ln3/m0/c0/b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
