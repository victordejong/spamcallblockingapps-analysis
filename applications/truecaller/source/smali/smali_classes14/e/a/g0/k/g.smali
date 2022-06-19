.class public final Le/a/g0/k/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/k/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/safetynet/SafetyNetClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "pu+rsk"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "recaptchaKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safetyNetClient"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/k/g;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/g0/k/g;->b:Lcom/google/android/gms/safetynet/SafetyNetClient;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Le/a/g0/k/e;
    .locals 5

    .line 1
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    :try_start_0
    iget-object v1, p0, Le/a/g0/k/g;->b:Lcom/google/android/gms/safetynet/SafetyNetClient;

    iget-object v2, p0, Le/a/g0/k/g;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/android/gms/safetynet/SafetyNet;->d:Lcom/google/android/gms/safetynet/SafetyNetApi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/safetynet/SafetyNetApi;->verifyWithRecaptcha(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GMSTasks.await(safetyNet\u2026hRecaptcha(recaptchaKey))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/common/api/Response;->a:Lcom/google/android/gms/common/api/Result;

    .line 5
    check-cast v1, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResult;

    invoke-interface {v1}, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResult;->getTokenResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMSTasks.await(safetyNet\u2026ecaptchaKey)).tokenResult"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Le/a/g0/k/e$b;

    invoke-direct {v2, v1, v0}, Le/a/g0/k/e$b;-><init>(Ljava/lang/String;Le/a/d4/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v1

    .line 8
    instance-of v2, v1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 10
    iget v1, v1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.google.android.gms.common.api.ApiException"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 14
    iget v1, v1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const/16 v2, 0x2ee7

    if-nez v1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    new-instance v1, Le/a/g0/k/f$a;

    const-string v2, "RECAPTCHA_INVALID_SITEKEY"

    invoke-direct {v1, v2}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    :goto_1
    const/16 v2, 0x2ee8

    if-nez v1, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    new-instance v1, Le/a/g0/k/f$a;

    const-string v2, "RECAPTCHA_INVALID_KEYTYPE"

    invoke-direct {v1, v2}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_5
    :goto_2
    const/16 v2, 0x2eed

    if-nez v1, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7

    new-instance v1, Le/a/g0/k/f$a;

    const-string v2, "RECAPTCHA_INVALID_PACKAGE_NAME"

    invoke-direct {v1, v2}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    :goto_3
    const/16 v2, 0x2ee6

    if-nez v1, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_9

    new-instance v1, Le/a/g0/k/f$a;

    const-string v2, "UNSUPPORTED_SDK_VERSION"

    invoke-direct {v1, v2}, Le/a/g0/k/f$a;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    :goto_4
    const/16 v2, 0xf

    if-nez v1, :cond_a

    goto :goto_5

    .line 20
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_b

    new-instance v1, Le/a/g0/k/f$c;

    const-string v2, "TIMEOUT"

    invoke-direct {v1, v2}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    :goto_5
    const/4 v2, 0x7

    if-nez v1, :cond_c

    goto :goto_6

    .line 21
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_d

    new-instance v1, Le/a/g0/k/f$c;

    const-string v2, "NETWORK_ERROR"

    invoke-direct {v1, v2}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_6
    const/16 v2, 0xd

    if-nez v1, :cond_e

    goto :goto_7

    .line 22
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_f

    new-instance v1, Le/a/g0/k/f$c;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Le/a/g0/k/f$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 23
    :cond_f
    :goto_7
    new-instance v2, Le/a/g0/k/f$b;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_10
    invoke-direct {v2, v3}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 24
    :goto_8
    new-instance v2, Le/a/g0/k/e$a;

    new-instance v3, Le/a/g0/k/a;

    invoke-direct {v3, v1}, Le/a/g0/k/a;-><init>(Le/a/g0/k/f;)V

    invoke-direct {v2, v3, v0}, Le/a/g0/k/e$a;-><init>(Le/a/g0/k/a;Le/a/d4/e;)V

    :goto_9
    return-object v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
