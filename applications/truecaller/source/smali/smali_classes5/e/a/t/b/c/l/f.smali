.class public Le/a/t/b/c/l/f;
.super Le/a/t/b/c/l/b;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Lcom/truecaller/android/sdk/models/CreateInstallationModel;

.field public final f:Le/a/t/b/c/i;

.field public final g:Le/a/t/b/c/m/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Lcom/truecaller/android/sdk/clients/VerificationCallback;Le/a/t/b/c/m/a;ZLe/a/t/b/c/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, p5, v0}, Le/a/t/b/c/l/b;-><init>(Lcom/truecaller/android/sdk/clients/VerificationCallback;ZI)V

    .line 2
    iput-object p1, p0, Le/a/t/b/c/l/f;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/t/b/c/l/f;->e:Lcom/truecaller/android/sdk/models/CreateInstallationModel;

    .line 4
    iput-object p6, p0, Le/a/t/b/c/l/f;->f:Le/a/t/b/c/i;

    .line 5
    iput-object p4, p0, Le/a/t/b/c/l/f;->g:Le/a/t/b/c/m/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Lcom/truecaller/android/sdk/clients/VerificationCallback;ZLe/a/t/b/c/i;Le/a/t/b/c/m/a;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p3, p4, p7}, Le/a/t/b/c/l/b;-><init>(Lcom/truecaller/android/sdk/clients/VerificationCallback;ZI)V

    .line 7
    iput-object p1, p0, Le/a/t/b/c/l/f;->d:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Le/a/t/b/c/l/f;->e:Lcom/truecaller/android/sdk/models/CreateInstallationModel;

    .line 9
    iput-object p5, p0, Le/a/t/b/c/l/f;->f:Le/a/t/b/c/i;

    .line 10
    iput-object p6, p0, Le/a/t/b/c/l/f;->g:Le/a/t/b/c/m/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/c/l/f;->e:Lcom/truecaller/android/sdk/models/CreateInstallationModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->setVerificationAttempt(I)V

    .line 2
    iget-object v0, p0, Le/a/t/b/c/l/f;->f:Le/a/t/b/c/i;

    iget-object v1, p0, Le/a/t/b/c/l/f;->d:Ljava/lang/String;

    iget-object v2, p0, Le/a/t/b/c/l/f;->e:Lcom/truecaller/android/sdk/models/CreateInstallationModel;

    invoke-interface {v0, v1, v2, p0}, Le/a/t/b/c/i;->d(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Le/a/t/b/c/l/f;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/Map;

    const-string v0, "status"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const-string v0, "verificationToken"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/a/t/b/c/l/f;->f:Le/a/t/b/c/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Le/a/t/b/c/i;->i(Ljava/lang/String;J)V

    .line 6
    invoke-virtual {p0, p1}, Le/a/t/b/c/l/f;->c(Ljava/util/Map;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "accessToken"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    iget-object v0, p0, Le/a/t/b/c/l/f;->f:Le/a/t/b/c/i;

    iget-object v1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    invoke-interface {v0, p1, v1}, Le/a/t/b/c/i;->e(Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v0, p0, Le/a/t/b/c/l/b;->b:I

    new-instance v1, Lcom/truecaller/android/sdk/TrueException;

    const/4 v2, 0x1

    const-string v3, "Unknown error"

    invoke-direct {v1, v2, v3}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tokenTtl"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Le/a/t/b/c/h;

    invoke-direct {v0}, Le/a/t/b/c/h;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, v0, Le/a/t/b/c/h;->a:Ljava/util/Map;

    const-string v2, "ttl"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestSuccess(ILe/a/t/b/c/h;)V

    .line 7
    iget-object p1, p0, Le/a/t/b/c/l/f;->g:Le/a/t/b/c/m/a;

    iget-object v0, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    .line 8
    iget-object v1, p1, Le/a/t/b/c/m/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p1, Le/a/t/b/c/m/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/auth-api-phone/zzu;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzu;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth-api-phone/zzu;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    .line 12
    new-instance v1, Le/a/t/b/c/m/b;

    invoke-direct {v1, v0}, Le/a/t/b/c/m/b;-><init>(Lcom/truecaller/android/sdk/clients/VerificationCallback;)V

    .line 13
    iget-object p1, p1, Le/a/t/b/c/m/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method
