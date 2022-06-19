.class public final Le/m/a/f/l/a/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Le/m/a/f/l/a/v1;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/v1;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/u1;->e:Le/m/a/f/l/a/v1;

    iput-boolean p2, p0, Le/m/a/f/l/a/u1;->a:Z

    iput-object p3, p0, Le/m/a/f/l/a/u1;->b:Landroid/net/Uri;

    iput-object p4, p0, Le/m/a/f/l/a/u1;->c:Ljava/lang/String;

    iput-object p5, p0, Le/m/a/f/l/a/u1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/m/a/f/l/a/u1;->e:Le/m/a/f/l/a/v1;

    iget-boolean v0, v1, Le/m/a/f/l/a/u1;->a:Z

    iget-object v3, v1, Le/m/a/f/l/a/u1;->b:Landroid/net/Uri;

    iget-object v4, v1, Le/m/a/f/l/a/u1;->c:Ljava/lang/String;

    iget-object v5, v1, Le/m/a/f/l/a/u1;->d:Ljava/lang/String;

    iget-object v6, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Le/m/a/f/l/a/m;->d()V

    :try_start_0
    iget-object v6, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznl;->zzc()Z

    iget-object v7, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v7, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 5
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdu;->t0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v7

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "Activity created with data \'referrer\' without required params"

    const-string v12, "_cis"

    const-string v13, "utm_medium"

    const-string v14, "utm_source"

    const-string v15, "utm_campaign"

    const-string v9, "gclid"

    if-eqz v10, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_4

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 8
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 9
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 10
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v7, :cond_2

    const-string v7, "utm_id"

    .line 11
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "dclid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 13
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 14
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    const-string v10, "https://google.com/search?"

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 17
    invoke-direct {v1, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    .line 18
    :goto_3
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 19
    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/measurement/internal/zzkw;->l0(Landroid/net/Uri;Z)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v6, "referrer"

    .line 20
    invoke-virtual {v1, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_4
    const-string v6, "_cmp"

    if-eqz v0, :cond_7

    .line 21
    :try_start_2
    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznl;->zzc()Z

    iget-object v7, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v7, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v10, 0x0

    .line 25
    invoke-virtual {v7, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v7

    .line 26
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzkw;->l0(Landroid/net/Uri;Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "intent"

    .line 27
    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 30
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const-string v7, "_cer"

    const-string v8, "gclid=%s"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 32
    invoke-virtual {v3, v4, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhw;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzhw;->n:Lcom/google/android/gms/measurement/internal/zzr;

    .line 33
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzr;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Activity created with referrer"

    .line 37
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 38
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 39
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->Z:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v7, 0x0

    .line 40
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 41
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhw;->n:Lcom/google/android/gms/measurement/internal/zzr;

    .line 42
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzr;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    .line 43
    :cond_9
    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Referrer does not contain valid parameters"

    .line 46
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :goto_5
    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->v(Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_a
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 52
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "utm_term"

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "utm_content"

    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 56
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzhw;->v(Ljava/lang/Object;)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    iget-object v0, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 59
    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    iget-object v1, v2, Le/m/a/f/l/a/v1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 63
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
