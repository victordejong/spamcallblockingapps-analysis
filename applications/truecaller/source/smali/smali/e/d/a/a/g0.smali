.class public final synthetic Le/d/a/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:Le/d/a/a/l;

.field public final synthetic c:Le/d/a/a/m;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Le/d/a/a/l;Le/d/a/a/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/g0;->a:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/g0;->b:Le/d/a/a/l;

    iput-object p3, p0, Le/d/a/a/g0;->c:Le/d/a/a/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le/d/a/a/g0;->a:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/g0;->b:Le/d/a/a/l;

    iget-object v2, p0, Le/d/a/a/g0;->c:Le/d/a/a/m;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "BillingClient"

    .line 2
    iget-object v4, v1, Le/d/a/a/l;->a:Ljava/lang/String;

    :try_start_0
    const-string v5, "Consuming purchase with token: "

    .line 3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 4
    :cond_0
    new-instance v6, Ljava/lang/String;

    .line 5
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_0
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v0, Le/d/a/a/e;->m:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const/16 v6, 0x9

    iget-object v7, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Le/d/a/a/e;->m:Z

    iget-object v0, v0, Le/d/a/a/e;->b:Ljava/lang/String;

    .line 7
    invoke-static {v1, v8, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzc(Le/d/a/a/l;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 8
    invoke-interface {v5, v6, v7, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzd;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v5, 0x3

    iget-object v0, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {v1, v5, v0, v4}, Lcom/google/android/gms/internal/play_billing/zzd;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    .line 14
    :goto_1
    :try_start_1
    new-instance v5, Le/d/a/a/k;

    invoke-direct {v5}, Le/d/a/a/k;-><init>()V

    .line 15
    iput v1, v5, Le/d/a/a/k;->a:I

    .line 16
    iput-object v0, v5, Le/d/a/a/k;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v0, "Successfully consumed purchase."

    .line 17
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v2, v5, v4}, Le/d/a/a/m;->a(Le/d/a/a/k;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x3f

    .line 19
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error consuming purchase with token. Response code: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {v2, v5, v4}, Le/d/a/a/m;->a(Le/d/a/a/k;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error consuming purchase; ex: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-interface {v2, v0, v4}, Le/d/a/a/m;->a(Le/d/a/a/k;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
