.class public Le/h/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/a/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/h/a/a/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/h/a/a/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v0

    const-string v1, "client/app_id"

    invoke-interface {v0, v1}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    iget-object v0, p0, Le/h/a/a/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Le/h/a/a/b;->a:Ljava/lang/String;

    const-string v3, "HMS availability check failed."

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v3, "PushProvider"

    invoke-virtual {v0, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
