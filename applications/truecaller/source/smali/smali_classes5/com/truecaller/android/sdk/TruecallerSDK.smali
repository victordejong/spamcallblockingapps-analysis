.class public final Lcom/truecaller/android/sdk/TruecallerSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final SHARE_PROFILE_REQUEST_CODE:I = 0x64

.field private static sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;


# instance fields
.field private final mTcClientManager:Le/a/t/b/a;


# direct methods
.method private constructor <init>(Le/a/t/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    return-void
.end method

.method public static clear()V
    .locals 4

    .line 1
    sget-object v0, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget v2, v0, Le/a/t/b/c/d;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5
    check-cast v0, Le/a/t/b/c/g;

    .line 6
    iget-object v2, v0, Le/a/t/b/c/g;->k:Le/a/t/b/c/k/d;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Le/a/t/b/c/g;->g()V

    .line 8
    iput-object v1, v0, Le/a/t/b/c/g;->k:Le/a/t/b/c/k/d;

    .line 9
    :cond_0
    iput-object v1, v0, Le/a/t/b/c/g;->l:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 10
    iget-object v2, v0, Le/a/t/b/c/g;->m:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v1, v0, Le/a/t/b/c/g;->m:Landroid/os/Handler;

    .line 13
    :cond_1
    sget-object v0, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;

    iget-object v0, v0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 14
    iput-object v1, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 15
    sput-object v1, Le/a/t/b/a;->b:Le/a/t/b/a;

    .line 16
    sput-object v1, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/truecaller/android/sdk/TruecallerSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please call init() on TruecallerSDK first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/truecaller/android/sdk/ITrueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/truecaller/android/sdk/TruecallerSDK;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_2
    invoke-static {v1}, Le/m/d/y/n;->U(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/truecaller/android/sdk/TruecallerSDK;

    .line 6
    new-instance v3, Le/a/t/b/a;

    invoke-direct {v3, p0, p1, v1}, Le/a/t/b/a;-><init>(Landroid/content/Context;Lcom/truecaller/android/sdk/ITrueCallback;Ljava/lang/String;)V

    sput-object v3, Le/a/t/b/a;->b:Le/a/t/b/a;

    .line 7
    invoke-direct {v2, v3}, Lcom/truecaller/android/sdk/TruecallerSDK;-><init>(Le/a/t/b/a;)V

    sput-object v2, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Add partner key in your manifest"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/truecaller/android/sdk/TruecallerSdkScope;)V
    .locals 3

    const-class v0, Lcom/truecaller/android/sdk/TruecallerSDK;

    monitor-enter v0

    .line 10
    :try_start_0
    new-instance v1, Lcom/truecaller/android/sdk/TruecallerSDK;

    .line 11
    new-instance v2, Le/a/t/b/a;

    invoke-direct {v2, p0}, Le/a/t/b/a;-><init>(Lcom/truecaller/android/sdk/TruecallerSdkScope;)V

    sput-object v2, Le/a/t/b/a;->b:Le/a/t/b/a;

    .line 12
    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/TruecallerSDK;-><init>(Le/a/t/b/a;)V

    sput-object v1, Lcom/truecaller/android/sdk/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/TruecallerSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getUserProfile(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 16
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 17
    iget v1, v0, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 18
    check-cast v0, Le/a/t/b/c/e;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    :try_start_0
    invoke-virtual {v0, v1}, Le/a/t/b/c/e;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 p1, 0xb

    .line 21
    invoke-virtual {v0, v1, p1}, Le/a/t/b/c/e;->i(Ln3/r/a/l;I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    .line 22
    invoke-virtual {p1, v2, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0xf

    .line 23
    invoke-virtual {v0, v1, p1}, Le/a/t/b/c/e;->i(Ln3/r/a/l;I)V

    goto :goto_0

    .line 24
    :cond_1
    check-cast v0, Le/a/t/b/c/g;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 25
    invoke-static {p1}, Le/m/d/y/n;->h1(Landroid/app/Activity;)V

    .line 26
    iget-object p1, v0, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    invoke-interface {p1}, Le/a/t/b/c/i;->c()V

    :cond_2
    :goto_0
    return-void

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserProfile(Ln3/r/a/l;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iget v1, v0, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    check-cast v0, Le/a/t/b/c/e;

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Le/a/t/b/c/e;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    .line 7
    invoke-virtual {v0, p1, v1}, Le/a/t/b/c/e;->i(Ln3/r/a/l;I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    .line 8
    invoke-virtual {p1, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0xf

    .line 9
    invoke-virtual {v0, p1, v1}, Le/a/t/b/c/e;->i(Ln3/r/a/l;I)V

    goto :goto_0

    .line 10
    :cond_1
    check-cast v0, Le/a/t/b/c/g;

    .line 11
    invoke-static {p1}, Le/m/d/y/n;->h1(Landroid/app/Activity;)V

    .line 12
    iget-object p1, v0, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    invoke-interface {p1}, Le/a/t/b/c/i;->c()V

    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isUsable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 2
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResultObtained(Ln3/r/a/l;IILandroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object p2, p2, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iget v1, p2, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 5
    check-cast p2, Le/a/t/b/c/e;

    if-eqz p4, :cond_8

    .line 6
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "TRUERESPONSE_TRUESDK_VERSION"

    .line 8
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lcom/truecaller/android/sdk/TrueResponse;

    invoke-direct {v1, p4}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v1, "TRUECALLER_RESPONSE_EXTRA"

    .line 10
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/truecaller/android/sdk/TrueResponse;

    :goto_0
    if-nez v1, :cond_3

    .line 11
    iget-object p1, p2, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    new-instance p2, Lcom/truecaller/android/sdk/TrueError;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/ITrueCallback;->onFailureProfileShared(Lcom/truecaller/android/sdk/TrueError;)V

    goto :goto_4

    :cond_3
    const/4 p4, -0x1

    if-ne p4, p3, :cond_4

    .line 12
    iget-object p1, v1, Lcom/truecaller/android/sdk/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/TrueProfile;

    if-eqz p1, :cond_7

    .line 13
    iget-object p2, p2, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    invoke-interface {p2, p1}, Lcom/truecaller/android/sdk/ITrueCallback;->onSuccessProfileShared(Lcom/truecaller/android/sdk/TrueProfile;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p3, v1, Lcom/truecaller/android/sdk/TrueResponse;->trueError:Lcom/truecaller/android/sdk/TrueError;

    if-eqz p3, :cond_7

    .line 15
    invoke-virtual {p3}, Lcom/truecaller/android/sdk/TrueError;->getErrorType()I

    move-result p4

    const/16 v1, 0xa

    if-eq p4, v1, :cond_6

    const/4 v1, 0x2

    if-eq p4, v1, :cond_6

    const/16 v1, 0xe

    if-eq p4, v1, :cond_6

    const/16 v1, 0xd

    if-ne p4, v1, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p2, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    invoke-interface {p1, p3}, Lcom/truecaller/android/sdk/ITrueCallback;->onFailureProfileShared(Lcom/truecaller/android/sdk/TrueError;)V

    goto :goto_2

    .line 17
    :cond_6
    :goto_1
    invoke-virtual {p2, p1, p4}, Le/a/t/b/c/e;->i(Ln3/r/a/l;I)V

    :cond_7
    :goto_2
    move p1, v2

    goto :goto_5

    .line 18
    :cond_8
    :goto_3
    iget-object p1, p2, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    new-instance p2, Lcom/truecaller/android/sdk/TrueError;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/ITrueCallback;->onFailureProfileShared(Lcom/truecaller/android/sdk/TrueError;)V

    :goto_4
    move p1, v0

    :goto_5
    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    return v0

    .line 19
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestVerification(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Ln3/r/a/l;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iget v1, v0, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    check-cast v0, Le/a/t/b/c/g;

    .line 6
    invoke-static {p4}, Le/m/d/y/n;->C(Landroid/app/Activity;)V

    .line 7
    iget-object v1, v0, Le/a/t/b/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Le/a/t/b/c/g;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Le/a/t/b/c/g;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Le/a/t/b/c/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    new-instance v2, Le/a/t/b/c/f;

    move-object v3, v2

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Le/a/t/b/c/f;-><init>(Le/a/t/b/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Ln3/r/a/l;)V

    invoke-direct {v1, p4, v2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;-><init>(Ln3/r/a/l;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;)V

    iput-object v1, v0, Le/a/t/b/c/g;->l:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->e()V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v3, v0, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    .line 12
    iget-object v4, v0, Le/a/t/b/c/d;->d:Ljava/lang/String;

    .line 13
    iget-boolean v8, v0, Le/a/t/b/c/g;->j:Z

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

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iput-object p1, v0, Le/a/t/b/c/d;->f:Ljava/util/Locale;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestNonce(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iput-object p1, v0, Le/a/t/b/c/d;->e:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iput p1, v0, Le/a/t/b/c/d;->g:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateCallback(Lcom/truecaller/android/sdk/ITrueCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/a/t/b/a;->b:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iput-object p1, v0, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

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
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iget v1, v0, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    check-cast v0, Le/a/t/b/c/g;

    .line 6
    iget-object v1, v0, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    .line 7
    iget-object v0, v0, Le/a/t/b/c/d;->d:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSDK;->mTcClientManager:Le/a/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    .line 4
    iget v1, v0, Le/a/t/b/c/d;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    check-cast v0, Le/a/t/b/c/g;

    .line 6
    iget-object v1, v0, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    .line 7
    iget-object v0, v0, Le/a/t/b/c/d;->d:Ljava/lang/String;

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
