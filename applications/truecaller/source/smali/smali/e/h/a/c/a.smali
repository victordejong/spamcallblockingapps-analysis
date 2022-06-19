.class public Le/h/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/f;

.field public final b:Le/h/a/c/n0/a;

.field public final c:Le/h/a/c/k;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Landroid/content/Context;

.field public final f:Le/h/a/c/w;

.field public final g:Le/h/a/c/q0/b0;

.field public final h:Le/h/a/c/w0/i;

.field public final i:Le/h/a/c/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/f;Le/h/a/c/w;Le/h/a/c/i0;Le/h/a/c/w0/i;Le/h/a/c/k;Le/h/a/c/q0/b0;Le/h/a/c/n0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/a;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iput-object p3, p0, Le/h/a/c/a;->a:Le/h/a/c/f;

    .line 5
    iput-object p4, p0, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 6
    iput-object p5, p0, Le/h/a/c/a;->i:Le/h/a/c/i0;

    .line 7
    iput-object p6, p0, Le/h/a/c/a;->h:Le/h/a/c/w0/i;

    .line 8
    iput-object p7, p0, Le/h/a/c/a;->c:Le/h/a/c/k;

    .line 9
    iput-object p8, p0, Le/h/a/c/a;->g:Le/h/a/c/q0/b0;

    .line 10
    iput-object p9, p0, Le/h/a/c/a;->b:Le/h/a/c/n0/a;

    return-void
.end method

.method public static a(Le/h/a/c/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Starting to handle install referrer"

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/h/a/c/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 5
    new-instance v1, Le/h/a/c/b;

    invoke-direct {v1, p0, v0}, Le/h/a/c/b;-><init>(Le/h/a/c/a;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object p0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Google Play Install Referrer\'s InstallReferrerClient Class not found - "

    .line 8
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n Please add implementation \'com.android.installreferrer:installreferrer:2.1\' to your build.gradle"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v1, p0, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Le/h/a/c/w;->t:Z

    .line 2
    iget-object v0, p0, Le/h/a/c/a;->i:Le/h/a/c/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Le/h/a/c/i0;->a:J

    .line 4
    iget-object v0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "App in background"

    .line 6
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Le/h/a/c/a;->f:Le/h/a/c/w;

    invoke-virtual {v1}, Le/h/a/c/w;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    :try_start_0
    iget-object v1, p0, Le/h/a/c/a;->e:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "sexe"

    .line 10
    invoke-static {v2, v3}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v1, v2, v0}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated session time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Failed to update session time time: "

    .line 17
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "App in foreground"

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/a;->i:Le/h/a/c/i0;

    .line 5
    iget-wide v1, v0, Le/h/a/c/i0;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    iget-wide v5, v0, Le/h/a/c/i0;->a:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x124f80

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 8
    iget-object v1, v0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v3, v0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Session Timed Out"

    .line 10
    invoke-virtual {v1, v3, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Le/h/a/c/i0;->a()V

    .line 12
    invoke-static {v2}, Le/h/a/c/w;->e(Landroid/app/Activity;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Le/h/a/c/a;->f:Le/h/a/c/w;

    invoke-virtual {v0}, Le/h/a/c/w;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Le/h/a/c/a;->a:Le/h/a/c/f;

    invoke-virtual {v0}, Le/h/a/c/f;->h()V

    .line 15
    iget-object v0, p0, Le/h/a/c/a;->a:Le/h/a/c/f;

    invoke-virtual {v0}, Le/h/a/c/f;->a()V

    .line 16
    iget-object v0, p0, Le/h/a/c/a;->h:Le/h/a/c/w0/i;

    .line 17
    iget-object v1, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object v1

    .line 18
    new-instance v3, Le/h/a/c/w0/l;

    invoke-direct {v3, v0}, Le/h/a/c/w0/l;-><init>(Le/h/a/c/w0/i;)V

    .line 19
    iget-object v0, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 20
    new-instance v4, Le/h/a/c/y0/j;

    const-string v5, "PushProviders#refreshAllTokens"

    invoke-direct {v4, v1, v5, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 21
    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 23
    new-instance v1, Le/h/a/c/a$a;

    invoke-direct {v1, p0}, Le/h/a/c/a$a;-><init>(Le/h/a/c/a;)V

    .line 24
    iget-object v3, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v4, Le/h/a/c/y0/j;

    const-string v5, "HandlingInstallReferrer"

    invoke-direct {v4, v0, v5, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 26
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :try_start_0
    iget-object v0, p0, Le/h/a/c/a;->c:Le/h/a/c/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    :catch_0
    iget-object v0, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 29
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Failed to trigger location"

    .line 30
    invoke-virtual {v0, v1, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 31
    iget-object v1, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v3, p0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_2
    :goto_1
    iget-object v0, p0, Le/h/a/c/a;->b:Le/h/a/c/n0/a;

    invoke-virtual {v0}, Le/h/a/c/n0/a;->c()V

    .line 35
    iget-object v0, p0, Le/h/a/c/a;->g:Le/h/a/c/q0/b0;

    .line 36
    invoke-virtual {v0}, Le/h/a/c/q0/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    sget-object v1, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sget-object v1, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 38
    iget-wide v5, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 39
    move-object v1, p1

    check-cast v1, Ln3/r/a/l;

    invoke-virtual {v1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 40
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManager;->N(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 42
    invoke-static {}, Le/h/a/c/w;->a()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 43
    invoke-virtual {v1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 44
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    sget-object v5, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    const-string v6, "inApp"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    iget-object v5, v0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "config"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/high16 v1, 0x10b0000

    const v5, 0x10b0001

    .line 49
    invoke-virtual {v4, v1, v5}, Ln3/r/a/f0;->n(II)Ln3/r/a/f0;

    const v1, 0x1020002

    .line 50
    sget-object v5, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 51
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    const/4 v6, 0x1

    .line 52
    invoke-virtual {v4, v1, v3, v5, v6}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 53
    iget-object v0, v0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 54
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 55
    sget-object v0, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 56
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 57
    invoke-virtual {v4}, Ln3/r/a/a;->f()I

    .line 58
    :cond_3
    iget-object v0, p0, Le/h/a/c/a;->g:Le/h/a/c/q0/b0;

    .line 59
    invoke-virtual {v0}, Le/h/a/c/q0/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    iget-object p1, v0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    .line 61
    iget-object p1, p1, Le/h/a/c/y0/e;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 62
    iget-object p1, v0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, v0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 63
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Found a pending inapp runnable. Scheduling it"

    .line 64
    invoke-virtual {p1, v1, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, v0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    .line 66
    iget-object v1, p1, Le/h/a/c/y0/e;->a:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    .line 67
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    iget-object p1, v0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    .line 69
    iput-object v2, p1, Le/h/a/c/y0/e;->a:Ljava/lang/Runnable;

    goto :goto_2

    .line 70
    :cond_4
    iget-object p1, v0, Le/h/a/c/q0/b0;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Le/h/a/c/q0/b0;->i(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method
