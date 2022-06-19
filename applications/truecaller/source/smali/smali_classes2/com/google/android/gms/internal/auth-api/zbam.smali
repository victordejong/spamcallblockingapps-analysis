.class public final Lcom/google/android/gms/internal/auth-api/zbam;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/CredentialSavingClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/auth/api/identity/zbc;",
        ">;",
        "Lcom/google/android/gms/auth/api/identity/CredentialSavingClient;"
    }
.end annotation


# static fields
.field private static final zba:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/auth-api/zbw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zbb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/auth-api/zbw;",
            "Lcom/google/android/gms/auth/api/identity/zbc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zbc:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/identity/zbc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zbd:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbam;->zba:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbaj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/auth-api/zbaj;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbam;->zbb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Auth.Api.Identity.CredentialSaving.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbam;->zbc:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbc;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/auth-api/zbam;->zbc:Lcom/google/android/gms/common/api/Api;

    .line 1
    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->c:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbax;->zba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zbd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/zbc;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/auth-api/zbam;->zbc:Lcom/google/android/gms/common/api/Api;

    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->c:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbax;->zba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zbd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final saveAccountLinkingToken(Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->d:Ljava/util/List;

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->d:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->c:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->a:Landroid/app/PendingIntent;

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->a:Landroid/app/PendingIntent;

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->b:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->b:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->e:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iput-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->e:Ljava/lang/String;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zbd:Ljava/lang/String;

    .line 17
    iput-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->e:Ljava/lang/String;

    .line 18
    iget-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->a:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const-string v3, "Consent PendingIntent cannot be null"

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->b:Ljava/lang/String;

    const-string v3, "auth_code"

    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "Invalid tokenType"

    .line 21
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->c:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v3, "serviceId cannot be null or empty"

    .line 23
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    const-string v3, "scopes cannot be null"

    .line 24
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 25
    new-instance p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    iget-object v5, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->a:Landroid/app/PendingIntent;

    iget-object v6, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->d:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->e:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/auth-api/zbaw;->zbg:Lcom/google/android/gms/common/Feature;

    aput-object v3, v1, v2

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbah;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbah;-><init>(Lcom/google/android/gms/internal/auth-api/zbam;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)V

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 30
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b:Z

    const/16 p1, 0x5ff

    .line 31
    iput p1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final savePassword(Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/identity/SavePasswordResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zbd:Ljava/lang/String;

    .line 9
    iput-object p1, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    .line 10
    new-instance p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    iget-object v1, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;-><init>(Lcom/google/android/gms/auth/api/identity/SignInPassword;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbaw;->zbe:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbai;-><init>(Lcom/google/android/gms/internal/auth-api/zbam;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)V

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 15
    iput-boolean v3, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b:Z

    const/16 p1, 0x600

    .line 16
    iput p1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
