.class public Le/d/a/a/e;
.super Le/d/a/a/d;
.source "SourceFile"


# instance fields
.field public volatile a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public volatile d:Le/d/a/a/d0;

.field public e:Landroid/content/Context;

.field public volatile f:Lcom/google/android/gms/internal/play_billing/zzd;

.field public volatile g:Le/d/a/a/z;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Le/d/a/a/q;)V
    .locals 3

    :try_start_0
    const-string p1, "e.d.a.b.a"

    .line 1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "VERSION_NAME"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "4.0.0"

    .line 4
    :goto_0
    invoke-direct {p0}, Le/d/a/a/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/d/a/a/e;->a:I

    new-instance v1, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Le/d/a/a/e;->c:Landroid/os/Handler;

    iput v0, p0, Le/d/a/a/e;->j:I

    iput-object p1, p0, Le/d/a/a/e;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/d/a/a/e;->e:Landroid/content/Context;

    new-instance p3, Le/d/a/a/d0;

    .line 7
    invoke-direct {p3, p1, p4}, Le/d/a/a/d0;-><init>(Landroid/content/Context;Le/d/a/a/q;)V

    iput-object p3, p0, Le/d/a/a/e;->d:Le/d/a/a/d0;

    iput-boolean p2, p0, Le/d/a/a/e;->s:Z

    return-void
.end method

