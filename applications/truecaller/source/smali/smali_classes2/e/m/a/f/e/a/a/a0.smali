.class public final Le/m/a/f/e/a/a/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
.implements Lcom/google/android/gms/common/api/internal/zacn;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Api$Client;

.field public final b:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/f/e/a/a/a0;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Le/m/a/f/e/a/a/a0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p1, p0, Le/m/a/f/e/a/a/a0;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/m/a/f/e/a/a/a0;->e:Z

    iput-object p2, p0, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    iput-object p3, p0, Le/m/a/f/e/a/a/a0;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/a0;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    new-instance v1, Le/m/a/f/e/a/a/z;

    .line 3
    invoke-direct {v1, p0, p1}, Le/m/a/f/e/a/a/z;-><init>(Le/m/a/f/e/a/a/a0;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p1, p0, Le/m/a/f/e/a/a/a0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p2, p0, Le/m/a/f/e/a/a/a0;->d:Ljava/util/Set;

    .line 2
    iget-boolean v0, p0, Le/m/a/f/e/a/a/a0;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/e/a/a/a0;->a:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    .line 5
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Le/m/a/f/e/a/a/a0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 7

    iget-object v0, p0, Le/m/a/f/e/a/a/a0;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Le/m/a/f/e/a/a/a0;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabl;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onSignInFailed for "

    const-string v5, " with "

    invoke-static {v6, v4, v2, v5, v3}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
