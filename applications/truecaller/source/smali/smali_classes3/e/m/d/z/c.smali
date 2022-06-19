.class public Le/m/d/z/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final h:Le/m/d/z/i/a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/d/z/g/d;

.field public final c:Le/m/d/z/n/d;

.field public d:Ljava/lang/Boolean;

.field public final e:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/b0/q;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/m/d/w/i;

.field public final g:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/c;->h:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Le/m/d/g;Le/m/d/v/b;Le/m/d/w/i;Le/m/d/v/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Le/m/d/z/g/d;Lcom/google/firebase/perf/session/SessionManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/g;",
            "Le/m/d/v/b<",
            "Le/m/d/b0/q;",
            ">;",
            "Le/m/d/w/i;",
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Le/m/d/z/g/d;",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/m/d/z/c;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/d/z/c;->d:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Le/m/d/z/c;->e:Le/m/d/v/b;

    .line 5
    iput-object p3, p0, Le/m/d/z/c;->f:Le/m/d/w/i;

    .line 6
    iput-object p4, p0, Le/m/d/z/c;->g:Le/m/d/v/b;

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Le/m/d/z/c;->d:Ljava/lang/Boolean;

    .line 8
    iput-object p6, p0, Le/m/d/z/c;->b:Le/m/d/z/g/d;

    .line 9
    new-instance p1, Le/m/d/z/n/d;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Le/m/d/z/n/d;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Le/m/d/z/c;->c:Le/m/d/z/n/d;

    return-void

    .line 10
    :cond_0
    sget-object v1, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 11
    iput-object p1, v1, Le/m/d/z/m/k;->d:Le/m/d/g;

    .line 12
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 13
    iget-object v2, p1, Le/m/d/g;->c:Le/m/d/i;

    .line 14
    iget-object v2, v2, Le/m/d/i;->g:Ljava/lang/String;

    .line 15
    iput-object v2, v1, Le/m/d/z/m/k;->p:Ljava/lang/String;

    .line 16
    iput-object p3, v1, Le/m/d/z/m/k;->f:Le/m/d/w/i;

    .line 17
    iput-object p4, v1, Le/m/d/z/m/k;->g:Le/m/d/v/b;

    .line 18
    iget-object p3, v1, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Le/m/d/z/m/c;

    invoke-direct {p4, v1}, Le/m/d/z/m/c;-><init>(Le/m/d/z/m/k;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 20
    iget-object p3, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 21
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 22
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 23
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    goto :goto_0

    :catch_1
    move-exception p4

    .line 24
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 25
    :goto_1
    new-instance p4, Le/m/d/z/n/d;

    if-eqz v0, :cond_1

    invoke-direct {p4, v0}, Le/m/d/z/n/d;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    invoke-direct {p4}, Le/m/d/z/n/d;-><init>()V

    .line 26
    :goto_2
    iput-object p4, p0, Le/m/d/z/c;->c:Le/m/d/z/n/d;

    .line 27
    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Le/m/d/v/b;)V

    .line 28
    iput-object p6, p0, Le/m/d/z/c;->b:Le/m/d/z/g/d;

    .line 29
    iput-object p4, p6, Le/m/d/z/g/d;->b:Le/m/d/z/n/d;

    .line 30
    sget-object p2, Le/m/d/z/g/d;->d:Le/m/d/z/i/a;

    invoke-static {p3}, Le/m/d/z/n/h;->a(Landroid/content/Context;)Z

    move-result p4

    .line 31
    iput-boolean p4, p2, Le/m/d/z/i/a;->b:Z

    .line 32
    iget-object p2, p6, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p2, p3}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/SessionManager;->setApplicationContext(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p6}, Le/m/d/z/g/d;->f()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Le/m/d/z/c;->d:Ljava/lang/Boolean;

    .line 35
    sget-object p4, Le/m/d/z/c;->h:Le/m/d/z/i/a;

    .line 36
    iget-boolean p5, p4, Le/m/d/z/i/a;->b:Z

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_3

    .line 38
    :cond_2
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object p2

    invoke-virtual {p2}, Le/m/d/g;->g()Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_3

    const/4 p2, 0x1

    new-array p5, p2, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 40
    iget-object p1, p1, Le/m/d/g;->c:Le/m/d/i;

    .line 41
    iget-object p1, p1, Le/m/d/i;->g:Ljava/lang/String;

    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-static {p1, p3}, Le/m/d/y/n;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p3, p6

    const-string p1, "perf-android-sdk"

    aput-object p1, p3, p2

    const/4 p1, 0x2

    const-string p2, "android-ide"

    aput-object p2, p3, p1

    const-string p1, "%s/trends?utm_source=%s&utm_medium=%s"

    .line 44
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, p6

    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    .line 45
    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    iget-boolean p1, p4, Le/m/d/z/i/a;->b:Z

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p4, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/firebase/perf/metrics/Trace;

    .line 2
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 3
    new-instance v3, Le/m/d/z/n/a;

    invoke-direct {v3}, Le/m/d/z/n/a;-><init>()V

    .line 4
    invoke-static {}, Le/m/d/z/f/a;->a()Le/m/d/z/f/a;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Le/m/d/z/m/k;Le/m/d/z/n/a;Le/m/d/z/f/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    .line 7
    invoke-virtual {v6}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    return-object v6
.end method
