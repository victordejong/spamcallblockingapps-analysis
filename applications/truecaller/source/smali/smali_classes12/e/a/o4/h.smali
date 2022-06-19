.class public final Le/a/o4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o4/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/d4/c;

.field public final c:Le/a/z4/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/d4/c;Le/a/z4/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o4/h;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/o4/h;->b:Le/a/d4/c;

    iput-object p3, p0, Le/a/o4/h;->c:Le/a/z4/d;

    return-void
.end method


# virtual methods
.method public a()Le/a/o4/d;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o4/h;->b:Le/a/d4/c;

    invoke-interface {v0}, Le/a/d4/c;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2
    instance-of v2, v0, Le/a/d4/e$a;

    if-eqz v2, :cond_2

    const-string v3, "Tasks.forException(e)"

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v4

    const-string v5, "FirebaseMessaging.getInstance()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    const-string v5, "FirebaseMessaging.getInstance().token"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 10
    :cond_2
    instance-of v3, v0, Le/a/d4/e$b;

    if-eqz v3, :cond_a

    .line 11
    :try_start_1
    iget-object v3, p0, Le/a/o4/h;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v3

    const-string v4, "client/app_id"

    invoke-interface {v3, v4}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "HMS app ID is null"

    .line 12
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v4, p0, Le/a/o4/h;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v4

    const-string v5, "HCM"

    invoke-virtual {v4, v3, v5}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    :goto_1
    move-object v3, v1

    :goto_2
    const-string v4, "hcmPushToken"

    const-string v5, "gcmRegistrationId"

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 14
    iget-object v2, p0, Le/a/o4/h;->c:Le/a/z4/d;

    invoke-interface {v2, v5, v3}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :cond_4
    instance-of v2, v0, Le/a/d4/e$b;

    if-eqz v2, :cond_7

    iget-object v2, p0, Le/a/o4/h;->c:Le/a/z4/d;

    invoke-interface {v2, v4, v3}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Le/a/o4/h;->c:Le/a/z4/d;

    invoke-interface {v2, v5}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v3, v2

    goto :goto_4

    .line 17
    :cond_6
    instance-of v2, v0, Le/a/d4/e$b;

    if-eqz v2, :cond_9

    iget-object v2, p0, Le/a/o4/h;->c:Le/a/z4/d;

    invoke-interface {v2, v4}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 18
    new-instance v1, Le/a/o4/d;

    invoke-direct {v1, v3, v0}, Le/a/o4/d;-><init>(Ljava/lang/String;Le/a/d4/e;)V

    :cond_8
    return-object v1

    .line 19
    :cond_9
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 20
    :cond_a
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_b
    return-object v1
.end method
