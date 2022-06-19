.class public final Le/m/a/f/e/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic b:Le/m/a/f/e/a/a/a0;


# direct methods
.method public constructor <init>(Le/m/a/f/e/a/a/a0;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    iput-object p2, p0, Le/m/a/f/e/a/a/z;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    iget-object v1, v0, Le/m/a/f/e/a/a/a0;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:Ljava/util/Map;

    .line 2
    iget-object v0, v0, Le/m/a/f/e/a/a/a0;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le/m/a/f/e/a/a/z;->a:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v1, Le/m/a/f/e/a/a/a0;->e:Z

    .line 6
    iget-object v1, v1, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    .line 8
    iget-boolean v1, v0, Le/m/a/f/e/a/a/a0;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/m/a/f/e/a/a/a0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v1, :cond_1

    iget-object v2, v0, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v0, v0, Le/m/a/f/e/a/a/a0;->d:Ljava/util/Set;

    .line 9
    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    :try_start_0
    iget-object v1, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    .line 11
    iget-object v1, v1, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v3

    .line 13
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :catch_0
    iget-object v1, p0, Le/m/a/f/e/a/a/z;->b:Le/m/a/f/e/a/a/a0;

    .line 15
    iget-object v1, v1, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    const-string v3, "Failed to get service from broker."

    .line 16
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xa

    .line 17
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 19
    :cond_3
    iget-object v1, p0, Le/m/a/f/e/a/a/z;->a:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method
