.class public final Lcom/google/android/gms/measurement/internal/zzik;
.super Le/m/a/f/l/a/w;
.source "SourceFile"


# instance fields
.field public volatile c:Lcom/google/android/gms/measurement/internal/zzid;

.field public volatile d:Lcom/google/android/gms/measurement/internal/zzid;

.field public e:Lcom/google/android/gms/measurement/internal/zzid;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final f:Ljava/util/Map;

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:Lcom/google/android/gms/measurement/internal/zzid;

.field public j:Lcom/google/android/gms/measurement/internal/zzid;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/w;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzid;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    if-nez v1, :cond_0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzik;->d:Lcom/google/android/gms/measurement/internal/zzid;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    :goto_0
    move-object v3, v1

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    .line 4
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzik;->l(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzid;

    .line 5
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzid;->c:J

    iget-boolean v13, v0, Lcom/google/android/gms/measurement/internal/zzid;->e:Z

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzid;->f:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object v0, v7, Lcom/google/android/gms/measurement/internal/zzik;->d:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object v2, v7, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v9, Le/m/a/f/l/a/a2;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Le/m/a/f/l/a/a2;-><init>(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZ)V

    .line 9
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZLandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/zzid;->c:J

    .line 2
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzid;->c:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    .line 3
    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    .line 4
    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    if-eqz p5, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    if-eqz v8, :cond_c

    if-eqz v5, :cond_3

    new-instance v8, Landroid/os/Bundle;

    .line 5
    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    .line 6
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    .line 7
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :goto_2
    move-object v14, v8

    .line 8
    invoke-static {v1, v14, v7}, Lcom/google/android/gms/measurement/internal/zzkw;->s(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    .line 9
    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    .line 10
    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/zzid;->c:J

    const-string v2, "_pi"

    .line 11
    invoke-virtual {v14, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    iget-wide v10, v2, Le/m/a/f/l/a/k3;->b:J

    sub-long v10, v3, v10

    iput-wide v3, v2, Le/m/a/f/l/a/k3;->b:J

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkw;->q(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v10, 0x1

    const-string v2, "_mst"

    .line 17
    invoke-virtual {v14, v2, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    :cond_8
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzid;->e:Z

    if-eq v7, v2, :cond_9

    const-string v2, "auto"

    goto :goto_3

    :cond_9
    const-string v2, "app"

    :goto_3
    move-object v10, v2

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v11

    .line 21
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzid;->e:Z

    move-wide/from16 p5, v11

    if-eqz v2, :cond_b

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzid;->f:J

    cmp-long v2, v11, v8

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    move-wide v12, v11

    goto :goto_5

    :cond_b
    :goto_4
    move-wide/from16 v12, p5

    :goto_5
    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v9

    const-string v11, "_vs"

    .line 23
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzhw;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    .line 24
    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzik;->j(Lcom/google/android/gms/measurement/internal/zzid;ZJ)V

    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    .line 25
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzid;->e:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzik;->j:Lcom/google/android/gms/measurement/internal/zzid;

    :cond_e
    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Le/m/a/f/l/a/m;->d()V

    .line 28
    invoke-virtual {v2}, Le/m/a/f/l/a/w;->e()V

    new-instance v3, Le/m/a/f/l/a/l2;

    invoke-direct {v3, v2, v1}, Le/m/a/f/l/a/l2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/zzid;ZJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->j()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->g(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzid;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    .line 5
    invoke-virtual {v2, v1, p2, p3, p4}, Le/m/a/f/l/a/k3;->a(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzid;->d:Z

    :cond_1
    return-void
.end method

.method public final k(Z)Lcom/google/android/gms/measurement/internal/zzid;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->j:Lcom/google/android/gms/measurement/internal/zzid;

    return-object p1
.end method

.method public final l(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string p2, "\\."

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 4
    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final m(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzid;

    const-string v1, "name"

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 6
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 7
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzik;->f:Ljava/util/Map;

    .line 8
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->m:Ljava/lang/String;

    .line 3
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzid;
    .locals 5

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->f:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzid;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->l(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzid;

    const/4 v2, 0x0

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkw;->j0()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->i:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->i:Lcom/google/android/gms/measurement/internal/zzid;

    return-object p1

    :cond_1
    return-object v0
.end method
