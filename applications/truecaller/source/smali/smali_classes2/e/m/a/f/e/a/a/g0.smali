.class public final Le/m/a/f/e/a/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/g0;->b:Lcom/google/android/gms/common/api/internal/zaco;

    iput-object p2, p0, Le/m/a/f/e/a/a/g0;->a:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/f/e/a/a/g0;->b:Lcom/google/android/gms/common/api/internal/zaco;

    iget-object v1, p0, Le/m/a/f/e/a/a/g0;->a:Lcom/google/android/gms/signin/internal/zak;

    .line 1
    sget-object v2, Lcom/google/android/gms/common/api/internal/zaco;->h:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/signin/internal/zak;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/zak;->c:Lcom/google/android/gms/common/internal/zav;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/common/internal/zav;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-static {v4, v3, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaco;->g:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->o2()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaco;->d:Ljava/util/Set;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/common/api/internal/zacn;->b(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaco;->g:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/zacn;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->f:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void
.end method
