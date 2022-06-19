.class public final Le/j/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/j/v$e;,
        Le/j/v$b;,
        Le/j/v$c;,
        Le/j/v$d;,
        Le/j/v$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 !2\u00020\u0001:\u0005!\"#$%B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0012\u0010\u001b\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u001c\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u000c\u001a\u00020\u00142\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010\u001f\u001a\u00020\u0014H\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/AccessTokenManager;",
        "",
        "localBroadcastManager",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "accessTokenCache",
        "Lcom/facebook/AccessTokenCache;",
        "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V",
        "value",
        "Lcom/facebook/AccessToken;",
        "currentAccessToken",
        "getCurrentAccessToken",
        "()Lcom/facebook/AccessToken;",
        "setCurrentAccessToken",
        "(Lcom/facebook/AccessToken;)V",
        "currentAccessTokenField",
        "lastAttemptedTokenExtendDate",
        "Ljava/util/Date;",
        "tokenRefreshInProgress",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "currentAccessTokenChanged",
        "",
        "extendAccessTokenIfNeeded",
        "loadCurrentAccessToken",
        "",
        "refreshCurrentAccessToken",
        "callback",
        "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;",
        "refreshCurrentAccessTokenImpl",
        "sendCurrentAccessTokenChangedBroadcastIntent",
        "oldAccessToken",
        "saveToCache",
        "setTokenExpirationBroadcastAlarm",
        "shouldExtendAccessToken",
        "Companion",
        "FacebookRefreshTokenInfo",
        "InstagramRefreshTokenInfo",
        "RefreshResult",
        "RefreshTokenInfo",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Le/j/v$a;

.field public static g:Le/j/v;


# instance fields
.field public final a:Ln3/x/a/a;

.field public final b:Le/j/u;

.field public c:Lcom/facebook/AccessToken;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/util/Date;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/j/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/j/v$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/j/v;->f:Le/j/v$a;

    return-void
.end method

.method public constructor <init>(Ln3/x/a/a;Le/j/u;)V
    .locals 2

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessTokenCache"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/j/v;->a:Ln3/x/a/a;

    .line 3
    iput-object p2, p0, Le/j/v;->b:Le/j/u;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Le/j/v;->e:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/AccessToken$a;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v3, p1

    .line 1
    iget-object v2, v9, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-nez v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/j/c0;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/facebook/AccessToken$a;->a(Le/j/c0;)V

    :goto_0
    return-void

    .line 3
    :cond_1
    iget-object v0, v9, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Le/j/c0;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/facebook/AccessToken$a;->a(Le/j/c0;)V

    :goto_1
    return-void

    .line 5
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v9, Le/j/v;->e:Ljava/util/Date;

    .line 6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    new-instance v8, Le/j/v$d;

    invoke-direct {v8}, Le/j/v$d;-><init>()V

    .line 11
    new-instance v10, Le/j/k0;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    .line 12
    new-instance v11, Le/j/d;

    invoke-direct {v11, v4, v5, v6, v7}, Le/j/d;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const-string v12, "fields"

    const-string v13, "permission,status"

    .line 13
    invoke-static {v12, v13}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 14
    sget-object v14, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const-string v15, "me/permissions"

    invoke-virtual {v14, v2, v15, v11}, Lcom/facebook/GraphRequest$c;->h(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v11

    .line 15
    invoke-virtual {v11, v13}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    .line 16
    sget-object v13, Le/j/m0;->a:Le/j/m0;

    .line 17
    iput-object v13, v11, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    aput-object v11, v0, v1

    .line 18
    new-instance v1, Le/j/b;

    invoke-direct {v1, v8}, Le/j/b;-><init>(Le/j/v$d;)V

    .line 19
    iget-object v11, v2, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    if-nez v11, :cond_4

    const-string v11, "facebook"

    :cond_4
    const-string v15, "instagram"

    .line 20
    invoke-static {v11, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Le/j/v$c;

    invoke-direct {v11}, Le/j/v$c;-><init>()V

    goto :goto_2

    .line 21
    :cond_5
    new-instance v11, Le/j/v$b;

    invoke-direct {v11}, Le/j/v$b;-><init>()V

    .line 22
    :goto_2
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-interface {v11}, Le/j/v$e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "grant_type"

    invoke-virtual {v15, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, v2, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    const-string v9, "client_id"

    .line 25
    invoke-virtual {v15, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain"

    .line 26
    invoke-virtual {v15, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v11}, Le/j/v$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3, v1}, Lcom/facebook/GraphRequest$c;->h(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v15}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    .line 29
    iput-object v13, v1, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 30
    invoke-direct {v10, v0}, Le/j/k0;-><init>([Lcom/facebook/GraphRequest;)V

    .line 31
    new-instance v9, Le/j/c;

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Le/j/c;-><init>(Le/j/v$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Le/j/v;)V

    const-string v0, "callback"

    .line 32
    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, v10, Le/j/k0;->d:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 34
    iget-object v0, v10, Le/j/k0;->d:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_6
    invoke-virtual {v14, v10}, Lcom/facebook/GraphRequest$c;->d(Le/j/k0;)Le/j/j0;

    return-void
.end method

.method public final b(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    .line 3
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Le/j/v;->a:Ln3/x/a/a;

    invoke-virtual {p1, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public final c(Lcom/facebook/AccessToken;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/j/v;->c:Lcom/facebook/AccessToken;

    .line 2
    iput-object p1, p0, Le/j/v;->c:Lcom/facebook/AccessToken;

    .line 3
    iget-object v1, p0, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v1, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Le/j/v;->e:Ljava/util/Date;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Le/j/v;->b:Le/j/u;

    invoke-virtual {p2, p1}, Le/j/u;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Le/j/v;->b:Le/j/u;

    .line 7
    iget-object p2, p2, Le/j/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    sget-object p2, Le/j/f0;->a:Le/j/f0;

    sget-object p2, Le/j/f0;->a:Le/j/f0;

    .line 9
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/q0;->d(Landroid/content/Context;)V

    .line 10
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/q0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 11
    invoke-virtual {p0, v0, p1}, Le/j/v;->b(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 12
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object p2

    const-string v0, "alarm"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 15
    invoke-static {}, Lcom/facebook/AccessToken$c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p2, Lcom/facebook/AccessToken;->a:Ljava/util/Date;

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 19
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 v1, 0x1

    .line 20
    :try_start_0
    iget-object p2, p2, Lcom/facebook/AccessToken;->a:Ljava/util/Date;

    .line 21
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method
