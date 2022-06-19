.class public final synthetic Le/m/d/b0/r/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/r/l;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/r/l;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/d;->a:Le/m/d/b0/r/l;

    iput-wide p2, p0, Le/m/d/b0/r/d;->b:J

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/m/d/b0/r/d;->a:Le/m/d/b0/r/l;

    iget-wide v1, p0, Le/m/d/b0/r/d;->b:J

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/util/Date;

    iget-object v4, v0, Le/m/d/b0/r/l;->d:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result p1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, v0, Le/m/d/b0/r/l;->h:Le/m/d/b0/r/n;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Ljava/util/Date;

    iget-object p1, p1, Le/m/d/b0/r/n;->a:Landroid/content/SharedPreferences;

    const-wide/16 v8, -0x1

    const-string v10, "last_fetch_time_in_millis"

    .line 7
    invoke-interface {p1, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 8
    sget-object p1, Le/m/d/b0/r/n;->d:Ljava/util/Date;

    invoke-virtual {v7, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/Date;

    .line 10
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 11
    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Le/m/d/b0/r/l$a;

    invoke-direct {p1, v3, v4, v5, v5}, Le/m/d/b0/r/l$a;-><init>(Ljava/util/Date;ILe/m/d/b0/r/k;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_1
    iget-object p1, v0, Le/m/d/b0/r/l;->h:Le/m/d/b0/r/n;

    invoke-virtual {p1}, Le/m/d/b0/r/n;->a()Le/m/d/b0/r/n$a;

    move-result-object p1

    .line 15
    iget-object p1, p1, Le/m/d/b0/r/n$a;->b:Ljava/util/Date;

    .line 16
    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v5, p1

    :cond_2
    const/4 p1, 0x1

    if-eqz v5, :cond_3

    .line 17
    new-instance v1, Le/m/d/b0/n;

    .line 18
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    const-string v2, "Fetch is throttled. Please wait before calling fetch again: %s"

    .line 21
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, p1, v4, v5}, Le/m/d/b0/n;-><init>(Ljava/lang/String;J)V

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_1

    .line 24
    :cond_3
    iget-object v1, v0, Le/m/d/b0/r/l;->a:Le/m/d/w/i;

    invoke-interface {v1}, Le/m/d/w/i;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 25
    iget-object v2, v0, Le/m/d/b0/r/l;->a:Le/m/d/w/i;

    .line 26
    invoke-interface {v2, v6}, Le/m/d/w/i;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-array v4, v4, [Lcom/google/android/gms/tasks/Task;

    aput-object v1, v4, v6

    aput-object v2, v4, p1

    .line 27
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->h([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v4, v0, Le/m/d/b0/r/l;->c:Ljava/util/concurrent/Executor;

    new-instance v5, Le/m/d/b0/r/c;

    invoke-direct {v5, v0, v1, v2, v3}, Le/m/d/b0/r/c;-><init>(Le/m/d/b0/r/l;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V

    .line 28
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 29
    :goto_1
    iget-object v1, v0, Le/m/d/b0/r/l;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/d/b0/r/e;

    invoke-direct {v2, v0, v3}, Le/m/d/b0/r/e;-><init>(Le/m/d/b0/r/l;Ljava/util/Date;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_2
    return-object p1
.end method
