.class public Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/w0/a;


# instance fields
.field private handler:Le/h/a/c/w0/m/c;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/b;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/h/a/c/w0/m/b;

    invoke-direct {v0, p1, p2, p3}, Le/h/a/c/w0/m/b;-><init>(Le/h/a/c/w0/b;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    iput-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    return-void
.end method


# virtual methods
.method public getPlatform()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPushType()Le/h/a/c/w0/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    check-cast v0, Le/h/a/c/w0/m/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PushProvider"

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, v0, Le/h/a/c/w0/m/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    sget-object v5, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 6
    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->d(Landroid/content/Context;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :catch_0
    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 7
    :try_start_2
    iget-object v3, v0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Google Play services is currently unavailable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v3, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Le/m/d/g;->a()V

    .line 11
    iget-object v3, v3, Le/m/d/g;->c:Le/m/d/i;

    .line 12
    iget-object v3, v3, Le/m/d/i;->e:Ljava/lang/String;

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v3, v0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "The FCM sender ID is not set. Unable to register for FCM."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v5, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v3, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    .line 16
    :catchall_0
    iget-object v0, v0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    sget-object v3, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    .line 17
    iget-object v3, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v2
.end method

.method public isSupported()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    check-cast v0, Le/h/a/c/w0/m/b;

    .line 2
    iget-object v0, v0, Le/h/a/c/w0/m/b;->b:Landroid/content/Context;

    const-string v1, "com.android.vending"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "com.google.market"

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    goto :goto_1

    :catch_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_2
    return v2
.end method

.method public minSDKSupportVersionCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestToken()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    check-cast v0, Le/h/a/c/w0/m/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PushProvider"

    .line 3
    :try_start_0
    iget-object v2, v0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Requesting FCM token using googleservices.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v2, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Le/h/a/c/w0/m/a;

    invoke-direct {v3, v0}, Le/h/a/c/w0/m/a;-><init>(Le/h/a/c/w0/m/b;)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    iget-object v2, v0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    sget-object v3, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    .line 9
    iget-object v3, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v2, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, v0, Le/h/a/c/w0/m/b;->c:Le/h/a/c/w0/b;

    const/4 v1, 0x0

    sget-object v2, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    invoke-interface {v0, v1, v2}, Le/h/a/c/w0/b;->a(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    :goto_0
    return-void
.end method

.method public setHandler(Le/h/a/c/w0/m/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider;->handler:Le/h/a/c/w0/m/c;

    return-void
.end method
