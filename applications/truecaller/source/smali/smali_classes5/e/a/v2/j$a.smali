.class public final Le/a/v2/j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v2/j;->b(Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/v2/o<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.attestation.AttestationProviderImpl$attest$2"
    f = "AttestationProvider.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v2/j;

.field public final synthetic g:Lcom/truecaller/attestation/AttestationEngine;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/v2/j;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    iput-object p2, p0, Le/a/v2/j$a;->g:Lcom/truecaller/attestation/AttestationEngine;

    iput-object p3, p0, Le/a/v2/j$a;->h:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/v2/j$a;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v2/j$a;

    iget-object v1, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    iget-object v2, p0, Le/a/v2/j$a;->g:Lcom/truecaller/attestation/AttestationEngine;

    iget-object v3, p0, Le/a/v2/j$a;->h:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/v2/j$a;->i:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/v2/j$a;-><init>(Le/a/v2/j;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v2/j$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v2/j$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v2/j$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Le/a/v2/l$a$c;->b:Le/a/v2/l$a$c;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/v2/j$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v2/j$a;->g:Lcom/truecaller/attestation/AttestationEngine;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    if-eq p1, v3, :cond_7

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 5
    iget-object p1, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    iget-object v2, p0, Le/a/v2/j$a;->h:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/v2/j$a;->i:Z

    invoke-static {p1, v2, v4}, Le/a/v2/j;->a(Le/a/v2/j;Ljava/lang/String;Z)[B

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    iget-object v2, v0, Le/a/v2/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v2

    const-string v4, "client/app_id"

    invoke-interface {v2, v4}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v0, v0, Le/a/v2/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetect;->getClient(Landroid/content/Context;)Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;->sysIntegrity([BLjava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/huawei/hmf/tasks/Tasks;->await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "HMSTasks.await(\n        \u2026nce, appId)\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;->getResult()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Le/a/v2/o$a;

    new-instance v0, Le/a/v2/l$a$d;

    invoke-direct {v0, v1, v3}, Le/a/v2/l$a$d;-><init>(Ljava/lang/Integer;I)V

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 11
    :cond_2
    new-instance v0, Le/a/v2/o$b;

    invoke-direct {v0, p1}, Le/a/v2/o$b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 12
    instance-of v0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.huawei.hms.common.ApiException"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    :cond_4
    :goto_1
    new-instance p1, Le/a/v2/o$a;

    new-instance v0, Le/a/v2/l$a$d;

    invoke-direct {v0, v1}, Le/a/v2/l$a$d;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 15
    :cond_5
    new-instance p1, Le/a/v2/o$a;

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 16
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :cond_7
    iget-object p1, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    iget-object v2, p0, Le/a/v2/j$a;->h:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/v2/j$a;->i:Z

    invoke-static {p1, v2, v4}, Le/a/v2/j;->a(Le/a/v2/j;Ljava/lang/String;Z)[B

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :try_start_1
    iget-object v2, v0, Le/a/v2/j;->a:Landroid/content/Context;

    .line 20
    sget-object v4, Lcom/google/android/gms/safetynet/SafetyNet;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v4, Lcom/google/android/gms/safetynet/SafetyNetClient;

    invoke-direct {v4, v2}, Lcom/google/android/gms/safetynet/SafetyNetClient;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v0, v0, Le/a/v2/j;->a:Landroid/content/Context;

    sget v2, Lcom/truecaller/attestation/R$string;->google_api_key:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/safetynet/zzk;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;

    invoke-direct {v0}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "GMSTasks.await(\n        \u2026e_api_key))\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/common/api/Response;->a:Lcom/google/android/gms/common/api/Result;

    .line 25
    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$zza;

    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$zza;->getJwsResult()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 26
    new-instance p1, Le/a/v2/o$a;

    new-instance v0, Le/a/v2/l$a$d;

    invoke-direct {v0, v1, v3}, Le/a/v2/l$a$d;-><init>(Ljava/lang/Integer;I)V

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 27
    :cond_8
    new-instance v0, Le/a/v2/o$b;

    invoke-direct {v0, p1}, Le/a/v2/o$b;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 28
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 30
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 32
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.google.android.gms.common.api.ApiException"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 34
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 36
    :cond_a
    :goto_2
    new-instance p1, Le/a/v2/o$a;

    new-instance v0, Le/a/v2/l$a$d;

    invoke-direct {v0, v1}, Le/a/v2/l$a$d;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 37
    :cond_b
    new-instance p1, Le/a/v2/o$a;

    invoke-direct {p1, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto/16 :goto_4

    .line 38
    :cond_c
    iget-object p1, p0, Le/a/v2/j$a;->f:Le/a/v2/j;

    iget-object v0, p0, Le/a/v2/j$a;->h:Ljava/lang/String;

    iput v3, p0, Le/a/v2/j$a;->e:I

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Ls1/w/i;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ls1/w/i;-><init>(Ls1/w/d;)V

    const-string v3, "Null nonce"

    .line 41
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    new-instance v3, Le/m/a/h/a/c/f;

    .line 43
    invoke-direct {v3, v0}, Le/m/a/h/a/c/f;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object p1, p1, Le/a/v2/j;->a:Landroid/content/Context;

    .line 45
    const-class v0, Le/m/a/h/a/c/j;

    monitor-enter v0

    :try_start_2
    sget-object v4, Le/m/a/h/a/c/j;->a:Le/m/a/h/a/c/i;

    if-nez v4, :cond_e

    new-instance v4, Le/m/a/h/a/c/h;

    invoke-direct {v4}, Le/m/a/h/a/c/h;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_d

    move-object p1, v5

    .line 47
    :cond_d
    iput-object p1, v4, Le/m/a/h/a/c/h;->a:Landroid/content/Context;

    .line 48
    const-class v5, Landroid/content/Context;

    .line 49
    invoke-static {p1, v5}, Ln3/g0/y;->G2(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance p1, Le/m/a/h/a/c/i;

    iget-object v4, v4, Le/m/a/h/a/c/h;->a:Landroid/content/Context;

    .line 50
    invoke-direct {p1, v4}, Le/m/a/h/a/c/i;-><init>(Landroid/content/Context;)V

    .line 51
    sput-object p1, Le/m/a/h/a/c/j;->a:Le/m/a/h/a/c/i;

    :cond_e
    sget-object p1, Le/m/a/h/a/c/j;->a:Le/m/a/h/a/c/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    .line 52
    iget-object p1, p1, Le/m/a/h/a/c/i;->d:Le/m/a/h/a/d/k1;

    .line 53
    invoke-interface {p1}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/h/a/c/a;

    .line 54
    invoke-interface {p1, v3}, Le/m/a/h/a/c/a;->a(Le/m/a/h/a/c/c;)Le/m/a/h/a/h/r;

    move-result-object p1

    .line 55
    new-instance v0, Le/a/v2/k;

    invoke-direct {v0, v2}, Le/a/v2/k;-><init>(Ls1/w/d;)V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v3, Le/m/a/h/a/h/e;->a:Ljava/util/concurrent/Executor;

    iget-object v4, p1, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    new-instance v5, Le/m/a/h/a/h/g;

    .line 58
    invoke-direct {v5, v3, v0}, Le/m/a/h/a/h/g;-><init>(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/a;)V

    invoke-virtual {v4, v5}, Le/m/a/h/a/h/m;->a(Le/m/a/h/a/h/l;)V

    .line 59
    invoke-virtual {p1}, Le/m/a/h/a/h/r;->h()V

    .line 60
    invoke-virtual {v2}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    const-string v0, "frame"

    .line 61
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    if-ne p1, v1, :cond_10

    return-object v1

    .line 62
    :cond_10
    :goto_3
    check-cast p1, Le/a/v2/o;

    :goto_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit v0

    throw p1
.end method
