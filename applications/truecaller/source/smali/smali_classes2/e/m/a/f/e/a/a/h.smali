.class public final Le/m/a/f/e/a/a/h;
.super Le/m/a/f/e/a/a/m;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Le/m/a/f/e/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Le/m/a/f/e/a/a/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/e/a/a/m;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    iput-object p2, p0, Le/m/a/f/e/a/a/h;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/common/internal/zal;

    iget-object v1, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->d:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Le/m/a/f/e/a/a/h;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Le/m/a/f/e/a/a/h;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/f/e/a/a/e;

    .line 7
    iget-boolean v5, v5, Le/m/a/f/e/a/a/e;->c:Z

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    if-ge v5, v1, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 12
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaar;->c:Landroid/content/Context;

    .line 13
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/zal;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    if-nez v4, :cond_2

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 16
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaar;->c:Landroid/content/Context;

    .line 17
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/zal;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    if-eqz v4, :cond_4

    :cond_5
    :goto_1
    const/4 v1, 0x1

    if-eqz v4, :cond_6

    .line 18
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v2, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 19
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaar;->a:Lcom/google/android/gms/common/api/internal/zabd;

    .line 20
    new-instance v4, Le/m/a/f/e/a/a/f;

    .line 21
    invoke-direct {v4, p0, v2, v0}, Le/m/a/f/e/a/a/f;-><init>(Le/m/a/f/e/a/a/h;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 22
    iget-object v0, v3, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 23
    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 25
    :cond_6
    iget-object v2, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 26
    iget-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zaar;->m:Z

    if-eqz v3, :cond_7

    .line 27
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->k:Lcom/google/android/gms/signin/zae;

    if-eqz v2, :cond_7

    .line 28
    invoke-interface {v2}, Lcom/google/android/gms/signin/zae;->a()V

    :cond_7
    iget-object v2, p0, Le/m/a/f/e/a/a/h;->b:Ljava/util/Map;

    .line 29
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Le/m/a/f/e/a/a/h;->b:Ljava/util/Map;

    .line 30
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 31
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 32
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->c:Landroid/content/Context;

    .line 33
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/common/internal/zal;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Le/m/a/f/e/a/a/h;->c:Lcom/google/android/gms/common/api/internal/zaar;

    .line 34
    iget-object v5, v3, Lcom/google/android/gms/common/api/internal/zaar;->a:Lcom/google/android/gms/common/api/internal/zabd;

    .line 35
    new-instance v6, Le/m/a/f/e/a/a/g;

    .line 36
    invoke-direct {v6, v3, v4}, Le/m/a/f/e/a/a/g;-><init>(Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    .line 37
    iget-object v3, v5, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 38
    invoke-virtual {v3, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v5, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 39
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 40
    :cond_8
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_2

    :cond_9
    return-void
.end method
