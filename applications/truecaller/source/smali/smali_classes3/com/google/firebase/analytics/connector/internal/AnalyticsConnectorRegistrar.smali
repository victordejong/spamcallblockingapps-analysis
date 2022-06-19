.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(Le/m/d/m/p;)Le/m/d/k/a/a;
    .locals 7

    .line 1
    const-class v0, Le/m/d/g;

    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/g;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le/m/d/s/d;

    .line 3
    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/d/s/d;

    const-string v2, "null reference"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 6
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null reference"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    sget-object v2, Le/m/d/k/a/b;->c:Le/m/d/k/a/a;

    if-nez v2, :cond_2

    const-class v2, Le/m/d/k/a/b;

    monitor-enter v2

    :try_start_0
    sget-object v3, Le/m/d/k/a/b;->c:Le/m/d/k/a/a;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Le/m/d/g;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Le/m/d/f;

    sget-object v5, Le/m/d/k/a/e;->a:Le/m/d/k/a/e;

    .line 12
    sget-object v6, Le/m/d/k/a/d;->a:Le/m/d/k/a/d;

    invoke-interface {p0, v4, v5, v6}, Le/m/d/s/d;->b(Ljava/lang/Class;Ljava/util/concurrent/Executor;Le/m/d/s/b;)V

    const-string p0, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {v0}, Le/m/d/g;->g()Z

    move-result v0

    .line 14
    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Le/m/d/k/a/b;

    const/4 v0, 0x0

    .line 15
    invoke-static {v1, v0, v0, v0, v3}, Lcom/google/android/gms/internal/measurement/zzee;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zzd()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Le/m/d/k/a/b;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    sput-object p0, Le/m/d/k/a/b;->c:Le/m/d/k/a/a;

    .line 17
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Le/m/d/k/a/b;->c:Le/m/d/k/a/a;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Le/m/d/m/o;

    .line 1
    const-class v2, Le/m/d/k/a/a;

    invoke-static {v2}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v2

    const-class v3, Le/m/d/g;

    .line 2
    new-instance v4, Le/m/d/m/x;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Landroid/content/Context;

    .line 4
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Le/m/d/s/d;

    .line 6
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v3, Le/m/d/k/a/c/a;->a:Le/m/d/k/a/c/a;

    .line 8
    invoke-virtual {v2, v3}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 9
    invoke-virtual {v2, v0}, Le/m/d/m/o$b;->d(I)Le/m/d/m/o$b;

    .line 10
    invoke-virtual {v2}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-analytics"

    const-string v2, "20.1.0"

    .line 11
    invoke-static {v0, v2}, Le/m/d/y/n;->w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;

    move-result-object v0

    aput-object v0, v1, v5

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
