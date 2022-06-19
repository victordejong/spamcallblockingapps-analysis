.class public final Le/a/g0/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/k/d;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/k/h;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/g0/k/h$a;

    invoke-direct {p1, p0}, Le/a/g0/k/h$a;-><init>(Le/a/g0/k/h;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g0/k/h;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g0/k/h;->d()Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;->shutdownUserDetect()Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public b()Le/a/g0/k/e;
    .locals 5

    .line 1
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    iget-object v1, p0, Le/a/g0/k/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v1

    const-string v2, "client/app_id"

    invoke-interface {v1, v2}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/g0/k/h;->d()Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;->userDetection(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hmf/tasks/Tasks;->await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "HMSTasks.await(hmsClient.userDetection(appId))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;

    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;->getResponseToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HMSTasks.await(hmsClient\u2026ion(appId)).responseToken"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/g0/k/h;->d()Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;->shutdownUserDetect()Lcom/huawei/hmf/tasks/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hmf/tasks/Tasks;->await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    .line 4
    new-instance v2, Le/a/g0/k/e$b;

    invoke-direct {v2, v1, v0}, Le/a/g0/k/e$b;-><init>(Ljava/lang/String;Le/a/d4/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v1

    .line 5
    instance-of v2, v1, Lcom/huawei/hms/common/ApiException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/huawei/hms/common/ApiException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.huawei.hms.common.ApiException"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const/16 v2, 0x4d59

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    new-instance v2, Le/a/g0/k/f$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    :goto_1
    const/16 v2, 0x4a3a

    if-nez v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    new-instance v2, Le/a/g0/k/f$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_5
    :goto_2
    const/16 v2, 0x4a39

    if-nez v1, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7

    new-instance v2, Le/a/g0/k/f$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    :goto_3
    const/16 v2, 0x4a3b

    if-nez v1, :cond_8

    goto :goto_4

    .line 10
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_9

    new-instance v2, Le/a/g0/k/f$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    :goto_4
    const/16 v2, 0x4b02

    if-nez v1, :cond_a

    goto :goto_5

    .line 11
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_b

    new-instance v2, Le/a/g0/k/f$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    :goto_5
    const/16 v2, 0x4d5a

    if-nez v1, :cond_c

    goto :goto_6

    .line 12
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_d

    new-instance v2, Le/a/g0/k/f$a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_6
    const/16 v2, 0x4d58

    if-nez v1, :cond_e

    goto :goto_7

    .line 13
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_f

    new-instance v2, Le/a/g0/k/f$a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    :goto_7
    if-nez v1, :cond_10

    .line 14
    new-instance v2, Le/a/g0/k/f$b;

    invoke-direct {v2, v3}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 15
    :cond_10
    new-instance v2, Le/a/g0/k/f$b;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    .line 16
    :goto_8
    new-instance v1, Le/a/g0/k/e$a;

    new-instance v3, Le/a/g0/k/a;

    invoke-direct {v3, v2}, Le/a/g0/k/a;-><init>(Le/a/g0/k/f;)V

    invoke-direct {v1, v3, v0}, Le/a/g0/k/e$a;-><init>(Le/a/g0/k/a;Le/a/d4/e;)V

    move-object v2, v1

    :goto_9
    return-object v2
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g0/k/h;->d()Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;->initUserDetect()Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public final d()Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;
    .locals 1

    iget-object v0, p0, Le/a/g0/k/h;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    return-object v0
.end method
