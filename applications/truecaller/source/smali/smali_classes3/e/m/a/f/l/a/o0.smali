.class public final Le/m/a/f/l/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzau;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/o0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/o0;->a:Lcom/google/android/gms/measurement/internal/zzau;

    iput-object p3, p0, Le/m/a/f/l/a/o0;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/o0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    iget-object v1, p0, Le/m/a/f/l/a/o0;->a:Lcom/google/android/gms/measurement/internal/zzau;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v3, "_cmp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    const-string v3, "_cis"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "referrer broadcast"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "referrer API"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzau;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event has been filtered "

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    .line 12
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    const-string v5, "_cmpx"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    move-object v1, v0

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Le/m/a/f/l/a/o0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    iget-object v2, p0, Le/m/a/f/l/a/o0;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 14
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 15
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 16
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfi;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 17
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto/16 :goto_5

    .line 19
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 22
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v5, "EES config found for"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 24
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    .line 26
    :cond_4
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfi;->i:Ln3/g/f;

    .line 27
    invoke-virtual {v3, v4}, Ln3/g/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzc;

    :goto_1
    if-eqz v3, :cond_8

    .line 28
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 29
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 30
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->o2()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x1

    .line 31
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->C(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v4

    .line 32
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 33
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    :cond_5
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzaa;

    .line 34
    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    invoke-direct {v6, v5, v7, v8, v4}, Lcom/google/android/gms/internal/measurement/zzaa;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 35
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzc;->zze(Lcom/google/android/gms/internal/measurement/zzaa;)Z

    move-result v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_6

    goto/16 :goto_4

    .line 36
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzg()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 38
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 39
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v5, "EES edited event"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 40
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzc;->zza()Lcom/google/android/gms/internal/measurement/zzab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->v(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    .line 43
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 44
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    .line 45
    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 46
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 47
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzf()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzc;->zza()Lcom/google/android/gms/internal/measurement/zzab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaa;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 49
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 50
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzaa;->zzd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EES logging created event"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 52
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 53
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->v(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    .line 54
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 55
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_3

    .line 56
    :catch_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 58
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 59
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v6, "EES error. appId, eventName"

    .line 60
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :goto_4
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 63
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 64
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v5, "EES was not applied to event"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    .line 67
    :cond_8
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 69
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 70
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v5, "EES not loaded for"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_9
    :goto_5
    return-void
.end method