.method public static p(Le/d/a/a/e;Ljava/lang/String;)Le/d/a/a/n$a;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Querying owned items, item type: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 3
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "BillingClient"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, v0, Le/d/a/a/e;->m:Z

    iget-boolean v4, v0, Le/d/a/a/e;->s:Z

    iget-object v5, v0, Le/d/a/a/e;->b:Ljava/lang/String;

    .line 5
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzf(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v10, 0x0

    :cond_1
    :try_start_0
    iget-boolean v5, v0, Le/d/a/a/e;->m:Z

    if-eqz v5, :cond_2

    iget-object v6, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const/16 v7, 0x9

    iget-object v5, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    move-object v11, v3

    .line 7
    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/play_billing/zzd;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v8, p1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v5, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v6, 0x3

    iget-object v7, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 9
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    .line 10
    invoke-interface {v5, v6, v7, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzd;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v6, "getPurchase()"

    .line 11
    sget-object v7, Le/d/a/a/a0;->j:Le/d/a/a/k;

    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    const-string v11, "INAPP_PURCHASE_ITEM_LIST"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v5, :cond_3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v6, v13, v12

    const-string v6, "%s got null owned items list"

    .line 12
    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v14

    .line 14
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 15
    new-instance v4, Le/d/a/a/k;

    invoke-direct {v4}, Le/d/a/a/k;-><init>()V

    .line 16
    iput v14, v4, Le/d/a/a/k;->a:I

    .line 17
    iput-object v15, v4, Le/d/a/a/k;->b:Ljava/lang/String;

    if-eqz v14, :cond_4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v12

    .line 18
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v13

    const-string v6, "%s failed. Response code: %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 21
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 24
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 25
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v4, :cond_6

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v6, v4, v12

    const-string v6, "Bundle returned from %s contains null SKUs list."

    .line 26
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez v14, :cond_7

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v6, v4, v12

    const-string v6, "Bundle returned from %s contains null purchases list."

    .line 28
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v15, :cond_8

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v6, v4, v12

    const-string v6, "Bundle returned from %s contains null signatures list."

    .line 30
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v7, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_3

    :cond_9
    :goto_2
    new-array v4, v13, [Ljava/lang/Object;

    aput-object v6, v4, v12

    const-string v6, "Bundle returned from %s doesn\'t contain required fields."

    .line 32
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_3
    sget-object v4, Le/d/a/a/a0;->k:Le/d/a/a/k;

    if-eq v7, v4, :cond_a

    new-instance v0, Le/d/a/a/n$a;

    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v7, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    goto/16 :goto_7

    .line 36
    :cond_a
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 37
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 38
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 39
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_d

    .line 40
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 41
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 43
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Sku is owned: "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 44
    :cond_b
    new-instance v11, Ljava/lang/String;

    .line 45
    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v11, Le/d/a/a/n;

    .line 46
    invoke-direct {v11, v9, v10}, Le/d/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    invoke-virtual {v11}, Le/d/a/a/n;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "BUG: empty/null token!"

    .line 48
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_c
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Got an exception trying to decode the purchase: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le/d/a/a/n$a;

    sget-object v1, Le/d/a/a/a0;->j:Le/d/a/a/k;

    const/4 v2, 0x0

    .line 51
    invoke-direct {v0, v1, v2}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    goto :goto_7

    :cond_d
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 52
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Continuation token: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 54
    :cond_e
    new-instance v4, Ljava/lang/String;

    .line 55
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Le/d/a/a/n$a;

    sget-object v2, Le/d/a/a/a0;->k:Le/d/a/a/k;

    .line 57
    invoke-direct {v0, v2, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    goto :goto_7

    :catch_1
    move-exception v0

    .line 58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x39

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Got exception trying to get purchases: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; try to reconnect"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le/d/a/a/n$a;

    .line 59
    sget-object v1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    :goto_7
    return-object v0
.end method


# virtual methods
.method public final a(Le/d/a/a/b;Le/d/a/a/c;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    const-string v1, "it"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    check-cast p2, Le/d/a/a/f;

    .line 3
    iget-object p2, p2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p1, Le/d/a/a/b;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Le/d/a/a/a0;->i:Le/d/a/a/k;

    check-cast p2, Le/d/a/a/f;

    .line 9
    iget-object p2, p2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Le/d/a/a/e;->m:Z

    if-nez v0, :cond_2

    .line 12
    sget-object p1, Le/d/a/a/a0;->b:Le/d/a/a/k;

    check-cast p2, Le/d/a/a/f;

    .line 13
    iget-object p2, p2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_2
    new-instance v3, Le/d/a/a/f0;

    .line 16
    invoke-direct {v3, p0, p1, p2}, Le/d/a/a/f0;-><init>(Le/d/a/a/e;Le/d/a/a/b;Le/d/a/a/c;)V

    new-instance v6, Le/d/a/a/e0;

    invoke-direct {v6, p2}, Le/d/a/a/e0;-><init>(Le/d/a/a/c;)V

    const-wide/16 v4, 0x7530

    .line 17
    invoke-virtual {p0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v7

    move-object v2, p0

    .line 18
    invoke-virtual/range {v2 .. v7}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 19
    invoke-virtual {p0}, Le/d/a/a/e;->m()Le/d/a/a/k;

    move-result-object p1

    check-cast p2, Le/d/a/a/f;

    .line 20
    iget-object p2, p2, Le/d/a/a/f;->a:Lq3/a/w;

    .line 21
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final b(Le/d/a/a/l;Le/d/a/a/m;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    .line 3
    iget-object p1, p1, Le/d/a/a/l;->a:Ljava/lang/String;

    .line 4
    check-cast p2, Le/a/l/n2/c;

    invoke-virtual {p2, v0, p1}, Le/a/l/n2/c;->a(Le/d/a/a/k;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Le/d/a/a/g0;

    .line 5
    invoke-direct {v2, p0, p1, p2}, Le/d/a/a/g0;-><init>(Le/d/a/a/e;Le/d/a/a/l;Le/d/a/a/m;)V

    new-instance v5, Le/d/a/a/l0;

    invoke-direct {v5, p2, p1}, Le/d/a/a/l0;-><init>(Le/d/a/a/m;Le/d/a/a/l;)V

    const-wide/16 v3, 0x7530

    .line 6
    invoke-virtual {p0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    .line 7
    invoke-virtual/range {v1 .. v6}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Le/d/a/a/e;->m()Le/d/a/a/k;

    move-result-object v0

    .line 9
    iget-object p1, p1, Le/d/a/a/l;->a:Ljava/lang/String;

    .line 10
    check-cast p2, Le/a/l/n2/c;

    invoke-virtual {p2, v0, p1}, Le/a/l/n2/c;->a(Le/d/a/a/k;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Le/d/a/a/e;->d:Le/d/a/a/d0;

    .line 1
    invoke-virtual {v1}, Le/d/a/a/d0;->a()V

    iget-object v1, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    .line 2
    iget-object v3, v1, Le/d/a/a/z;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Le/d/a/a/z;->c:Le/d/a/a/i;

    const/4 v4, 0x1

    iput-boolean v4, v1, Le/d/a/a/z;->b:Z

    .line 3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    if-eqz v1, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Unbinding from service."

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Le/d/a/a/e;->e:Landroid/content/Context;

    iget-object v3, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    :cond_1
    iput-object v2, p0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    iget-object v1, p0, Le/d/a/a/e;->t:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Le/d/a/a/e;->t:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    iput v0, p0, Le/d/a/a/e;->a:I

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v2, "BillingClient"

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    iput v0, p0, Le/d/a/a/e;->a:I

    return-void

    .line 10
    :goto_2
    iput v0, p0, Le/d/a/a/e;->a:I

    .line 11
    throw v1
.end method

.method public final d(Ljava/lang/String;)Le/d/a/a/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "subscriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "subscriptionsOnVr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "inAppItemsOnVr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "priceChangeConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "eee"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_5
    const-string v0, "ddd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "ccc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "bbb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "aaa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "subscriptionsUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "Unsupported feature: "

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :pswitch_0
    iget-boolean p1, p0, Le/d/a/a/e;->r:Z

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_2

    :cond_2
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_2
    return-object p1

    :pswitch_1
    iget-boolean p1, p0, Le/d/a/a/e;->p:Z

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_3

    :cond_3
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_3
    return-object p1

    :pswitch_2
    iget-boolean p1, p0, Le/d/a/a/e;->q:Z

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_4

    :cond_4
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_4
    return-object p1

    :pswitch_3
    iget-boolean p1, p0, Le/d/a/a/e;->o:Z

    if-eqz p1, :cond_5

    .line 8
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_5

    :cond_5
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_5
    return-object p1

    :pswitch_4
    iget-boolean p1, p0, Le/d/a/a/e;->l:Z

    if-eqz p1, :cond_6

    .line 9
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_6

    :cond_6
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_6
    return-object p1

    :pswitch_5
    const-string p1, "subs"

    .line 10
    invoke-virtual {p0, p1}, Le/d/a/a/e;->n(Ljava/lang/String;)Le/d/a/a/k;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string p1, "inapp"

    .line 11
    invoke-virtual {p0, p1}, Le/d/a/a/e;->n(Ljava/lang/String;)Le/d/a/a/k;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-boolean p1, p0, Le/d/a/a/e;->i:Z

    if-eqz p1, :cond_7

    .line 12
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_7

    .line 13
    :cond_7
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_7
    return-object p1

    :pswitch_8
    iget-boolean p1, p0, Le/d/a/a/e;->h:Z

    if-eqz p1, :cond_8

    .line 14
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_8

    :cond_8
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;

    :goto_8
    return-object p1

    .line 15
    :cond_9
    new-instance p1, Ljava/lang/String;

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    const-string v0, "BillingClient"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Le/d/a/a/a0;->p:Le/d/a/a/k;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_9
        0x17841 -> :sswitch_8
        0x17c22 -> :sswitch_7
        0x18003 -> :sswitch_6
        0x183e4 -> :sswitch_5
        0x187c5 -> :sswitch_4
        0xc5ff92e -> :sswitch_3
        0x116ae57f -> :sswitch_2
        0x48aff111 -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Le/d/a/a/e;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/app/Activity;Le/d/a/a/j;)Le/d/a/a/k;
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v0, "proxyPackageVersion"

    const-string v9, "BUY_INTENT"

    const-string v10, "; try to reconnect"

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/d/a/a/e;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v5, Le/d/a/a/j;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/a/a/r;

    .line 7
    invoke-virtual {v3}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subs"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "BillingClient"

    if-eqz v6, :cond_2

    iget-boolean v6, v7, Le/d/a/a/e;->h:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 9
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Le/d/a/a/a0;->n:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    .line 11
    :cond_2
    :goto_0
    iget-boolean v6, v5, Le/d/a/a/j;->g:Z

    const/4 v12, 0x1

    if-nez v6, :cond_4

    iget-object v6, v5, Le/d/a/a/j;->b:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, v5, Le/d/a/a/j;->d:Ljava/lang/String;

    if-nez v6, :cond_4

    iget v6, v5, Le/d/a/a/j;->e:I

    if-nez v6, :cond_4

    iget-boolean v6, v5, Le/d/a/a/j;->a:Z

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v12

    :goto_2
    if-eqz v6, :cond_6

    .line 12
    iget-boolean v6, v7, Le/d/a/a/e;->k:Z

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 13
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Le/d/a/a/a0;->g:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v12, :cond_8

    iget-boolean v6, v7, Le/d/a/a/e;->r:Z

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 16
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v0, Le/d/a/a/a0;->o:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    :cond_8
    :goto_4
    const-string v6, ""

    move-object v12, v6

    .line 18
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_a

    .line 19
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v14, v15

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v6, v12, v13}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v2, v12, :cond_9

    .line 21
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    move-object v12, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v16

    goto :goto_5

    :cond_a
    move-object/from16 v16, v6

    .line 22
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v6

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Constructing buy intent for "

    const-string v6, ", item type: "

    invoke-static {v13, v2, v12, v6, v4}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v7, Le/d/a/a/e;->k:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v7, Le/d/a/a/e;->m:Z

    iget-boolean v6, v7, Le/d/a/a/e;->s:Z

    iget-object v13, v7, Le/d/a/a/e;->b:Ljava/lang/String;

    .line 23
    invoke-static {v5, v2, v6, v13}, Lcom/google/android/gms/internal/play_billing/zza;->zze(Le/d/a/a/j;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v10

    new-instance v10, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move/from16 v9, v19

    :goto_6
    if-ge v9, v12, :cond_d

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v25, v12

    .line 29
    move-object/from16 v12, v19

    check-cast v12, Le/d/a/a/r;

    .line 30
    iget-object v8, v12, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    move-object/from16 v19, v11

    const-string v11, "skuDetailsToken"

    .line 31
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 33
    iget-object v8, v12, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_b
    iget-object v8, v12, Le/d/a/a/r;->a:Ljava/lang/String;

    .line 37
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "offer_id_token"

    .line 38
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-object/from16 v8, v16

    .line 39
    :goto_7
    iget-object v11, v12, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    move-object/from16 v26, v4

    const-string v4, "offer_id"

    .line 40
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    iget-object v11, v12, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v5, "offer_type"

    .line 42
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 43
    iget-object v11, v12, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v12, "serializedDocid"

    .line 44
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v12, 0x1

    xor-int/lit8 v8, v8, 0x1

    or-int v20, v20, v8

    .line 47
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int v21, v21, v4

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_c

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    :goto_8
    or-int v22, v22, v12

    .line 50
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int v23, v23, v4

    .line 51
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move-object/from16 v11, v19

    move/from16 v12, v25

    move-object/from16 v4, v26

    goto/16 :goto_6

    :cond_d
    move-object/from16 v26, v4

    move-object/from16 v19, v11

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "skuDetailsTokens"

    .line 53
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_e
    if-eqz v20, :cond_10

    iget-boolean v2, v7, Le/d/a/a/e;->p:Z

    if-nez v2, :cond_f

    .line 54
    sget-object v0, Le/d/a/a/a0;->h:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    :cond_f
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 55
    invoke-virtual {v6, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_10
    if-eqz v21, :cond_11

    const-string v2, "SKU_OFFER_ID_LIST"

    .line 56
    invoke-virtual {v6, v2, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_11
    if-eqz v22, :cond_12

    const-string v2, "SKU_OFFER_TYPE_LIST"

    .line 57
    invoke-virtual {v6, v2, v15}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_12
    if-eqz v23, :cond_13

    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 58
    invoke-virtual {v6, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    :cond_13
    invoke-virtual {v3}, Le/d/a/a/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 60
    invoke-virtual {v3}, Le/d/a/a/r;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "skuPackageName"

    .line 61
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    const/4 v4, 0x0

    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "accountName"

    .line 63
    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_17

    new-instance v4, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_16

    .line 68
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/d/a/a/r;

    invoke-virtual {v9}, Le/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/d/a/a/r;

    invoke-virtual {v9}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    const-string v1, "additionalSkus"

    .line 70
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "additionalSkuTypes"

    .line 71
    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "PROXY_PACKAGE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "proxyPackage"

    .line 74
    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v4, v7, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 77
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    const-string v1, "package not found"

    .line 78
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_18
    :goto_b
    iget-boolean v0, v7, Le/d/a/a/e;->q:Z

    if-eqz v0, :cond_19

    if-eqz v2, :cond_19

    const/16 v0, 0xf

    goto :goto_c

    .line 80
    :cond_19
    iget-boolean v0, v7, Le/d/a/a/e;->m:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x9

    :goto_c
    move-object/from16 v5, p2

    goto :goto_d

    :cond_1a
    move-object/from16 v5, p2

    .line 81
    iget-boolean v0, v5, Le/d/a/a/j;->g:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x7

    goto :goto_d

    :cond_1b
    const/4 v0, 0x6

    :goto_d
    move v2, v0

    .line 82
    new-instance v8, Le/d/a/a/p0;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v4, v26

    move-object/from16 v5, p2

    .line 83
    invoke-direct/range {v0 .. v6}, Le/d/a/a/p0;-><init>(Le/d/a/a/e;ILe/d/a/a/r;Ljava/lang/String;Le/d/a/a/j;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, v7, Le/d/a/a/e;->c:Landroid/os/Handler;

    move-object/from16 v0, p0

    move-object v1, v8

    .line 84
    invoke-virtual/range {v0 .. v5}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_e

    :cond_1c
    move-object/from16 v26, v4

    move-object/from16 v24, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    .line 85
    new-instance v1, Le/d/a/a/h0;

    move-object/from16 v0, v26

    .line 86
    invoke-direct {v1, v7, v3, v0}, Le/d/a/a/h0;-><init>(Le/d/a/a/e;Le/d/a/a/r;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, v7, Le/d/a/a/e;->c:Landroid/os/Handler;

    move-object/from16 v0, p0

    .line 87
    invoke-virtual/range {v0 .. v5}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_e
    const-wide/16 v1, 0x1388

    .line 88
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 89
    :try_start_3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v1, v19

    .line 90
    :try_start_4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    .line 92
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to buy item, Error response code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Le/d/a/a/k;

    invoke-direct {v0}, Le/d/a/a/k;-><init>()V

    .line 94
    iput v2, v0, Le/d/a/a/k;->a:I

    .line 95
    iput-object v3, v0, Le/d/a/a/k;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    :cond_1d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v4, p1

    .line 97
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v3, v24

    .line 98
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 101
    sget-object v0, Le/d/a/a/a0;->k:Le/d/a/a/k;

    return-object v0

    :catch_2
    move-object/from16 v1, v19

    :catch_3
    move-object/from16 v0, v17

    move-object/from16 v6, v18

    goto :goto_f

    :catch_4
    move-object/from16 v1, v19

    .line 102
    :catch_5
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x45

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0

    :catch_6
    move-object/from16 v0, v17

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    .line 105
    :goto_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Le/d/a/a/a0;->m:Le/d/a/a/k;

    invoke-virtual {v7, v0}, Le/d/a/a/e;->l(Le/d/a/a/k;)Le/d/a/a/k;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Le/d/a/a/n$a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Le/d/a/a/n$a;

    .line 2
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-direct {p1, v0, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Le/d/a/a/n$a;

    .line 5
    sget-object v0, Le/d/a/a/a0;->f:Le/d/a/a/k;

    invoke-direct {p1, v0, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    return-object p1

    :cond_1
    new-instance v3, Le/d/a/a/q0;

    .line 6
    invoke-direct {v3, p0, p1}, Le/d/a/a/q0;-><init>(Le/d/a/a/e;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    iget-object v7, p0, Le/d/a/a/e;->c:Landroid/os/Handler;

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v7}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/a/a/n$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Le/d/a/a/n$a;

    .line 10
    sget-object v0, Le/d/a/a/a0;->j:Le/d/a/a/k;

    invoke-direct {p1, v0, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    return-object p1

    .line 11
    :catch_1
    new-instance p1, Le/d/a/a/n$a;

    .line 12
    sget-object v0, Le/d/a/a/a0;->m:Le/d/a/a/k;

    invoke-direct {p1, v0, v1}, Le/d/a/a/n$a;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    return-object p1
.end method

.method public h(Ljava/lang/String;Le/d/a/a/o;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v0

    .line 4
    check-cast p2, Le/d/a/a/g;

    invoke-virtual {p2, p1, v0}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Le/d/a/a/a0;->f:Le/d/a/a/k;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v0

    .line 9
    check-cast p2, Le/d/a/a/g;

    invoke-virtual {p2, p1, v0}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Le/d/a/a/v;

    .line 10
    invoke-direct {v2, p0, p1, p2}, Le/d/a/a/v;-><init>(Le/d/a/a/e;Ljava/lang/String;Le/d/a/a/o;)V

    new-instance v5, Le/d/a/a/m0;

    invoke-direct {v5, p2}, Le/d/a/a/m0;-><init>(Le/d/a/a/o;)V

    const-wide/16 v3, 0x7530

    .line 11
    invoke-virtual {p0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    .line 12
    invoke-virtual/range {v1 .. v6}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p0}, Le/d/a/a/e;->m()Le/d/a/a/k;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v0

    .line 14
    check-cast p2, Le/d/a/a/g;

    invoke-virtual {p2, p1, v0}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final i(Le/d/a/a/s;Le/d/a/a/t;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-interface {p2, p1, v1}, Le/d/a/a/t;->onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Le/d/a/a/s;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Le/d/a/a/s;->b:Ljava/util/List;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BillingClient"

    if-eqz v2, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 6
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Le/d/a/a/a0;->f:Le/d/a/a/k;

    invoke-interface {p2, p1, v1}, Le/d/a/a/t;->onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    new-instance v4, Le/d/a/a/b0;

    .line 12
    invoke-direct {v4, v3}, Le/d/a/a/b0;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SKU must be set."

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance v3, Le/d/a/a/j0;

    .line 17
    invoke-direct {v3, p0, v0, v2, p2}, Le/d/a/a/j0;-><init>(Le/d/a/a/e;Ljava/lang/String;Ljava/util/List;Le/d/a/a/t;)V

    new-instance v6, Le/d/a/a/n0;

    invoke-direct {v6, p2}, Le/d/a/a/n0;-><init>(Le/d/a/a/t;)V

    const-wide/16 v4, 0x7530

    .line 18
    invoke-virtual {p0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v7

    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    .line 20
    invoke-virtual {p0}, Le/d/a/a/e;->m()Le/d/a/a/k;

    move-result-object p1

    .line 21
    invoke-interface {p2, p1, v1}, Le/d/a/a/t;->onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 22
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Le/d/a/a/a0;->e:Le/d/a/a/k;

    invoke-interface {p2, p1, v1}, Le/d/a/a/t;->onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V

    return-void
.end method

.method public final j(Le/d/a/a/i;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/d/a/a/e;->e()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/d/a/a/a0;->k:Le/d/a/a/k;

    invoke-interface {p1, v0}, Le/d/a/a/i;->onBillingSetupFinished(Le/d/a/a/k;)V

    return-void

    :cond_0
    iget v0, p0, Le/d/a/a/e;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Le/d/a/a/a0;->d:Le/d/a/a/k;

    invoke-interface {p1, v0}, Le/d/a/a/i;->onBillingSetupFinished(Le/d/a/a/k;)V

    return-void

    :cond_1
    iget v0, p0, Le/d/a/a/e;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    invoke-interface {p1, v0}, Le/d/a/a/i;->onBillingSetupFinished(Le/d/a/a/k;)V

    return-void

    :cond_2
    iput v2, p0, Le/d/a/a/e;->a:I

    iget-object v0, p0, Le/d/a/a/e;->d:Le/d/a/a/d0;

    .line 8
    iget-object v3, v0, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    iget-object v0, v0, Le/d/a/a/d0;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 9
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    iget-boolean v5, v3, Le/d/a/a/c0;->b:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Le/d/a/a/c0;->c:Le/d/a/a/d0;

    .line 11
    iget-object v5, v5, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    .line 12
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, v3, Le/d/a/a/c0;->b:Z

    :cond_3
    const-string v0, "Starting in-app billing setup."

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le/d/a/a/z;

    .line 14
    invoke-direct {v0, p0, p1}, Le/d/a/a/z;-><init>(Le/d/a/a/e;Le/d/a/a/i;)V

    iput-object v0, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    .line 15
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 18
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 19
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 20
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_6

    .line 21
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    .line 24
    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .line 25
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Le/d/a/a/e;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    .line 27
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Le/d/a/a/e;->e:Landroid/content/Context;

    iget-object v3, p0, Le/d/a/a/e;->g:Le/d/a/a/z;

    .line 28
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Service was bonded successfully."

    .line 29
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "Connection to Billing service is blocked."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_6
    :goto_0
    iput v5, p0, Le/d/a/a/e;->a:I

    const-string v0, "Billing service unavailable on device."

    .line 33
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Le/d/a/a/a0;->c:Le/d/a/a/k;

    invoke-interface {p1, v0}, Le/d/a/a/i;->onBillingSetupFinished(Le/d/a/a/k;)V

    return-void
.end method

.method public final k()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/d/a/a/e;->c:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object v0
.end method

.method public final l(Le/d/a/a/k;)Le/d/a/a/k;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Le/d/a/a/e;->c:Landroid/os/Handler;

    new-instance v1, Le/d/a/a/k0;

    .line 2
    invoke-direct {v1, p0, p1}, Le/d/a/a/k0;-><init>(Le/d/a/a/e;Le/d/a/a/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final m()Le/d/a/a/k;
    .locals 2

    iget v0, p0, Le/d/a/a/e;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Le/d/a/a/e;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Le/d/a/a/a0;->j:Le/d/a/a/k;

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Le/d/a/a/a0;->l:Le/d/a/a/k;

    :goto_1
    return-object v0
.end method

.method public final n(Ljava/lang/String;)Le/d/a/a/k;
    .locals 6

    new-instance v1, Le/d/a/a/i0;

    .line 1
    invoke-direct {v1, p0, p1}, Le/d/a/a/i0;-><init>(Le/d/a/a/e;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    .line 4
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Le/d/a/a/a0;->k:Le/d/a/a/k;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Le/d/a/a/a0;->h:Le/d/a/a/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    const-string p1, "BillingClient"

    const-string v0, "Exception while checking if billing is supported; try to reconnect"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Le/d/a/a/a0;->l:Le/d/a/a/k;

    return-object p1
.end method

.method public final o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p2, v0

    double-to-long p2, p2

    iget-object v0, p0, Le/d/a/a/e;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zza;->zza:I

    new-instance v1, Le/d/a/a/w;

    invoke-direct {v1, p0}, Le/d/a/a/w;-><init>(Le/d/a/a/e;)V

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/d/a/a/e;->t:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Le/d/a/a/e;->t:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Le/d/a/a/o0;

    .line 4
    invoke-direct {v0, p1, p4}, Le/d/a/a/o0;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
