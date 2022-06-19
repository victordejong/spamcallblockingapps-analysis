.class public final Lcom/google/android/gms/measurement/internal/zzfi;
.super Le/m/a/f/l/a/q3;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/b;


# instance fields
.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;

.field public final i:Ln3/g/f;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final j:Lcom/google/android/gms/internal/measurement/zzr;

.field public final k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/q3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 2
    new-instance p1, Ln3/g/a;

    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->d:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 3
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->e:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 4
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->f:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 5
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 6
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 7
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->h:Ljava/util/Map;

    .line 8
    new-instance p1, Le/m/a/f/l/a/x;

    invoke-direct {p1, p0}, Le/m/a/f/l/a/x;-><init>(Lcom/google/android/gms/measurement/internal/zzfi;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->i:Ln3/g/f;

    new-instance p1, Le/m/a/f/l/a/y;

    invoke-direct {p1, p0}, Le/m/a/f/l/a/y;-><init>(Lcom/google/android/gms/measurement/internal/zzfi;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->j:Lcom/google/android/gms/internal/measurement/zzr;

    return-void
.end method

.method public static final u(Lcom/google/android/gms/internal/measurement/zzfc;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfc;->zzk()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfe;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->d:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/q3;->e()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfc;

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zzo()Z

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfc;

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkw;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkw;->R(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->e:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/m/a/f/l/a/q3;->e()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/m/a/f/l/a/v0;->d()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzfi;->q(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzfi;->r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfb;)V

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->t(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfc;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    .line 8
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfi;->d:Ljava/util/Map;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfi;->u(Lcom/google/android/gms/internal/measurement/zzfc;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 10
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfb;->zze()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v9, "event_filters"

    const-string v10, "property_filters"

    const-string v11, "null reference"

    move v12, v5

    .line 13
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    .line 14
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzeg;

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v13

    .line 16
    :goto_1
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 17
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->zze(I)Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzei;

    .line 18
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjt;->zzav()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzei;

    .line 19
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzei;->zze()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzgo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzei;

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    move/from16 v16, v1

    move-object/from16 v17, v4

    const/4 v1, 0x0

    .line 21
    :goto_3
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzei;->zza()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 22
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzd(I)Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v4

    move-object/from16 v18, v14

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzel;->zze()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v8

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzgp;->a:[Ljava/lang/String;

    move-object/from16 v20, v11

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgp;->b:[Ljava/lang/String;

    .line 24
    invoke-static {v14, v8, v11}, Lcom/google/android/gms/measurement/internal/zzic;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzek;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzek;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzel;

    .line 26
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzc(ILcom/google/android/gms/internal/measurement/zzel;)Lcom/google/android/gms/internal/measurement/zzei;

    const/16 v16, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v18

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    goto :goto_3

    :cond_3
    move-object/from16 v19, v8

    move-object/from16 v20, v11

    if-eqz v16, :cond_4

    .line 27
    invoke-virtual {v15, v5, v3}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc(ILcom/google/android/gms/internal/measurement/zzei;)Lcom/google/android/gms/internal/measurement/zzeg;

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v7, v12, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v15, v13

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    goto/16 :goto_1

    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    goto :goto_4

    :cond_6
    move-object/from16 v17, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    move-object v15, v13

    .line 29
    :goto_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 30
    :goto_5
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 31
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf(I)Lcom/google/android/gms/internal/measurement/zzes;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzes;->zze()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgq;->a:[Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzgq;->b:[Ljava/lang/String;

    .line 33
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/measurement/internal/zzic;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzer;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzer;

    .line 35
    invoke-virtual {v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd(ILcom/google/android/gms/internal/measurement/zzer;)Lcom/google/android/gms/internal/measurement/zzeg;

    .line 36
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v7, v12, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v15, v13

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v17, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    .line 37
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 38
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 42
    :try_start_0
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 43
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    .line 46
    invoke-virtual {v3, v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v8

    .line 47
    invoke-virtual {v3, v9, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzeh;

    .line 49
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 50
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v8, v20

    .line 52
    invoke-static {v0, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzk()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Audience with no ID. appId"

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 57
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zza()I

    move-result v11

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzg()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzej;

    .line 59
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 64
    invoke-virtual {v0, v4, v5, v11}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 65
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzh()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzes;

    .line 66
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 68
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 71
    invoke-virtual {v0, v4, v5, v11}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    move-object/from16 v20, v8

    goto/16 :goto_6

    .line 72
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzg()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "data"

    const-string v15, "session_scoped"

    const-string v4, "filter_id"

    const-string v5, "audience_id"

    move-object/from16 v20, v3

    const-string v3, "app_id"

    const-wide/16 v21, -0x1

    move-object/from16 v23, v1

    if-eqz v13, :cond_14

    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzej;

    .line 73
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 74
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-static {v13, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzg()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_10

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 82
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 84
    :cond_10
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v1

    move-object/from16 v25, v12

    new-instance v12, Landroid/content/ContentValues;

    .line 85
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 86
    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v12, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    .line 89
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzq()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzej;->zzn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 91
    :goto_b
    invoke-virtual {v12, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v1, v9, v4, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v1, v12, v21

    if-nez v1, :cond_13

    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Failed to insert event filter (got -1). appId"

    .line 97
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_13
    move-object/from16 v3, v20

    move-object/from16 v1, v23

    move-object/from16 v12, v25

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 99
    :try_start_3
    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 101
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Error storing event filter. appId"

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 103
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 104
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzes;

    .line 105
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 106
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 116
    :cond_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    .line 117
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 118
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v0

    .line 119
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v26, v3

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zzk()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    .line 123
    :goto_f
    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 126
    invoke-virtual {v0, v10, v1, v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v0, v12, v21

    if-nez v0, :cond_19

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 128
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Failed to insert property filter (got -1). appId"

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_10

    :cond_19
    move-object/from16 v0, v25

    move-object/from16 v3, v26

    goto/16 :goto_c

    :catch_1
    move-exception v0

    .line 131
    :try_start_5
    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 133
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Error storing property filter. appId"

    .line 134
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 135
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    :goto_10
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 137
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 140
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v3, v12

    move-object/from16 v5, v19

    .line 141
    invoke-virtual {v0, v10, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v4

    .line 142
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    .line 143
    invoke-virtual {v0, v9, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v19, v5

    :cond_1a
    move-object/from16 v3, v20

    move-object/from16 v1, v23

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v23, v1

    goto/16 :goto_17

    :cond_1b
    move-object/from16 v23, v1

    const/4 v1, 0x0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    .line 145
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzeh;

    .line 147
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeh;->zzk()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeh;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_12

    :cond_1c
    move-object v4, v1

    :goto_12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 148
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-virtual {v6}, Le/m/a/f/l/a/q3;->e()V

    .line 150
    invoke-virtual {v6}, Le/m/a/f/l/a/v0;->d()V

    .line 151
    invoke-virtual {v6}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x1

    :try_start_6
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v3, "select count(1) from audience_filter_values where app_id=?"

    .line 152
    invoke-virtual {v6, v3, v4}, Le/m/a/f/l/a/d;->r(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v5, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 153
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v6, 0x7d0

    .line 154
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdu;->F:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 155
    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v5

    .line 156
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    .line 157
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    cmp-long v3, v3, v6

    if-gtz v3, :cond_1e

    goto/16 :goto_14

    .line 158
    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    .line 159
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 160
    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1f

    .line 161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_20

    .line 162
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1f
    const-string v0, ","

    .line 163
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audience_filter_values"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    :catch_2
    move-exception v0

    .line 167
    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 168
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 169
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Database error querying filters. appId"

    .line 170
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 171
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    :cond_20
    :goto_14
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 173
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfb;->zzc()Lcom/google/android/gms/internal/measurement/zzfb;

    .line 175
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v1, p0

    goto :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    .line 176
    iget-object v3, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 177
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 178
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 180
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 181
    :goto_15
    iget-object v3, v1, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 182
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    invoke-virtual {v3}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v3}, Le/m/a/f/l/a/q3;->e()V

    new-instance v4, Landroid/content/ContentValues;

    .line 185
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "remote_config"

    .line 186
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "config_last_modified_time"

    move-object/from16 v5, p3

    .line 187
    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_9
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    const-string v5, "apps"

    const-string v7, "app_id = ?"

    .line 189
    invoke-virtual {v0, v5, v4, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_21

    iget-object v0, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 191
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to update remote config (got 0). appId"

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 193
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    .line 194
    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 195
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 196
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 197
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing remote config. appId"

    .line 198
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :cond_21
    :goto_16
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 200
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2

    :catchall_1
    move-exception v0

    :goto_17
    move-object/from16 v1, p0

    .line 201
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    throw v0
.end method

.method public final q(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zzg()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->x(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfc;

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzq()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzp()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzh()Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzkh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 8
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zzg()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 14
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zzg()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfb;)V
    .locals 9

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Ln3/g/a;

    invoke-direct {v1}, Ln3/g/a;-><init>()V

    new-instance v2, Ln3/g/a;

    .line 2
    invoke-direct {v2}, Ln3/g/a;-><init>()V

    new-instance v3, Ln3/g/a;

    .line 3
    invoke-direct {v3}, Ln3/g/a;-><init>()V

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfb;->zza()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 5
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/measurement/zzfb;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzez;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 8
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v6, "EventConfig contained null event name"

    .line 9
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 13
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzez;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzez;

    .line 14
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfb;->zzd(ILcom/google/android/gms/internal/measurement/zzez;)Lcom/google/android/gms/internal/measurement/zzfb;

    .line 15
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzf()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzd()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 16
    invoke-virtual {v1, v6, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzg()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zze()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzh()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zza()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zza()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_5
    :goto_1
    iget-object v6, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 25
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzez;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 28
    invoke-virtual {v6, v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 29
    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfi;->e:Ljava/util/Map;

    .line 30
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfi;->f:Ljava/util/Map;

    .line 31
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfi;->h:Ljava/util/Map;

    .line 32
    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/q3;->e()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "remote_config"

    const-string v4, "config_last_modified_time"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const-string v3, "apps"

    const-string v5, "app_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 11
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 14
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 16
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance v5, Landroid/util/Pair;

    .line 18
    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_1
    :try_start_2
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Error querying remote config. appId"

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 24
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v1

    :goto_3
    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->d:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->e:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->f:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    .line 29
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->h:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 31
    :cond_4
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [B

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->q(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfb;

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfb;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->d:Ljava/util/Map;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfi;->u(Lcom/google/android/gms/internal/measurement/zzfc;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->t(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfc;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    .line 37
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_5
    throw p1

    :cond_6
    return-void
.end method

.method public final t(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfc;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EES programs found"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzj()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgo;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzc;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzc;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzfi;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfi;Ljava/lang/String;)V

    const-string v2, "internal.appMetadata"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzfi;)V

    const-string v2, "internal.logger"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Lcom/google/android/gms/internal/measurement/zzgo;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->i:Ln3/g/f;

    .line 11
    invoke-virtual {v1, p1, v0}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "EES program loaded for appId, activities"

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgo;->zza()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgk;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgo;->zza()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgk;->zzd()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgm;

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "EES program activity"

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgm;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    .line 20
    :catch_0
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 22
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Failed to load EES program. appId"

    .line 23
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfi;->i:Ln3/g/f;

    .line 25
    invoke-virtual {p2, p1}, Ln3/g/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
