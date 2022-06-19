.class public final Lcom/truecaller/android/sdk/oAuth/TcSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final SHARE_PROFILE_REQUEST_CODE:I = 0x64

.field private static sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;


# instance fields
.field private final mTcClientManager:Le/a/t/b/e/a;


# direct methods
.method private constructor <init>(Le/a/t/b/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    return-void
.end method

.method public static clear()V
    .locals 4

    .line 1
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget v2, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5
    check-cast v0, Le/a/t/b/e/d/f;

    .line 6
    iget-object v2, v0, Le/a/t/b/e/d/f;->l:Le/a/t/b/c/k/d;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Le/a/t/b/e/d/f;->g()V

    .line 8
    iput-object v1, v0, Le/a/t/b/e/d/f;->l:Le/a/t/b/c/k/d;

    .line 9
    :cond_0
    iput-object v1, v0, Le/a/t/b/e/d/f;->m:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 10
    iget-object v2, v0, Le/a/t/b/e/d/f;->n:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v1, v0, Le/a/t/b/e/d/f;->n:Landroid/os/Handler;

    .line 13
    :cond_1
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;

    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 14
    iput-object v1, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 15
    sput-object v1, Le/a/t/b/e/a;->b:Le/a/t/b/e/a;

    .line 16
    sput-object v1, Lcom/truecaller/android/sdk/oAuth/TcSdk;->sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please call init() on TcSdk first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;)V
    .locals 3

    const-class v0, Lcom/truecaller/android/sdk/oAuth/TcSdk;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/TcSdk;

    .line 2
    new-instance v2, Le/a/t/b/e/a;

    invoke-direct {v2, p0}, Le/a/t/b/e/a;-><init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;)V

    sput-object v2, Le/a/t/b/e/a;->b:Le/a/t/b/e/a;

    .line 3
    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/TcSdk;-><init>(Le/a/t/b/e/a;)V

    sput-object v1, Lcom/truecaller/android/sdk/oAuth/TcSdk;->sInstance:Lcom/truecaller/android/sdk/oAuth/TcSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAuthorizationCode(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 25
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 26
    iget v1, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 27
    check-cast v0, Le/a/t/b/e/d/d;

    .line 28
    iget-object v1, v0, Le/a/t/b/e/d/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 30
    iget-object v1, v0, Le/a/t/b/e/d/c;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 31
    array-length v1, v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v0, Le/a/t/b/e/d/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 35
    :try_start_0
    invoke-virtual {v0, v1}, Le/a/t/b/e/d/d;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    iget-object p1, v0, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;

    invoke-interface {p1, v1}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    .line 37
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    iget-object p1, v0, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;

    invoke-interface {p1, v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OAuth state cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OAuth scopes cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Code challenge cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_4
    check-cast v0, Le/a/t/b/e/d/f;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 43
    invoke-static {p1}, Le/m/d/y/n;->h1(Landroid/app/Activity;)V

    .line 44
    iget-object p1, v0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    invoke-interface {p1}, Le/a/t/b/c/i;->c()V

    :cond_5
    :goto_0
    return-void

    .line 45
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAuthorizationCode(Ln3/r/a/l;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iget v1, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 5
    check-cast v0, Le/a/t/b/e/d/d;

    .line 6
    iget-object v1, v0, Le/a/t/b/e/d/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    iget-object v1, v0, Le/a/t/b/e/d/c;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    array-length v1, v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v0, Le/a/t/b/e/d/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {v0, p1}, Le/a/t/b/e/d/d;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 13
    iget-object p1, v0, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;

    invoke-interface {p1, v1}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    .line 14
    invoke-virtual {p1, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    iget-object p1, v0, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;

    invoke-interface {p1, v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OAuth state cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OAuth scopes cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Code challenge cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    check-cast v0, Le/a/t/b/e/d/f;

    .line 20
    invoke-static {p1}, Le/m/d/y/n;->h1(Landroid/app/Activity;)V

    .line 21
    iget-object p1, v0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    invoke-interface {p1}, Le/a/t/b/c/i;->c()V

    :goto_0
    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOAuthFlowUsable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 2
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    if-eqz v0, :cond_0

    instance-of v0, v0, Le/a/t/b/e/d/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResultObtained(Ln3/r/a/l;IILandroid/content/Intent;)Z
    .locals 2

    const/4 p1, 0x0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object p2, p2, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iget v0, p2, Le/a/t/b/e/d/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 5
    check-cast p2, Le/a/t/b/e/d/d;

    if-eqz p4, :cond_4

    .line 6
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "OAUTH_SDK_RESPONSE_EXTRA"

    .line 7
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-nez p4, :cond_2

    .line 8
    iget-object p2, p2, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;

    invoke-interface {p2, p3}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    if-ne v0, p3, :cond_3

    .line 9
    invoke-virtual {p4}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    check-cast p4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    .line 11
    iget-object p2, p2, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 12
    iget-object p3, p4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    .line 13
    invoke-interface {p2, p3}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onSuccess(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V

    goto :goto_0

    .line 14
    :cond_3
    check-cast p4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 15
    iget-object p3, p4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 16
    iget-object p2, p2, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-interface {p2, p3}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    :goto_0
    move p2, v1

    goto :goto_3

    .line 17
    :cond_4
    :goto_1
    iget-object p2, p2, Le/a/t/b/e/d/c;->b:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;

    invoke-interface {p2, p3}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    :goto_2
    move p2, p1

    :goto_3
    if-eqz p2, :cond_5

    move p1, v1

    :cond_5
    return p1

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestVerification(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Ln3/r/a/l;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iget v1, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    check-cast v0, Le/a/t/b/e/d/f;

    .line 6
    invoke-static {p4}, Le/m/d/y/n;->C(Landroid/app/Activity;)V

    .line 7
    iget-object v1, v0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Le/a/t/b/e/d/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Le/a/t/b/e/d/f;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Le/a/t/b/e/d/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    new-instance v2, Le/a/t/b/e/d/e;

    move-object v3, v2

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Le/a/t/b/e/d/e;-><init>(Le/a/t/b/e/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Ln3/r/a/l;)V

    invoke-direct {v1, p4, v2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;-><init>(Ln3/r/a/l;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;)V

    iput-object v1, v0, Le/a/t/b/e/d/f;->m:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->e()V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v3, v0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    .line 12
    iget-object v4, v0, Le/a/t/b/e/d/c;->d:Ljava/lang/String;

    .line 13
    iget-boolean v8, v0, Le/a/t/b/e/d/f;->k:Z

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-interface/range {v3 .. v9}, Le/a/t/b/c/i;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/clients/VerificationCallback;)V

    :cond_2
    :goto_1
    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCodeChallenge(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iput-object p1, v0, Le/a/t/b/e/d/c;->h:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iput-object p1, v0, Le/a/t/b/e/d/c;->e:Ljava/util/Locale;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOAuthScopes([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iput-object p1, v0, Le/a/t/b/e/d/c;->f:[Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOAuthState(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iput-object p1, v0, Le/a/t/b/e/d/c;->g:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyMissedCall(Lcom/truecaller/android/sdk/TrueProfile;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iget v1, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    check-cast v0, Le/a/t/b/e/d/f;

    .line 6
    iget-object v1, v0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    .line 7
    iget-object v0, v0, Le/a/t/b/e/d/c;->d:Ljava/lang/String;

    .line 8
    invoke-interface {v1, p1, v0, p2}, Le/a/t/b/c/i;->l(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyOtp(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdk;->mTcClientManager:Le/a/t/b/e/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    .line 4
    iget v1, v0, Le/a/t/b/e/d/c;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    check-cast v0, Le/a/t/b/e/d/f;

    .line 6
    iget-object v1, v0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    .line 7
    iget-object v0, v0, Le/a/t/b/e/d/c;->d:Ljava/lang/String;

    .line 8
    invoke-interface {v1, p1, p2, v0, p3}, Le/a/t/b/c/i;->k(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
