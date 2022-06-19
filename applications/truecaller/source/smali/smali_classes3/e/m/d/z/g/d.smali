.class public Le/m/d/z/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Le/m/d/z/i/a;

.field public static volatile e:Le/m/d/z/g/d;


# instance fields
.field public final a:Lcom/google/firebase/perf/config/RemoteConfigManager;

.field public b:Le/m/d/z/n/d;

.field public c:Le/m/d/z/g/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/g/d;->d:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Le/m/d/z/n/d;Le/m/d/z/g/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object p1

    iput-object p1, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 3
    new-instance p1, Le/m/d/z/n/d;

    invoke-direct {p1}, Le/m/d/z/n/d;-><init>()V

    iput-object p1, p0, Le/m/d/z/g/d;->b:Le/m/d/z/n/d;

    .line 4
    sget-object p1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    const-class p1, Le/m/d/z/g/x;

    monitor-enter p1

    .line 5
    :try_start_0
    sget-object p2, Le/m/d/z/g/x;->d:Le/m/d/z/g/x;

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Le/m/d/z/g/x;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    invoke-direct {p2, p3}, Le/m/d/z/g/x;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object p2, Le/m/d/z/g/x;->d:Le/m/d/z/g/x;

    .line 7
    :cond_0
    sget-object p2, Le/m/d/z/g/x;->d:Le/m/d/z/g/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 8
    iput-object p2, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    return-void

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1

    throw p2
.end method

.method public static declared-synchronized e()Le/m/d/z/g/d;
    .locals 3

    const-class v0, Le/m/d/z/g/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/m/d/z/g/d;->e:Le/m/d/z/g/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/m/d/z/g/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Le/m/d/z/g/d;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Le/m/d/z/n/d;Le/m/d/z/g/x;)V

    sput-object v1, Le/m/d/z/g/d;->e:Le/m/d/z/g/d;

    .line 3
    :cond_0
    sget-object v1, Le/m/d/z/g/d;->e:Le/m/d/z/g/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p1}, Le/m/d/z/g/w;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    .line 4
    iget-boolean v0, p1, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 10
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 11
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v0, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 15
    new-instance v2, Le/m/d/z/n/e;

    invoke-direct {v2, v0}, Le/m/d/z/n/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v2, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 18
    iget-boolean p1, v2, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, v2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Key %s from sharedPreferences has type other than long: %s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final b(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Float;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p1}, Le/m/d/z/g/w;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    .line 4
    iget-boolean v0, p1, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 10
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 11
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 14
    :cond_3
    :try_start_0
    iget-object v0, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 15
    new-instance v1, Le/m/d/z/n/e;

    invoke-direct {v1, v0}, Le/m/d/z/n/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 18
    iget-boolean p1, v1, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Key %s from sharedPreferences has type other than float: %s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final c(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p1}, Le/m/d/z/g/w;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    .line 4
    iget-boolean v0, p1, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 10
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 11
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 14
    :cond_3
    :try_start_0
    iget-object v0, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 15
    new-instance v1, Le/m/d/z/n/e;

    invoke-direct {v1, v0}, Le/m/d/z/n/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 18
    iget-boolean p1, v1, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Key %s from sharedPreferences has type other than long: %s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final d(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/String;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p1}, Le/m/d/z/g/w;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    .line 4
    iget-boolean v0, p1, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 10
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 11
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 14
    :cond_3
    :try_start_0
    iget-object v0, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Le/m/d/z/n/e;

    invoke-direct {v1, v0}, Le/m/d/z/n/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 18
    iget-boolean p1, v1, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Key %s from sharedPreferences has type other than String: %s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    :goto_0
    return-object p1
.end method

