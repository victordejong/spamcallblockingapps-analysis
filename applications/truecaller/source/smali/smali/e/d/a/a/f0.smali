.class public final synthetic Le/d/a/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:Le/d/a/a/b;

.field public final synthetic c:Le/d/a/a/c;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Le/d/a/a/b;Le/d/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/f0;->a:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/f0;->b:Le/d/a/a/b;

    iput-object p3, p0, Le/d/a/a/f0;->c:Le/d/a/a/c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le/d/a/a/f0;->a:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/f0;->b:Le/d/a/a/b;

    iget-object v2, p0, Le/d/a/a/f0;->c:Le/d/a/a/c;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "it"

    const-string v4, "BillingClient"

    :try_start_0
    iget-object v5, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const/16 v6, 0x9

    iget-object v7, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3
    iget-object v8, v1, Le/d/a/a/b;->a:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Le/d/a/a/e;->b:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Le/d/a/a/b;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 6
    invoke-interface {v5, v6, v7, v8, v0}, Lcom/google/android/gms/internal/play_billing/zzd;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 8
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v4, Le/d/a/a/k;

    invoke-direct {v4}, Le/d/a/a/k;-><init>()V

    .line 10
    iput v1, v4, Le/d/a/a/k;->a:I

    .line 11
    iput-object v0, v4, Le/d/a/a/k;->b:Ljava/lang/String;

    .line 12
    check-cast v2, Le/d/a/a/f;

    .line 13
    iget-object v0, v2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 14
    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error acknowledge purchase; ex: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    check-cast v2, Le/d/a/a/f;

    .line 17
    iget-object v1, v2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 18
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
