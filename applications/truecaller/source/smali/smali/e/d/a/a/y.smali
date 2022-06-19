.class public final synthetic Le/d/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/z;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/y;->a:Le/d/a/a/z;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/d/a/a/y;->a:Le/d/a/a/z;

    .line 1
    iget-object v1, v0, Le/d/a/a/z;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Le/d/a/a/z;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    monitor-exit v1

    goto/16 :goto_10

    .line 3
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 4
    iget-object v4, v4, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v5, 0x10

    move v7, v1

    move v6, v5

    :goto_0
    if-lt v6, v1, :cond_2

    :try_start_2
    iget-object v8, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 6
    iget-object v8, v8, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const-string v9, "subs"

    .line 7
    invoke-interface {v8, v6, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzd;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :catch_0
    move v1, v7

    goto/16 :goto_e

    :cond_2
    move v6, v2

    :goto_1
    iget-object v8, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-lt v6, v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    move v9, v2

    .line 8
    :goto_2
    iput-boolean v9, v8, Le/d/a/a/e;->i:Z

    if-lt v6, v1, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v2

    .line 9
    :goto_3
    iput-boolean v9, v8, Le/d/a/a/e;->h:Z

    if-ge v6, v1, :cond_5

    const-string v6, "BillingClient"

    const-string v8, "In-app billing API does not support subscription on this device."

    .line 10
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v6, v5

    :goto_4
    if-lt v6, v1, :cond_7

    iget-object v8, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 11
    iget-object v8, v8, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const-string v9, "inapp"

    .line 12
    invoke-interface {v8, v6, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzd;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    iget-object v4, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 13
    iput v6, v4, Le/d/a/a/e;->j:I

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 14
    :cond_7
    :goto_5
    iget-object v4, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 15
    iget v6, v4, Le/d/a/a/e;->j:I

    if-lt v6, v5, :cond_8

    move v5, v10

    goto :goto_6

    :cond_8
    move v5, v2

    .line 16
    :goto_6
    iput-boolean v5, v4, Le/d/a/a/e;->r:Z

    const/16 v5, 0xf

    if-lt v6, v5, :cond_9

    move v5, v10

    goto :goto_7

    :cond_9
    move v5, v2

    .line 17
    :goto_7
    iput-boolean v5, v4, Le/d/a/a/e;->q:Z

    const/16 v5, 0xe

    if-lt v6, v5, :cond_a

    move v5, v10

    goto :goto_8

    :cond_a
    move v5, v2

    .line 18
    :goto_8
    iput-boolean v5, v4, Le/d/a/a/e;->p:Z

    const/16 v5, 0xc

    if-lt v6, v5, :cond_b

    move v5, v10

    goto :goto_9

    :cond_b
    move v5, v2

    .line 19
    :goto_9
    iput-boolean v5, v4, Le/d/a/a/e;->o:Z

    const/16 v5, 0xa

    if-lt v6, v5, :cond_c

    move v5, v10

    goto :goto_a

    :cond_c
    move v5, v2

    .line 20
    :goto_a
    iput-boolean v5, v4, Le/d/a/a/e;->n:Z

    const/16 v5, 0x9

    if-lt v6, v5, :cond_d

    move v5, v10

    goto :goto_b

    :cond_d
    move v5, v2

    .line 21
    :goto_b
    iput-boolean v5, v4, Le/d/a/a/e;->m:Z

    const/16 v5, 0x8

    if-lt v6, v5, :cond_e

    move v5, v10

    goto :goto_c

    :cond_e
    move v5, v2

    .line 22
    :goto_c
    iput-boolean v5, v4, Le/d/a/a/e;->l:Z

    const/4 v5, 0x6

    if-lt v6, v5, :cond_f

    goto :goto_d

    :cond_f
    move v10, v2

    .line 23
    :goto_d
    iput-boolean v10, v4, Le/d/a/a/e;->k:Z

    if-ge v6, v1, :cond_10

    const-string v1, "BillingClient"

    const-string v4, "In-app billing API version 3 is not supported on this device."

    .line 24
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-nez v7, :cond_11

    iget-object v1, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v4, 0x2

    .line 25
    iput v4, v1, Le/d/a/a/e;->a:I

    goto :goto_f

    .line 26
    :cond_11
    iget-object v1, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 27
    iput v2, v1, Le/d/a/a/e;->a:I

    .line 28
    iget-object v1, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 29
    iput-object v3, v1, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :catch_1
    :goto_e
    const-string v4, "BillingClient"

    const-string v5, "Exception while checking if billing is supported; try to reconnect"

    .line 30
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 31
    iput v2, v4, Le/d/a/a/e;->a:I

    .line 32
    iget-object v2, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 33
    iput-object v3, v2, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    move v7, v1

    :goto_f
    if-nez v7, :cond_12

    .line 34
    sget-object v1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    invoke-virtual {v0, v1}, Le/d/a/a/z;->a(Le/d/a/a/k;)V

    goto :goto_10

    .line 35
    :cond_12
    sget-object v1, Le/d/a/a/a0;->a:Le/d/a/a/k;

    invoke-virtual {v0, v1}, Le/d/a/a/z;->a(Le/d/a/a/k;)V

    :goto_10
    return-object v3

    :catchall_0
    move-exception v0

    .line 36
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