.method public f()Ljava/lang/Boolean;
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v1, Le/m/d/z/g/e;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Le/m/d/z/g/e;->a:Le/m/d/z/g/e;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Le/m/d/z/g/e;

    invoke-direct {v2}, Le/m/d/z/g/e;-><init>()V

    sput-object v2, Le/m/d/z/g/e;->a:Le/m/d/z/g/e;

    .line 4
    :cond_0
    sget-object v2, Le/m/d/z/g/e;->a:Le/m/d/z/g/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 5
    invoke-virtual {p0, v2}, Le/m/d/z/g/d;->g(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Le/m/d/z/n/e;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 10
    :cond_2
    const-class v0, Le/m/d/z/g/f;

    monitor-enter v0

    .line 11
    :try_start_1
    sget-object v1, Le/m/d/z/g/f;->a:Le/m/d/z/g/f;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Le/m/d/z/g/f;

    invoke-direct {v1}, Le/m/d/z/g/f;-><init>()V

    sput-object v1, Le/m/d/z/g/f;->a:Le/m/d/z/g/f;

    .line 13
    :cond_3
    sget-object v1, Le/m/d/z/g/f;->a:Le/m/d/z/g/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 14
    invoke-virtual {p0, v1}, Le/m/d/z/g/d;->a(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 17
    :cond_4
    invoke-virtual {p0, v1}, Le/m/d/z/g/d;->g(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 21
    monitor-exit v1

    throw v0
.end method

.method public final g(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->b:Le/m/d/z/n/d;

    invoke-virtual {p1}, Le/m/d/z/g/w;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Le/m/d/z/n/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v0, Le/m/d/z/n/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Le/m/d/z/n/e;->a(Ljava/lang/Object;)Le/m/d/z/n/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Le/m/d/z/n/d;->b:Le/m/d/z/i/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 7
    iget-boolean p1, v1, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Metadata key %s contains type other than boolean: %s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final h(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->b:Le/m/d/z/n/d;

    invoke-virtual {p1}, Le/m/d/z/g/w;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Le/m/d/z/n/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v0, Le/m/d/z/n/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Le/m/d/z/n/e;->a(Ljava/lang/Object;)Le/m/d/z/n/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Le/m/d/z/n/d;->b:Le/m/d/z/i/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 7
    iget-boolean p1, v1, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Metadata key %s contains type other than int: %s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    new-instance p1, Le/m/d/z/n/e;

    invoke-direct {p1}, Le/m/d/z/n/e;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Le/m/d/z/n/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 13
    new-instance v0, Le/m/d/z/n/e;

    invoke-direct {v0, p1}, Le/m/d/z/n/e;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Le/m/d/z/n/e;

    invoke-direct {v0}, Le/m/d/z/n/e;-><init>()V

    :goto_1
    return-object v0
.end method

.method public i()J
    .locals 9

    .line 1
    const-class v0, Le/m/d/z/g/k;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/m/d/z/g/k;->a:Le/m/d/z/g/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le/m/d/z/g/k;

    invoke-direct {v1}, Le/m/d/z/g/k;-><init>()V

    sput-object v1, Le/m/d/z/g/k;->a:Le/m/d/z/g/k;

    .line 4
    :cond_0
    sget-object v1, Le/m/d/z/g/k;->a:Le/m/d/z/g/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 5
    invoke-virtual {p0, v1}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.firebase.perf.TimeLimitSec"

    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2, v1, v0}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x258

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
.end method

.method public final j(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Float;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Le/m/d/z/g/w;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getFloat(Ljava/lang/String;)Le/m/d/z/n/e;

    move-result-object p1

    return-object p1
.end method

.method public final k(Le/m/d/z/g/w;)Le/m/d/z/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/z/g/w<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/m/d/z/n/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Le/m/d/z/g/w;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Le/m/d/z/n/e;

    move-result-object p1

    return-object p1
.end method

.method public final l(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Le/m/d/z/b;->a:I

    const-string v4, "20.0.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final n(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/d/z/g/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_a

    .line 3
    :cond_0
    const-class v0, Le/m/d/z/g/m;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v3, Le/m/d/z/g/m;->a:Le/m/d/z/g/m;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Le/m/d/z/g/m;

    invoke-direct {v3}, Le/m/d/z/g/m;-><init>()V

    sput-object v3, Le/m/d/z/g/m;->a:Le/m/d/z/g/m;

    .line 6
    :cond_1
    sget-object v3, Le/m/d/z/g/m;->a:Le/m/d/z/g/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 7
    iget-object v0, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fpr_enabled"

    invoke-virtual {v0, v4}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Le/m/d/z/n/e;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    iget-object v3, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v3}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    const-string v4, "com.google.firebase.perf.SdkEnabled"

    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v6, v3, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3

    .line 13
    invoke-virtual {v3}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 14
    iget-object v6, v3, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object v3, v3, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v3, v4, v5}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 16
    :goto_0
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, v3}, Le/m/d/z/g/d;->a(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_9

    .line 20
    const-class v0, Le/m/d/z/g/l;

    monitor-enter v0

    .line 21
    :try_start_1
    sget-object v3, Le/m/d/z/g/l;->a:Le/m/d/z/g/l;

    if-nez v3, :cond_6

    .line 22
    new-instance v3, Le/m/d/z/g/l;

    invoke-direct {v3}, Le/m/d/z/g/l;-><init>()V

    sput-object v3, Le/m/d/z/g/l;->a:Le/m/d/z/g/l;

    .line 23
    :cond_6
    sget-object v3, Le/m/d/z/g/l;->a:Le/m/d/z/g/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 24
    iget-object v0, p0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fpr_disabled_android_versions"

    invoke-virtual {v0, v4}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Le/m/d/z/n/e;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    iget-object v3, p0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    const-string v4, "com.google.firebase.perf.SdkDisabledVersions"

    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Le/m/d/z/g/x;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/m/d/z/g/d;->m(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {p0, v3}, Le/m/d/z/g/d;->d(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Le/m/d/z/n/e;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-virtual {v0}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/m/d/z/g/d;->m(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_8
    const-string v0, ""

    .line 31
    invoke-virtual {p0, v0}, Le/m/d/z/g/d;->m(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1

    :cond_9
    move v0, v1

    :goto_3
    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :catchall_1
    move-exception v1

    .line 33
    monitor-exit v0

    throw v1
.end method

.method public final p(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
