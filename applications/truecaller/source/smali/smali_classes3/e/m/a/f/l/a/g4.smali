.class public final Le/m/a/f/l/a/g4;
.super Le/m/a/f/l/a/h4;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/zzej;

.field public final synthetic h:Le/m/a/f/l/a/j4;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/j4;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    invoke-direct {p0, p2, p3}, Le/m/a/f/l/a/h4;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfo;JLe/m/a/f/l/a/g;Z)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()Z

    iget-object v3, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 3
    iget-object v4, v0, Le/m/a/f/l/a/h4;->a:Ljava/lang/String;

    .line 4
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->X:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v3

    iget-object v4, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzej;->zzn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, p6

    iget-wide v4, v4, Le/m/a/f/l/a/g;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p4

    :goto_0
    iget-object v6, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->s()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 8
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    const-string v7, "null"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_7

    iget-object v6, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 10
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 11
    iget v10, v0, Le/m/a/f/l/a/h4;->b:I

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 13
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget-object v12, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v12, v12, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 15
    iget-object v13, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Evaluating filter. audience, filter, event"

    .line 17
    invoke-virtual {v6, v13, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 19
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 20
    iget-object v10, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v10, v10, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 21
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 22
    iget-object v11, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    if-nez v11, :cond_2

    move-object v10, v7

    goto/16 :goto_3

    :cond_2
    const-string v12, "\nevent_filter {\n"

    .line 23
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 24
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v13

    .line 25
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "filter_id"

    invoke-static {v12, v8, v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->p(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v13, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzg()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "event_name"

    .line 29
    invoke-static {v12, v8, v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->p(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzk()Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzm()Z

    move-result v14

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzn()Z

    move-result v15

    .line 30
    invoke-static {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzkr;->n(ZZZ)Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "filter_type"

    .line 32
    invoke-static {v12, v8, v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->p(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 33
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzf()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v13

    const-string v14, "event_count_filter"

    invoke-static {v12, v9, v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->q(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)V

    .line 34
    :cond_5
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zza()I

    move-result v13

    if-lez v13, :cond_6

    const-string v13, "  filters {\n"

    .line 35
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzh()Ljava/util/List;

    move-result-object v11

    .line 36
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzel;

    const/4 v14, 0x2

    .line 37
    invoke-virtual {v10, v12, v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->l(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzel;)V

    goto :goto_2

    .line 38
    :cond_6
    invoke-static {v12, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->m(Ljava/lang/StringBuilder;I)V

    const-string v10, "}\n}\n"

    .line 39
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    const-string v11, "Filter definition"

    .line 40
    invoke-virtual {v6, v11, v10}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v6, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v6

    const/16 v10, 0x100

    if-le v6, v10, :cond_8

    goto/16 :goto_13

    .line 42
    :cond_8
    iget-object v6, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzej;->zzk()Z

    move-result v6

    iget-object v10, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzej;->zzm()Z

    move-result v10

    iget-object v11, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzn()Z

    move-result v11

    if-nez v6, :cond_a

    if-nez v10, :cond_a

    if-eqz v11, :cond_9

    goto :goto_4

    :cond_9
    move v6, v8

    goto :goto_5

    :cond_a
    :goto_4
    move v6, v9

    :goto_5
    if-eqz p7, :cond_c

    if-nez v6, :cond_c

    iget-object v1, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 47
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 48
    iget v2, v0, Le/m/a/f/l/a/h4;->b:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    const-string v4, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 51
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_c
    iget-object v10, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v11

    .line 52
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 53
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzej;->zzf()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v12

    invoke-static {v4, v5, v12}, Le/m/a/f/l/a/h4;->f(JLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_d

    goto/16 :goto_e

    .line 54
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_f

    .line 55
    :cond_e
    new-instance v4, Ljava/util/HashSet;

    .line 56
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzej;->zzh()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzel;

    .line 58
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzel;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 60
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 61
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 62
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 63
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null or empty param name in filter. event"

    .line 64
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 65
    :cond_f
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzel;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 66
    :cond_10
    new-instance v5, Ln3/g/a;

    invoke-direct {v5}, Ln3/g/a;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzi()Ljava/util/List;

    move-result-object v12

    .line 67
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 68
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 69
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 70
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_9

    :cond_12
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v5, v14, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 71
    :cond_13
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 72
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_a

    :cond_14
    const/4 v13, 0x0

    .line 73
    :goto_a
    invoke-virtual {v5, v14, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 74
    :cond_15
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzy()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 77
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 78
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 79
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 80
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 81
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 82
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Unknown value for param. event, param"

    .line 83
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 84
    :cond_17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzej;->zzh()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzel;

    .line 85
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzh()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzg()Z

    move-result v12

    if-eqz v12, :cond_19

    move v12, v9

    goto :goto_b

    :cond_19
    move v12, v8

    .line 86
    :goto_b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zze()Ljava/lang/String;

    move-result-object v13

    .line 87
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1a

    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 89
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 90
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 91
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 92
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Event has empty param name. event"

    .line 93
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1a
    const/4 v14, 0x0

    .line 94
    invoke-virtual {v5, v13, v14}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 95
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_1d

    .line 96
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzi()Z

    move-result v15

    if-nez v15, :cond_1b

    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 98
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 99
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 100
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 101
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 102
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 103
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No number filter for long param. event, param"

    .line 104
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 105
    :cond_1b
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v10

    invoke-static {v13, v14, v10}, Le/m/a/f/l/a/h4;->f(JLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_1c

    goto/16 :goto_e

    .line 106
    :cond_1c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_18

    goto/16 :goto_f

    .line 107
    :cond_1d
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_20

    .line 108
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzi()Z

    move-result v15

    if-nez v15, :cond_1e

    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 110
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 111
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 112
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 113
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 114
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 115
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No number filter for double param. event, param"

    .line 116
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 117
    :cond_1e
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v10

    .line 118
    :try_start_0
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v13, v14}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v13

    invoke-static {v15, v10, v13, v14}, Le/m/a/f/l/a/h4;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzeq;D)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    const/4 v10, 0x0

    :goto_c
    if-nez v10, :cond_1f

    goto/16 :goto_e

    .line 119
    :cond_1f
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_18

    goto/16 :goto_f

    .line 120
    :cond_20
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_25

    .line 121
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzk()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 122
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzd()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v10

    iget-object v13, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v13, v13, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 123
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v13

    .line 124
    invoke-static {v14, v10, v13}, Le/m/a/f/l/a/h4;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/measurement/internal/zzeh;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_d

    .line 125
    :cond_21
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzi()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 126
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkr;->H(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_23

    .line 127
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v10

    invoke-static {v14, v10}, Le/m/a/f/l/a/h4;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v10

    :goto_d
    if-nez v10, :cond_22

    goto/16 :goto_e

    .line 128
    :cond_22
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_18

    goto/16 :goto_f

    .line 129
    :cond_23
    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 131
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 132
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 133
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 134
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 135
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 136
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Invalid param value for number filter. event, param"

    .line 137
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_24
    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 139
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 140
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 141
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 142
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 143
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 144
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No filter for String param. event, param"

    .line 145
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_25
    if-nez v14, :cond_26

    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 146
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 147
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 148
    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 149
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 150
    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v10, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 151
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 152
    invoke-virtual {v10, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Missing param for filter. event, param"

    .line 153
    invoke-virtual {v4, v11, v5, v10}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 154
    :cond_26
    iget-object v2, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 156
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 157
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 158
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 159
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 160
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 161
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Unknown param type. event, param"

    .line 162
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    const/4 v2, 0x0

    goto :goto_f

    :cond_27
    move-object v2, v1

    .line 163
    :goto_f
    iget-object v4, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 165
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    if-nez v2, :cond_28

    goto :goto_10

    :cond_28
    move-object v7, v2

    :goto_10
    const-string v5, "Event filter result"

    .line 166
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_29

    return v8

    .line 167
    :cond_29
    iput-object v1, v0, Le/m/a/f/l/a/h4;->c:Ljava/lang/Boolean;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    return v9

    :cond_2a
    iput-object v1, v0, Le/m/a/f/l/a/h4;->d:Ljava/lang/Boolean;

    if-eqz v6, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzu()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v1

    .line 169
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzej;->zzm()Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2c

    iget-object v2, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_11

    :cond_2b
    move-object/from16 v1, p1

    :cond_2c
    :goto_11
    iput-object v1, v0, Le/m/a/f/l/a/h4;->f:Ljava/lang/Long;

    goto :goto_12

    :cond_2d
    if-eqz v3, :cond_2e

    iget-object v2, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v1, p2

    :cond_2e
    iput-object v1, v0, Le/m/a/f/l/a/h4;->e:Ljava/lang/Long;

    :cond_2f
    :goto_12
    return v9

    .line 173
    :cond_30
    :goto_13
    iget-object v1, v0, Le/m/a/f/l/a/g4;->h:Le/m/a/f/l/a/j4;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 175
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 176
    iget-object v2, v0, Le/m/a/f/l/a/h4;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 177
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v0, Le/m/a/f/l/a/g4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_14

    :cond_31
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 178
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8
.end method
