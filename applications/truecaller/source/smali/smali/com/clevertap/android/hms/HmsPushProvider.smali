.class public Lcom/clevertap/android/hms/HmsPushProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/w0/a;


# instance fields
.field private final ctPushListener:Le/h/a/c/w0/b;

.field private hmsSdkHandler:Le/h/a/a/f;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/b;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/clevertap/android/hms/HmsPushProvider;->ctPushListener:Le/h/a/c/w0/b;

    .line 3
    new-instance p1, Le/h/a/a/d;

    invoke-direct {p1, p2, p3}, Le/h/a/a/d;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    iput-object p1, p0, Lcom/clevertap/android/hms/HmsPushProvider;->hmsSdkHandler:Le/h/a/a/f;

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
    sget-object v0, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/hms/HmsPushProvider;->hmsSdkHandler:Le/h/a/a/f;

    check-cast v0, Le/h/a/a/d;

    .line 2
    invoke-virtual {v0}, Le/h/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/hms/HmsPushProvider;->hmsSdkHandler:Le/h/a/a/f;

    check-cast v0, Le/h/a/a/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v2

    iget-object v3, v0, Le/h/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :catchall_0
    iget-object v0, v0, Le/h/a/a/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Le/h/a/a/b;->a:Ljava/lang/String;

    const-string v4, "HMS is supported check failed."

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v4, "PushProvider"

    invoke-virtual {v0, v4}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public minSDKSupportVersionCode()I
    .locals 1

    const/16 v0, 0x7850

    return v0
.end method

.method public requestToken()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/hms/HmsPushProvider;->ctPushListener:Le/h/a/c/w0/b;

    iget-object v1, p0, Lcom/clevertap/android/hms/HmsPushProvider;->hmsSdkHandler:Le/h/a/a/f;

    check-cast v1, Le/h/a/a/d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Le/h/a/a/d;->a()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, v1, Le/h/a/a/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v4

    const-string v5, "HCM"

    invoke-virtual {v4, v3, v5}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    iget-object v1, v1, Le/h/a/a/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    sget-object v3, Le/h/a/a/b;->a:Ljava/lang/String;

    .line 7
    iget-object v3, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v4, "PushProvider"

    invoke-virtual {v1, v4}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/clevertap/android/hms/HmsPushProvider;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/h/a/c/w0/b;->a(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    return-void
.end method

.method public setHmsSdkHandler(Le/h/a/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/hms/HmsPushProvider;->hmsSdkHandler:Le/h/a/a/f;

    return-void
.end method
