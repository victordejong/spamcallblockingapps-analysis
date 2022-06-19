.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbt;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbt;-><init>()V

    return-void
.end method

.method private static zzb(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ln3/m0/c$a;

    invoke-direct {v0}, Ln3/m0/c$a;-><init>()V

    .line 2
    new-instance v1, Ln3/m0/c;

    invoke-direct {v1, v0}, Ln3/m0/c;-><init>(Ln3/m0/c$a;)V

    .line 3
    invoke-static {p0, v1}, Ln3/m0/c0/l;->o(Landroid/content/Context;Ln3/m0/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->B1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ln3/m0/d$a;

    invoke-direct {v0}, Ln3/m0/d$a;-><init>()V

    sget-object v1, Ln3/m0/q;->b:Ln3/m0/q;

    .line 4
    iput-object v1, v0, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 5
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uri"

    .line 7
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gws_query_id"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Ln3/m0/f;

    invoke-direct {p2, v0}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-static {p2}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 10
    new-instance p3, Ln3/m0/r$a;

    const-class v0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v0}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 11
    iget-object v0, p3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 12
    iget-object v0, p3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p2, v0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 13
    iget-object p2, p3, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string v0, "offline_notification_work"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    check-cast p2, Ln3/m0/r;

    .line 15
    :try_start_0
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p1, p2}, Ln3/m0/y;->f(Ln3/m0/z;)Ln3/m0/s;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->B1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ln3/m0/c0/t/b;

    const-string v1, "offline_ping_sender_work"

    invoke-direct {v0, p1, v1}, Ln3/m0/c0/t/b;-><init>(Ln3/m0/c0/l;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    check-cast v2, Ln3/m0/c0/t/x/b;

    .line 7
    iget-object v2, v2, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {v2, v0}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Ln3/m0/d$a;

    invoke-direct {v0}, Ln3/m0/d$a;-><init>()V

    sget-object v2, Ln3/m0/q;->b:Ln3/m0/q;

    .line 9
    iput-object v2, v0, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 10
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 11
    new-instance v0, Ln3/m0/r$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v0, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 12
    iget-object v3, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 13
    iget-object v2, v0, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 15
    invoke-virtual {p1, v0}, Ln3/m0/y;->f(Ln3/m0/z;)Ln3/m0/s;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
