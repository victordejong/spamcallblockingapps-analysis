.class public Lcom/google/firebase/crashlytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/g/l;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/d/g/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/g/l;

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->i()Lcom/google/firebase/c;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/crashlytics/c;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/c;

    const-string v1, "FirebaseCrashlytics component is not present."

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method static b(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/analytics/a/a;)Lcom/google/firebase/crashlytics/c;
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Firebase Crashlytics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/l;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->g(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/d/g/v;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/firebase/crashlytics/d/g/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/g;)V

    .line 5
    new-instance p1, Lcom/google/firebase/crashlytics/d/g/r;

    invoke-direct {p1, p0}, Lcom/google/firebase/crashlytics/d/g/r;-><init>(Lcom/google/firebase/c;)V

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lcom/google/firebase/crashlytics/d/c;

    invoke-direct {p2}, Lcom/google/firebase/crashlytics/d/c;-><init>()V

    :cond_0
    move-object v6, p2

    if-eqz p3, :cond_2

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p2

    const-string v0, "Firebase Analytics is available."

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 8
    new-instance p2, Lcom/google/firebase/crashlytics/d/e/e;

    invoke-direct {p2, p3}, Lcom/google/firebase/crashlytics/d/e/e;-><init>(Lcom/google/firebase/analytics/a/a;)V

    .line 9
    new-instance v0, Lcom/google/firebase/crashlytics/a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/a;-><init>()V

    .line 10
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/c;->f(Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/crashlytics/a;)Lcom/google/firebase/analytics/a/a$a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    const-string v3, "Firebase Analytics listener registered successfully."

    invoke-virtual {p3, v3}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 12
    new-instance p3, Lcom/google/firebase/crashlytics/d/e/d;

    invoke-direct {p3}, Lcom/google/firebase/crashlytics/d/e/d;-><init>()V

    .line 13
    new-instance v3, Lcom/google/firebase/crashlytics/d/e/c;

    const/16 v4, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p2, v4, v5}, Lcom/google/firebase/crashlytics/d/e/c;-><init>(Lcom/google/firebase/crashlytics/d/e/e;ILjava/util/concurrent/TimeUnit;)V

    .line 14
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/a;->d(Lcom/google/firebase/crashlytics/d/e/b;)V

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/a;->e(Lcom/google/firebase/crashlytics/d/e/b;)V

    move-object p2, v3

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    const-string v0, "Firebase Analytics listener registration failed."

    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 17
    new-instance p3, Lcom/google/firebase/crashlytics/d/f/c;

    invoke-direct {p3}, Lcom/google/firebase/crashlytics/d/f/c;-><init>()V

    :goto_0
    move-object v9, p2

    move-object v8, p3

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p2

    const-string p3, "Firebase Analytics is unavailable."

    invoke-virtual {p2, p3}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/google/firebase/crashlytics/d/f/c;

    invoke-direct {p2}, Lcom/google/firebase/crashlytics/d/f/c;-><init>()V

    .line 20
    new-instance p3, Lcom/google/firebase/crashlytics/d/e/f;

    invoke-direct {p3}, Lcom/google/firebase/crashlytics/d/e/f;-><init>()V

    move-object v8, p2

    move-object v9, p3

    :goto_1
    const-string p2, "Crashlytics Exception Handler"

    .line 21
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/g/t;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 22
    new-instance p2, Lcom/google/firebase/crashlytics/d/g/l;

    move-object v3, p2

    move-object v4, p0

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/crashlytics/d/g/l;-><init>(Lcom/google/firebase/c;Lcom/google/firebase/crashlytics/d/g/v;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/g/r;Lcom/google/firebase/crashlytics/d/f/b;Lcom/google/firebase/crashlytics/d/e/a;Ljava/util/concurrent/ExecutorService;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/c;->l()Lcom/google/firebase/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/g/g;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapping file ID is: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 26
    new-instance p3, Lcom/google/firebase/crashlytics/d/o/a;

    invoke-direct {p3, v2}, Lcom/google/firebase/crashlytics/d/o/a;-><init>(Landroid/content/Context;)V

    .line 27
    :try_start_0
    invoke-static {v2, v1, v3, p0, p3}, Lcom/google/firebase/crashlytics/d/g/a;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/v;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/o/b;)Lcom/google/firebase/crashlytics/d/g/a;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package name is: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/d/g/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const-string p3, "com.google.firebase.crashlytics.startup"

    .line 29
    invoke-static {p3}, Lcom/google/firebase/crashlytics/d/g/t;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 30
    new-instance v5, Lcom/google/firebase/crashlytics/d/j/b;

    invoke-direct {v5}, Lcom/google/firebase/crashlytics/d/j/b;-><init>()V

    iget-object v6, p0, Lcom/google/firebase/crashlytics/d/g/a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/crashlytics/d/g/a;->f:Ljava/lang/String;

    move-object v4, v1

    move-object v8, p1

    .line 31
    invoke-static/range {v2 .. v8}, Lcom/google/firebase/crashlytics/d/m/d;->l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/g/v;Lcom/google/firebase/crashlytics/d/j/b;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/g/r;)Lcom/google/firebase/crashlytics/d/m/d;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/d/m/d;->p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/c$a;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/c$a;-><init>()V

    .line 33
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/tasks/g;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    .line 34
    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/d/g/l;->o(Lcom/google/firebase/crashlytics/d/g/a;Lcom/google/firebase/crashlytics/d/m/e;)Z

    move-result p0

    .line 35
    new-instance v0, Lcom/google/firebase/crashlytics/c$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/crashlytics/c$b;-><init>(ZLcom/google/firebase/crashlytics/d/g/l;Lcom/google/firebase/crashlytics/d/m/d;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    .line 36
    new-instance p0, Lcom/google/firebase/crashlytics/c;

    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/c;-><init>(Lcom/google/firebase/crashlytics/d/g/l;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Could not retrieve app info, initialization failed."

    invoke-virtual {p1, p2, p0}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/crashlytics/a;)Lcom/google/firebase/analytics/a/a$a;
    .locals 2

    const-string v0, "clx"

    .line 1
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/a/a;->g(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/analytics/a/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const-string v0, "crash"

    .line 4
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/a/a;->g(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/analytics/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/g/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/l;->k(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Crashlytics is ignoring a request to log a null exception."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/g/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/l;->l(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/g/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/l;->p(Ljava/lang/String;)V

    return-void
.end method
