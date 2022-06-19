.class public final Lcom/google/android/gms/measurement/internal/zzkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/x0;


# static fields
.field public static volatile E:Lcom/google/android/gms/measurement/internal/zzkp;


# instance fields
.field public final A:Ljava/util/Map;

.field public B:Lcom/google/android/gms/measurement/internal/zzid;

.field public C:Ljava/lang/String;

.field public final D:Le/m/a/f/l/a/z3;

.field public final a:Lcom/google/android/gms/measurement/internal/zzfi;

.field public final b:Lcom/google/android/gms/measurement/internal/zzen;

.field public c:Le/m/a/f/l/a/d;

.field public d:Le/m/a/f/l/a/t;

.field public e:Lcom/google/android/gms/measurement/internal/zzkd;

.field public f:Le/m/a/f/l/a/j4;

.field public final g:Lcom/google/android/gms/measurement/internal/zzkr;

.field public h:Le/m/a/f/l/a/y1;

.field public i:Lcom/google/android/gms/measurement/internal/zzjm;

.field public final j:Lcom/google/android/gms/measurement/internal/zzkg;

.field public k:Lcom/google/android/gms/measurement/internal/zzez;

.field public final l:Lcom/google/android/gms/measurement/internal/zzfr;

.field public m:Z

.field public n:Z

.field public o:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public p:Ljava/util/List;

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/nio/channels/FileLock;

.field public w:Ljava/nio/channels/FileChannel;

.field public x:Ljava/util/List;

.field public y:Ljava/util/List;

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->m:Z

    new-instance p2, Le/m/a/f/l/a/w3;

    invoke-direct {p2, p0}, Le/m/a/f/l/a/w3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkq;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfr;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkg;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->j:Lcom/google/android/gms/measurement/internal/zzkg;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 5
    invoke-virtual {p2}, Le/m/a/f/l/a/q3;->f()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzen;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 7
    invoke-virtual {p2}, Le/m/a/f/l/a/q3;->f()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfi;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfi;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 9
    invoke-virtual {p2}, Le/m/a/f/l/a/q3;->f()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    new-instance p2, Ljava/util/HashMap;

    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->A:Ljava/util/Map;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p2

    new-instance v0, Le/m/a/f/l/a/r3;

    invoke-direct {v0, p0, p1}, Le/m/a/f/l/a/r3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzkq;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final D(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/q3;->c:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkp;->E:Lcom/google/android/gms/measurement/internal/zzkp;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzkp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkp;->E:Lcom/google/android/gms/measurement/internal/zzkp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkp;

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzfr;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzkp;->E:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkp;->E:Lcom/google/android/gms/measurement/internal/zzkp;

    return-object p0
.end method

.method public static final s(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method

.method public static final u(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;J)Z
    .locals 43

    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "_ai"

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 2
    invoke-virtual {v4}, Le/m/a/f/l/a/d;->K()V

    :try_start_0
    new-instance v4, Le/m/a/f/l/a/x3;

    invoke-direct {v4, v1}, Le/m/a/f/l/a/x3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const/4 v6, 0x0

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    move-wide/from16 v7, p2

    move-object v11, v4

    .line 4
    invoke-virtual/range {v5 .. v11}, Le/m/a/f/l/a/d;->p(Ljava/lang/String;JJLe/m/a/f/l/a/x3;)V

    iget-object v5, v4, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    if-eqz v5, :cond_61

    .line 5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_34

    .line 6
    :cond_0
    iget-object v5, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzp()Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_0
    iget-object v8, v4, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "_fr"

    const-string v7, "_et"

    move/from16 v16, v9

    const-string v9, "_e"

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    if-ge v10, v8, :cond_29

    :try_start_1
    iget-object v3, v4, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 9
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 10
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v2, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Lcom/google/android/gms/measurement/internal/zzfi;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "_err"

    if-eqz v2, :cond_3

    .line 12
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v9

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual {v2, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v6, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfi;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v6, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfi;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v23

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    iget-object v6, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0xb

    const-string v27, "_ev"

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v24, v2

    .line 26
    invoke-virtual/range {v23 .. v29}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    move v7, v10

    move/from16 v9, v16

    move/from16 v11, v22

    move-object v10, v5

    const/4 v5, -0x1

    goto/16 :goto_16

    .line 27
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzgo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, v18

    .line 29
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    move-object/from16 v18, v2

    const-string v2, "Renaming ad_impression to _ai"

    invoke-virtual {v11, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x5

    .line 32
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 33
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v11

    if-ge v2, v11, :cond_5

    const-string v11, "ad_platform"

    .line 34
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v23

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 35
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "admob"

    .line 36
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v10

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->o()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v10

    const-string v11, "AdMob ad impression logged from app. Potentially duplicative."

    .line 39
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v24

    goto :goto_2

    :cond_5
    move/from16 v24, v10

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v10, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 41
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfi;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "_c"

    if-nez v2, :cond_a

    :try_start_3
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 42
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    .line 44
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v23, v13

    .line 45
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v25, v12

    const v12, 0x171c4

    if-eq v13, v12, :cond_8

    const v12, 0x17331

    if-eq v13, v12, :cond_7

    const v12, 0x17333

    if-eq v13, v12, :cond_6

    goto :goto_3

    :cond_6
    const-string v12, "_ui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const-string v12, "_ug"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x2

    goto :goto_4

    :cond_8
    const-string v12, "_in"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v11, -0x1

    :goto_4
    if-eqz v11, :cond_b

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    move-object/from16 v27, v5

    move-object/from16 v26, v7

    move-object v7, v14

    move/from16 v19, v15

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_a
    move-object/from16 v25, v12

    move/from16 v23, v13

    :cond_b
    move-object/from16 v26, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 46
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v27, v5

    const-string v5, "_r"

    if-ge v11, v7, :cond_e

    .line 47
    :try_start_5
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 48
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v7, v14

    move/from16 v19, v15

    const-wide/16 v14, 0x1

    .line 49
    invoke-virtual {v5, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 51
    invoke-virtual {v3, v11, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/4 v12, 0x1

    goto :goto_6

    :cond_c
    move-object v7, v14

    move/from16 v19, v15

    .line 52
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 53
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v13, 0x1

    .line 54
    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 55
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 56
    invoke-virtual {v3, v11, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/4 v13, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object v14, v7

    move/from16 v15, v19

    move-object/from16 v5, v27

    goto :goto_5

    :cond_e
    move-object v7, v14

    move/from16 v19, v15

    if-nez v12, :cond_f

    if-eqz v2, :cond_f

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 58
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v12, "Marking event as conversion"

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 59
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v14

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 61
    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v11

    .line 63
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v14, 0x1

    .line 64
    invoke-virtual {v11, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 65
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    :cond_f
    if-nez v13, :cond_10

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 67
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v12, "Marking event as real-time"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 68
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v13

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 70
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v11

    .line 72
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v12, 0x1

    .line 73
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 74
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    :cond_10
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 75
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->t()J

    move-result-wide v29

    iget-object v12, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 77
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v28, v11

    .line 78
    invoke-virtual/range {v28 .. v33}, Le/m/a/f/l/a/d;->A(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zzai;->e:J

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    iget-object v14, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v14

    .line 80
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzdu;->o:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 81
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v13

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_11

    .line 82
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->u(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    const/16 v16, 0x1

    .line 83
    :goto_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkw;->R(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v2, :cond_18

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 84
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->t()J

    move-result-wide v29

    iget-object v11, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v28, v5

    .line 87
    invoke-virtual/range {v28 .. v33}, Le/m/a/f/l/a/d;->A(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzai;->c:J

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v13, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdu;->n:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v5

    int-to-long v13, v5

    cmp-long v5, v11, v13

    if-lez v5, :cond_18

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v5

    const-string v11, "Too many conversions. Not logging as conversion. appId"

    iget-object v12, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 91
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 92
    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 93
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v14

    if-ge v11, v14, :cond_14

    .line 94
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr;

    move v13, v11

    goto :goto_9

    .line 97
    :cond_12
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v12, 0x1

    :cond_13
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_14
    if-eqz v12, :cond_16

    if-eqz v5, :cond_15

    .line 98
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_a

    :cond_15
    const/4 v5, 0x0

    :cond_16
    if-eqz v5, :cond_17

    .line 99
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzav()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 100
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v11, 0xa

    .line 101
    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 103
    invoke-virtual {v3, v13, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_a

    .line 104
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v5

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v11, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 106
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 107
    invoke-virtual {v5, v8, v11}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_a
    if-eqz v2, :cond_20

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v11, -0x1

    .line 110
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "currency"

    const-string v14, "value"

    if-ge v5, v12, :cond_1b

    .line 111
    :try_start_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    move v8, v5

    goto :goto_c

    .line 112
    :cond_19
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    move v11, v5

    :cond_1a
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1b
    const/4 v5, -0x1

    if-ne v8, v5, :cond_1c

    goto/16 :goto_10

    .line 113
    :cond_1c
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->o()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 116
    invoke-static {v3, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->u(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 117
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/zzkp;->s(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_f

    :cond_1d
    const/4 v5, -0x1

    if-ne v11, v5, :cond_1e

    goto :goto_e

    .line 118
    :cond_1e
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1f

    const/4 v11, 0x0

    .line 120
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_21

    .line 121
    invoke-virtual {v2, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 122
    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 123
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_d

    .line 124
    :cond_1f
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->o()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v11, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 126
    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 128
    invoke-static {v3, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->u(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 129
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->s(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v5, -0x1

    .line 130
    :cond_21
    :goto_10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 131
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v7, :cond_23

    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_23

    .line 134
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjt;->zzav()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 135
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->C(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v6

    if-eqz v6, :cond_22

    move/from16 v6, v19

    move-object/from16 v10, v27

    .line 136
    invoke-virtual {v10, v6, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move/from16 v13, v23

    const/4 v2, 0x0

    const/4 v14, 0x0

    goto :goto_11

    :cond_22
    move/from16 v6, v19

    move-object/from16 v10, v27

    move-object v2, v3

    move-object v14, v7

    move/from16 v13, v22

    :goto_11
    move-object v12, v2

    move v15, v6

    goto/16 :goto_15

    :cond_23
    move/from16 v6, v19

    move-object/from16 v10, v27

    move-object v12, v3

    move v15, v6

    move-object v14, v7

    move/from16 v13, v22

    goto/16 :goto_15

    :cond_24
    move/from16 v6, v19

    move-object/from16 v10, v27

    goto :goto_13

    :cond_25
    move/from16 v6, v19

    move-object/from16 v10, v27

    const-string v2, "_vs"

    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 138
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v11, v26

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v25, :cond_27

    .line 140
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v8

    if-gtz v2, :cond_27

    .line 141
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzjt;->zzav()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->C(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v7

    if-eqz v7, :cond_26

    move/from16 v8, v23

    .line 143
    invoke-virtual {v10, v8, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move v15, v6

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_12

    :cond_26
    move/from16 v8, v23

    move-object v2, v3

    move/from16 v15, v22

    move-object/from16 v12, v25

    :goto_12
    move-object v14, v2

    move v13, v8

    goto :goto_15

    :cond_27
    move/from16 v8, v23

    move-object v14, v3

    move/from16 v15, v22

    goto :goto_14

    :cond_28
    :goto_13
    move/from16 v8, v23

    move v15, v6

    move-object v14, v7

    :goto_14
    move v13, v8

    move-object/from16 v12, v25

    .line 144
    :goto_15
    iget-object v2, v4, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfo;

    move/from16 v7, v24

    invoke-interface {v2, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v22, 0x1

    .line 146
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzj(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move/from16 v9, v16

    :goto_16
    add-int/lit8 v2, v7, 0x1

    move-object v5, v10

    move-object/from16 v3, v18

    move v10, v2

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_29
    move-object v10, v5

    move/from16 v22, v11

    move-object v11, v7

    const-wide/16 v2, 0x0

    move-wide v12, v2

    move/from16 v7, v22

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v7, :cond_2d

    .line 147
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v8

    .line 148
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 149
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 150
    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    if-eqz v14, :cond_2a

    .line 151
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzw(I)Lcom/google/android/gms/internal/measurement/zzfx;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    :cond_2a
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 152
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 153
    invoke-static {v8, v11}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v14

    .line 154
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_18

    :cond_2b
    const/4 v8, 0x0

    :goto_18
    if-eqz v8, :cond_2c

    .line 155
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v2

    if-lez v14, :cond_2c

    .line 156
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v12, v14

    :cond_2c
    :goto_19
    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_17

    :cond_2d
    const/4 v5, 0x0

    .line 157
    invoke-virtual {v1, v10, v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->y(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V

    .line 158
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzam()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v7, "_se"

    if-eqz v6, :cond_2f

    :try_start_7
    const-string v6, "_s"

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 159
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 160
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 161
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {v5, v6, v7}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v5, "_sid"

    .line 163
    invoke-static {v10, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->r(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_30

    const/4 v5, 0x1

    .line 164
    invoke-virtual {v1, v10, v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->y(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V

    goto :goto_1a

    .line 165
    :cond_30
    invoke-static {v10, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->r(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_31

    .line 166
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzx(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v5

    const-string v6, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v7, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 169
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 170
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_31
    :goto_1a
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 172
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v6, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 173
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v6

    const-string v7, "Checking account type status for ad personalization signals"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v6, v5, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 175
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 176
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfi;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v5, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 177
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 178
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 179
    invoke-virtual {v6}, Le/m/a/f/l/a/l0;->y()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 180
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzao;->n()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 182
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 183
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->k()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v6

    const-string v7, "Turning off ad personalization due to account type"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v6

    move-object/from16 v7, v17

    .line 185
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v5, v5, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 186
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzao;->k()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    const-wide/16 v8, 0x1

    .line 188
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v6, 0x0

    .line 190
    :goto_1b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzb()I

    move-result v8

    if-ge v6, v8, :cond_33

    .line 191
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaj(I)Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 193
    invoke-virtual {v10, v6, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzah(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_1c

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 194
    :cond_33
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzl(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_34
    :goto_1c
    const-wide v5, 0x7fffffffffffffffL

    .line 195
    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfx;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzN(J)Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v5, 0x0

    .line 196
    :goto_1d
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v6

    if-ge v5, v6, :cond_37

    .line 197
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-gez v7, :cond_35

    .line 199
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 200
    :cond_35
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-lez v7, :cond_36

    .line 201
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzN(J)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 202
    :cond_37
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzv()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 203
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzn()Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->f:Le/m/a/f/l/a/j4;

    .line 204
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 205
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v23

    .line 206
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzam()Ljava/util/List;

    move-result-object v24

    .line 207
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzan()Ljava/util/List;

    move-result-object v25

    .line 208
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 209
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v22, v5

    .line 210
    invoke-virtual/range {v22 .. v27}, Le/m/a/f/l/a/j4;->h(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 211
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v6, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    new-instance v5, Ljava/util/HashMap;

    .line 213
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    .line 214
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkw;->o()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v8, 0x0

    .line 216
    :goto_1e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v9

    if-ge v8, v9, :cond_4d

    .line 217
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 218
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v12, "_efs"

    const-string v13, "_sr"

    if-eqz v11, :cond_3c

    :try_start_8
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 219
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 220
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v14, "_en"

    invoke-static {v11, v14}, Lcom/google/android/gms/measurement/internal/zzkr;->j(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 221
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/m/a/f/l/a/g;

    if-nez v14, :cond_38

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 222
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v15, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 223
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v14, v15, v11}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v14

    if-eqz v14, :cond_38

    .line 225
    invoke-virtual {v5, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    if-eqz v14, :cond_3b

    iget-object v11, v14, Le/m/a/f/l/a/g;->i:Ljava/lang/Long;

    if-nez v11, :cond_3b

    iget-object v11, v14, Le/m/a/f/l/a/g;->j:Ljava/lang/Long;

    if-eqz v11, :cond_39

    .line 226
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v20, 0x1

    cmp-long v11, v17, v20

    if-lez v11, :cond_39

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 227
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v11, v14, Le/m/a/f/l/a/g;->j:Ljava/lang/Long;

    .line 228
    invoke-static {v9, v13, v11}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    iget-object v11, v14, Le/m/a/f/l/a/g;->k:Ljava/lang/Boolean;

    if-eqz v11, :cond_3a

    .line 229
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3a

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 230
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-wide/16 v13, 0x1

    .line 231
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_3a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_3b
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto/16 :goto_25

    :cond_3c
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 234
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v14, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 235
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v14

    const-string v15, "measurement.account.time_zone_offset_minutes"

    .line 236
    invoke-virtual {v11, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 237
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v17, :cond_3d

    .line 238
    :try_start_9
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object v15, v0

    .line 239
    :try_start_a
    iget-object v11, v11, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 240
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 241
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    invoke-virtual {v11, v2, v3, v15}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    const-wide/16 v14, 0x0

    .line 243
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    move-object/from16 p3, v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->k0(JJ)J

    move-result-wide v2

    .line 244
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfo;

    const-wide/16 v20, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-wide/from16 v22, v14

    const-string v14, "_dbg"

    .line 245
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_40

    .line 246
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfo;->zzi()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_40

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 v24, v11

    .line 247
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 248
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    goto :goto_21

    :cond_3e
    const/4 v11, 0x1

    goto :goto_22

    :cond_3f
    move-object/from16 v11, v24

    goto :goto_20

    :cond_40
    :goto_21
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 249
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v12, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 250
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzfi;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    :goto_22
    if-gtz v11, :cond_41

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    .line 253
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v3, v12, v11}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto/16 :goto_25

    .line 256
    :cond_41
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/m/a/f/l/a/g;

    if-nez v12, :cond_42

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 257
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v14, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 258
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v12

    if-nez v12, :cond_42

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v12

    .line 260
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v12

    const-string v14, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 261
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v24, v2

    .line 262
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v12, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Le/m/a/f/l/a/g;

    iget-object v3, v4, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 264
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v27

    .line 265
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    .line 266
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v42}, Le/m/a/f/l/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_23

    :cond_42
    move-wide/from16 v24, v2

    move-object v2, v12

    :goto_23
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 267
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 268
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v12, "_eid"

    invoke-static {v3, v12}, Lcom/google/android/gms/measurement/internal/zzkr;->j(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_43

    const/4 v12, 0x1

    goto :goto_24

    :cond_43
    const/4 v12, 0x0

    .line 269
    :goto_24
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x1

    if-ne v11, v14, :cond_46

    .line 270
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v2, Le/m/a/f/l/a/g;->i:Ljava/lang/Long;

    if-nez v3, :cond_44

    iget-object v3, v2, Le/m/a/f/l/a/g;->j:Ljava/lang/Long;

    if-nez v3, :cond_44

    iget-object v3, v2, Le/m/a/f/l/a/g;->k:Ljava/lang/Boolean;

    if-eqz v3, :cond_45

    :cond_44
    const/4 v3, 0x0

    .line 272
    invoke-virtual {v2, v3, v3, v3}, Le/m/a/f/l/a/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 273
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_45
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_25
    move-object/from16 v25, v4

    move-object/from16 v24, v7

    const-wide/16 v3, 0x1

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_28

    .line 275
    :cond_46
    invoke-virtual {v7, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_48

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 276
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    int-to-long v14, v11

    .line 277
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9, v13, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_47

    const/4 v11, 0x0

    .line 280
    invoke-virtual {v2, v11, v3, v11}, Le/m/a/f/l/a/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 281
    :cond_47
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v11

    move-wide/from16 v14, v24

    invoke-virtual {v2, v11, v12, v14, v15}, Le/m/a/f/l/a/g;->b(JJ)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 283
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v25, v4

    move-object/from16 v24, v7

    const-wide/16 v3, 0x1

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_27

    :cond_48
    move-wide/from16 v14, v24

    move-object/from16 v24, v7

    .line 284
    iget-object v7, v2, Le/m/a/f/l/a/g;->h:Ljava/lang/Long;

    if-eqz v7, :cond_49

    .line 285
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v26, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    goto :goto_26

    .line 286
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    move-object/from16 v26, v3

    move-object/from16 v25, v4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()J

    move-result-wide v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-wide/from16 v5, v22

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkw;->k0(JJ)J

    move-result-wide v22

    :goto_26
    cmp-long v3, v22, v14

    if-eqz v3, :cond_4b

    .line 287
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 288
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-wide/16 v3, 0x1

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-static {v9, v6, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 290
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    int-to-long v5, v11

    .line 291
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v9, v13, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v7, v28

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 294
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v5, v6}, Le/m/a/f/l/a/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 295
    :cond_4a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12, v14, v15}, Le/m/a/f/l/a/g;->b(JJ)Le/m/a/f/l/a/g;

    move-result-object v2

    move-object/from16 v6, v27

    .line 297
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_4b
    move-object/from16 v6, v27

    move-object/from16 v7, v28

    const-wide/16 v3, 0x1

    .line 298
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 299
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, v26

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v12}, Le/m/a/f/l/a/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 300
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_4c
    :goto_27
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_28
    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v24

    move-object/from16 v4, v25

    const-wide/16 v2, 0x0

    goto/16 :goto_1e

    :cond_4d
    move-object/from16 v25, v4

    move-object v7, v6

    move-object v6, v5

    .line 302
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 303
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzp()Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 304
    :cond_4e
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 305
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 306
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/f/l/a/g;

    invoke-virtual {v4, v3}, Le/m/a/f/l/a/d;->k(Le/m/a/f/l/a/g;)V

    goto :goto_29

    :cond_4f
    move-object/from16 v25, v4

    :cond_50
    move-object/from16 v2, v25

    iget-object v3, v2, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 307
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 308
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 309
    invoke-virtual {v4, v3}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v4

    if-nez v4, :cond_51

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 311
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 312
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 313
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    .line 314
    :cond_51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v5

    if-lez v5, :cond_56

    .line 315
    invoke-virtual {v4}, Le/m/a/f/l/a/l0;->G()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_52

    .line 316
    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzX(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_2a

    .line 317
    :cond_52
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzs()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 318
    :goto_2a
    invoke-virtual {v4}, Le/m/a/f/l/a/l0;->I()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-nez v9, :cond_53

    goto :goto_2b

    :cond_53
    move-wide v5, v7

    :goto_2b
    cmp-long v7, v5, v11

    if-eqz v7, :cond_54

    .line 319
    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzY(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_2c

    .line 320
    :cond_54
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzt()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 321
    :goto_2c
    invoke-virtual {v4}, Le/m/a/f/l/a/l0;->b()V

    .line 322
    invoke-virtual {v4}, Le/m/a/f/l/a/l0;->H()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzF(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 323
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Le/m/a/f/l/a/l0;->u(J)V

    .line 324
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Le/m/a/f/l/a/l0;->r(J)V

    .line 325
    invoke-virtual {v4}, Le/m/a/f/l/a/l0;->K()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_55

    .line 326
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_2d

    .line 327
    :cond_55
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzq()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 328
    :goto_2d
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 329
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 330
    invoke-virtual {v5, v4}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    .line 331
    :cond_56
    :goto_2e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v4

    if-lez v4, :cond_5d

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 332
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzaw()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 333
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v5, v2, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 334
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfi;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfc;->zzq()Z

    move-result v7

    if-nez v7, :cond_57

    goto :goto_2f

    .line 335
    :cond_57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()J

    move-result-wide v7

    .line 336
    invoke-virtual {v10, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzH(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_30

    .line 337
    :cond_58
    :goto_2f
    iget-object v4, v2, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 338
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 339
    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzH(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_30

    .line 340
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 341
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v7, "Did not find measurement config or missing version info. appId"

    iget-object v8, v2, Le/m/a/f/l/a/x3;->a:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 342
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 343
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :goto_30
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 346
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 347
    invoke-virtual {v4}, Le/m/a/f/l/a/v0;->d()V

    .line 348
    invoke-virtual {v4}, Le/m/a/f/l/a/q3;->e()V

    .line 349
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzba()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 352
    invoke-virtual {v4}, Le/m/a/f/l/a/d;->N()V

    iget-object v8, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 353
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    .line 354
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v8

    .line 355
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v10

    iget-object v12, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 356
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->k()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 357
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->e()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_5a

    .line 358
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v10

    iget-object v12, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 359
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->k()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 360
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->e()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v10, v10, v12

    if-lez v10, :cond_5b

    :cond_5a
    iget-object v10, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 361
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v10

    .line 362
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v10

    const-string v11, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 363
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 364
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 365
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 366
    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    :cond_5b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v9, v4, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 368
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 369
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->I([B)[B

    move-result-object v8
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v9, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 370
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v9

    .line 371
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v9

    const-string v10, "Saving bundle, size"

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Landroid/content/ContentValues;

    .line 372
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 373
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "bundle_end_timestamp"

    .line 374
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "data"

    .line 375
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "has_realtime"

    .line 376
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbg()Z

    move-result v8

    if-eqz v8, :cond_5c

    const-string v8, "retry_count"

    .line 378
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zze()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 379
    :cond_5c
    :try_start_d
    invoke-virtual {v4}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v10, "queue"

    const/4 v11, 0x0

    .line 380
    invoke-virtual {v8, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    cmp-long v5, v8, v5

    if-nez v5, :cond_5d

    iget-object v5, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 381
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 382
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v5

    const-string v6, "Failed to insert bundle (got -1). appId"

    .line 383
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_31

    :catch_1
    move-exception v0

    move-object v5, v0

    .line 384
    :try_start_e
    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 385
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v6, "Error storing bundle. appId"

    .line 387
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_31

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 388
    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 390
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v6, "Data loss. Failed to serialize bundle. appId"

    .line 391
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 392
    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    :cond_5d
    :goto_31
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 394
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v2, v2, Le/m/a/f/l/a/x3;->b:Ljava/util/List;

    .line 395
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v4}, Le/m/a/f/l/a/v0;->d()V

    .line 397
    invoke-virtual {v4}, Le/m/a/f/l/a/q3;->e()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 398
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 399
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5f

    if-eqz v6, :cond_5e

    const-string v7, ","

    .line 400
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_5e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_5f
    const-string v6, ")"

    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v4}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 404
    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 405
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_60

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 406
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 407
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 408
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 409
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 410
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 411
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 412
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v5, 0x2

    :try_start_f
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 413
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_33

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 414
    :try_start_10
    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 415
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    :goto_33
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 419
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 420
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 421
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 422
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    const/4 v2, 0x1

    return v2

    .line 423
    :cond_61
    :goto_34
    :try_start_11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 424
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 425
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 426
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 427
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 428
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 429
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 430
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->L()V

    .line 431
    throw v2
.end method

.method public final B()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const/4 v1, 0x0

    const-string v2, "select count(1) > 0 from raw_events"

    .line 4
    invoke-virtual {v0, v2, v1}, Le/m/a/f/l/a/d;->r(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final C(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->i(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-wide/16 v0, 0x1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->J(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    const-string v1, "null reference"

    .line 3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 11
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjm;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const/4 v5, 0x0

    if-nez v1, :cond_2

    new-instance v1, Le/m/a/f/l/a/l0;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Le/m/a/f/l/a/l0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->f(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v1, v4}, Le/m/a/f/l/a/l0;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 18
    iget-object v3, v1, Le/m/a/f/l/a/l0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v3, v1, Le/m/a/f/l/a/l0;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 21
    invoke-virtual {v1, v4}, Le/m/a/f/l/a/l0;->w(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->l0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    const-string v4, "00000000-0000-0000-0000-000000000000"

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzdu;->q0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 25
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/measurement/internal/zzjm;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->f(Ljava/lang/String;)V

    .line 30
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 31
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzjm;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 35
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v3, "_id"

    .line 36
    invoke-virtual {v0, v2, v3}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 38
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v3, "_lair"

    .line 39
    invoke-virtual {v0, v2, v3}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v0

    if-nez v0, :cond_6

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v10

    new-instance v0, Le/m/a/f/l/a/y3;

    .line 41
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-wide/16 v2, 0x1

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v8, "auto"

    const-string v9, "_lair"

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 44
    invoke-virtual {v2, v0}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    goto :goto_2

    .line 45
    :cond_5
    invoke-virtual {v1}, Le/m/a/f/l/a/l0;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->f(Ljava/lang/String;)V

    .line 48
    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->o(Ljava/lang/String;)V

    .line 49
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->c(Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 51
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->n(Ljava/lang/String;)V

    .line 52
    :cond_7
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    .line 53
    invoke-virtual {v1, v2, v3}, Le/m/a/f/l/a/l0;->p(J)V

    .line 54
    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 55
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->h(Ljava/lang/String;)V

    .line 56
    :cond_9
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v1, v2, v3}, Le/m/a/f/l/a/l0;->i(J)V

    .line 57
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 58
    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->g(Ljava/lang/String;)V

    .line 59
    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:J

    invoke-virtual {v1, v2, v3}, Le/m/a/f/l/a/l0;->k(J)V

    .line 60
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->v(Z)V

    .line 61
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 62
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->q(Ljava/lang/String;)V

    .line 63
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->h0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->l:J

    invoke-virtual {v1, v2, v3}, Le/m/a/f/l/a/l0;->e(J)V

    .line 65
    :cond_c
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Z

    invoke-virtual {v1, v0}, Le/m/a/f/l/a/l0;->d(Z)V

    .line 66
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/Boolean;

    .line 67
    iget-object v2, v1, Le/m/a/f/l/a/l0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v2, v1, Le/m/a/f/l/a/l0;->C:Z

    iget-object v3, v1, Le/m/a/f/l/a/l0;->s:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-nez v3, :cond_d

    if-nez v0, :cond_d

    move v3, v4

    goto :goto_3

    :cond_d
    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_3

    .line 69
    :cond_e
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 70
    iput-boolean v2, v1, Le/m/a/f/l/a/l0;->C:Z

    iput-object v0, v1, Le/m/a/f/l/a/l0;->s:Ljava/lang/Boolean;

    .line 71
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    invoke-virtual {v1, v2, v3}, Le/m/a/f/l/a/l0;->l(J)V

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzno;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->v0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/util/List;

    invoke-virtual {v1, p1}, Le/m/a/f/l/a/l0;->x(Ljava/util/List;)V

    goto :goto_4

    .line 74
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzno;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->u0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 75
    invoke-virtual {v1, v5}, Le/m/a/f/l/a/l0;->x(Ljava/util/List;)V

    .line 76
    :cond_10
    :goto_4
    iget-object p1, v1, Le/m/a/f/l/a/l0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean p1, v1, Le/m/a/f/l/a/l0;->C:Z

    if-eqz p1, :cond_11

    .line 78
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 80
    invoke-virtual {p1, v1}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    :cond_11
    return-object v1
.end method

.method public final G()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object v0
.end method

.method public final H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->b:Lcom/google/android/gms/measurement/internal/zzah;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzah;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v1, "null reference"

    .line 6
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    .line 8
    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Database error"

    .line 19
    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_1

    .line 21
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final I()Le/m/a/f/l/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    return-object v0
.end method

.method public final J()Le/m/a/f/l/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->d:Le/m/a/f/l/a/t;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()Lcom/google/android/gms/measurement/internal/zzkr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    return-object v0
.end method

.method public final M()Lcom/google/android/gms/measurement/internal/zzkw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->o()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->n:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->v:Ljava/nio/channels/FileLock;

    const-string v2, "Storage concurrent access okay"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :goto_0
    move v1, v0

    goto :goto_3

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "google_app_measurement.db"

    .line 13
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    .line 14
    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->w:Ljava/nio/channels/FileChannel;

    .line 15
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->v:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Storage concurrent data access panic"

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Storage lock already acquired"

    .line 24
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to access storage lock file"

    .line 27
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to acquire storage lock"

    .line 30
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_b

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->w:Ljava/nio/channels/FileChannel;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    const-wide/16 v4, 0x0

    const-string v2, "Bad channel to read from"

    const/4 v6, 0x4

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 34
    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 35
    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 36
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v6, :cond_4

    const/4 v7, -0x1

    if-eq v1, v7, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 38
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "Unexpected data length. Bytes read"

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 40
    :cond_4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 43
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "Failed to read from channel"

    .line 44
    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Le/m/a/f/l/a/w;->e()V

    iget v1, v1, Lcom/google/android/gms/measurement/internal/zzdy;->e:I

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    if-le v3, v1, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 52
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 55
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-ge v3, v1, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkp;->w:Ljava/nio/channels/FileChannel;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    if-eqz v7, :cond_a

    .line 57
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    .line 58
    :cond_8
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    :try_start_2
    invoke-virtual {v7, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->g0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v4

    .line 63
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 64
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 65
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v8, 0x4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Error writing to channel. Bytes written"

    .line 68
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 69
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 70
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 73
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to write to channel"

    .line 74
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 75
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 78
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 82
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Le/m/a/f/l/a/l0;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "null reference"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkp;->h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->j:Lcom/google/android/gms/measurement/internal/zzkg;

    new-instance v2, Landroid/net/Uri$Builder;

    .line 7
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 8
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->J()Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_2
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->e:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzdu;->f:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 13
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "config/app/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_3
    new-instance v3, Ljava/lang/String;

    .line 15
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->M()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app_instance_id"

    invoke-virtual {v3, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "platform"

    const-string v6, "android"

    .line 18
    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->m()J

    const-wide/32 v6, 0xd6dd

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "gmp_version"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "runtime_version"

    const-string v4, "0"

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :try_start_0
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Fetching remote configuration"

    .line 28
    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 30
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfi;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 32
    invoke-virtual {v2}, Le/m/a/f/l/a/v0;->d()V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    .line 33
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 35
    new-instance v5, Ln3/g/a;

    invoke-direct {v5}, Ln3/g/a;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 36
    invoke-virtual {v5, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v11, v5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->s:Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    new-instance v12, Le/m/a/f/l/a/t3;

    invoke-direct {v12, p0}, Le/m/a/f/l/a/t3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 38
    invoke-virtual {v7}, Le/m/a/f/l/a/v0;->d()V

    .line 39
    invoke-virtual {v7}, Le/m/a/f/l/a/q3;->e()V

    .line 40
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    new-instance v2, Le/m/a/f/l/a/r;

    const/4 v10, 0x0

    move-object v6, v2

    .line 42
    invoke-direct/range {v6 .. v12}, Le/m/a/f/l/a/r;-><init>(Lcom/google/android/gms/measurement/internal/zzen;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Le/m/a/f/l/a/p;)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->m(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 44
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 46
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 47
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "null reference"

    .line 1
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 6
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzdu;->r0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzei;->b(Lcom/google/android/gms/measurement/internal/zzau;)Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->B:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->C:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->B:Lcom/google/android/gms/measurement/internal/zzid;

    .line 12
    :cond_1
    :goto_0
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzei;->d:Landroid/os/Bundle;

    .line 13
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkw;->s(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->a()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    :cond_2
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 15
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 16
    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->h(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    .line 17
    :cond_3
    iget-boolean v5, v0, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-nez v5, :cond_4

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void

    .line 19
    :cond_4
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 20
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->o2()Landroid/os/Bundle;

    move-result-object v5

    const-wide/16 v7, 0x1

    const-string v9, "ga_safelisted"

    .line 22
    invoke-virtual {v5, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzau;

    .line 23
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v15, v5}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    move-object v13, v7

    move-object/from16 v16, v5

    move-wide/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 26
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 27
    invoke-virtual {v0, v5, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    move-object v13, v4

    .line 28
    :goto_1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 29
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 30
    invoke-virtual {v4}, Le/m/a/f/l/a/d;->K()V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 31
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-virtual {v4}, Le/m/a/f/l/a/v0;->d()V

    .line 34
    invoke-virtual {v4}, Le/m/a/f/l/a/q3;->e()V

    const-wide/16 v7, 0x0

    cmp-long v5, v11, v7

    const/4 v7, 0x2

    const/4 v14, 0x1

    if-gez v5, :cond_7

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 36
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 38
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 39
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_7
    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    .line 41
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    const-string v9, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 42
    invoke-virtual {v4, v9, v8}, Le/m/a/f/l/a/d;->H(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 43
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v8, :cond_8

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v9

    .line 45
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v10, "User property timed out"

    .line 46
    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 47
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 48
    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 49
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 50
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v14

    .line 51
    invoke-virtual {v9, v10, v15, v6, v14}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzab;->g:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz v6, :cond_9

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzau;

    .line 52
    invoke-direct {v9, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzau;J)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 53
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 54
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Le/m/a/f/l/a/d;->s(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_3

    :cond_a
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 55
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 56
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual {v4}, Le/m/a/f/l/a/v0;->d()V

    .line 58
    invoke-virtual {v4}, Le/m/a/f/l/a/q3;->e()V

    if-gez v5, :cond_b

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 60
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v6, "Invalid time querying expired conditional properties"

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 63
    invoke-virtual {v4, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_b
    new-array v6, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    .line 65
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 66
    invoke-virtual {v4, v8, v6}, Le/m/a/f/l/a/d;->H(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 67
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    .line 68
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v8, :cond_c

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v9

    .line 71
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v10, "User property expired"

    .line 72
    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 73
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 74
    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 75
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 76
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v15

    .line 77
    invoke-virtual {v9, v10, v14, v7, v15}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 79
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzab;->k:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz v7, :cond_d

    .line 80
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 81
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 82
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Le/m/a/f/l/a/d;->s(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_5

    .line 83
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzau;

    .line 84
    invoke-direct {v7, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzau;J)V

    invoke-virtual {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_6

    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 85
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 86
    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 87
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Le/m/a/f/l/a/v0;->d()V

    .line 90
    invoke-virtual {v4}, Le/m/a/f/l/a/q3;->e()V

    if-gez v5, :cond_10

    iget-object v5, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 91
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 92
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 93
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 94
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 95
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 97
    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_7

    :cond_10
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const/4 v3, 0x1

    aput-object v6, v5, v3

    .line 99
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 100
    invoke-virtual {v4, v3, v5}, Le/m/a/f/l/a/d;->H(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 101
    :goto_7
    new-instance v14, Ljava/util/ArrayList;

    .line 102
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v15, :cond_11

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    new-instance v10, Le/m/a/f/l/a/y3;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 104
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v8

    .line 107
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v10

    move-object/from16 v16, v8

    move-wide v8, v11

    move-object/from16 v17, v2

    move-object v2, v10

    move-object/from16 v10, v16

    .line 108
    invoke-direct/range {v4 .. v10}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 109
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 110
    invoke-virtual {v4, v2}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 112
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "User property triggered"

    .line 113
    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 114
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 115
    iget-object v8, v2, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 116
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 117
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 118
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 119
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Too many active user properties, ignoring"

    .line 120
    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 121
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 122
    iget-object v8, v2, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 123
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 124
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :goto_9
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzab;->i:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz v4, :cond_13

    .line 126
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzks;

    .line 127
    invoke-direct {v4, v2}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Le/m/a/f/l/a/y3;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 128
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 129
    invoke-virtual {v4, v15}, Le/m/a/f/l/a/d;->n(Lcom/google/android/gms/measurement/internal/zzab;)Z

    move-object/from16 v2, v17

    goto/16 :goto_8

    .line 130
    :cond_14
    invoke-virtual {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 131
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzau;

    .line 132
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzau;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_a

    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 133
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 134
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 136
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception v0

    .line 137
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 138
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 139
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    .line 140
    throw v0
.end method

.method public final f(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 2
    invoke-virtual {v2, v3}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->w(Le/m/a/f/l/a/l0;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzp;

    move-object v2, v15

    .line 15
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v6

    .line 18
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->N()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->F()J

    move-result-wide v9

    .line 20
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->C()J

    move-result-wide v11

    .line 21
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->z()Z

    move-result v14

    const/16 v16, 0x0

    move-object v1, v15

    move/from16 v15, v16

    .line 22
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->P()Ljava/lang/String;

    move-result-object v16

    .line 23
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->s()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 24
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->y()Z

    move-result v22

    const/16 v23, 0x0

    .line 25
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->J()Ljava/lang/String;

    move-result-object v24

    .line 26
    iget-object v15, v13, Le/m/a/f/l/a/l0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v15

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v15, v13, Le/m/a/f/l/a/l0;->s:Ljava/lang/Boolean;

    move-object/from16 v25, v15

    .line 28
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->D()J

    move-result-wide v26

    .line 29
    invoke-virtual {v13}, Le/m/a/f/l/a/l0;->a()Ljava/util/List;

    move-result-object v28

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzah;->d()Ljava/lang/String;

    move-result-object v29

    const/4 v13, 0x0

    move-object/from16 v3, p2

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    move-object v2, v1

    move-object/from16 v1, p1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->g(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 32
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "No app data available; dropping event"

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->b(Lcom/google/android/gms/measurement/internal/zzau;)Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzei;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Le/m/a/f/l/a/d;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->u(Lcom/google/android/gms/measurement/internal/zzei;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->a()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method public final h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 6
    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 8
    invoke-virtual {v1}, Le/m/a/f/l/a/d;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 10
    invoke-virtual {v1, p1}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    move p2, v4

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    const/4 v6, 0x0

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Le/m/a/f/l/a/l0;->m(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 16
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 17
    invoke-virtual {p4, v1}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p4

    .line 19
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p5, "Fetching config failed. code, error"

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 22
    invoke-virtual {p3}, Le/m/a/f/l/a/v0;->d()V

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzfi;->k:Ljava/util/Map;

    .line 23
    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 25
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 27
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjm;->i:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    .line 29
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p3, v6

    :goto_2
    if-eqz p3, :cond_9

    .line 30
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_9

    .line 31
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p3, v6

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 32
    :cond_a
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 33
    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 34
    invoke-virtual {p5, p1, p4, p3}, Lcom/google/android/gms/measurement/internal/zzfi;->p(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_c

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 36
    :goto_4
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->L()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->s:Z

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    return-void

    .line 38
    :cond_b
    :goto_5
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 39
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 40
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 41
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 42
    invoke-virtual {p3, p1, v6, v6}, Lcom/google/android/gms/measurement/internal/zzfi;->p(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_c

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 44
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Le/m/a/f/l/a/l0;->j(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 45
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 46
    invoke-virtual {p3, v1}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    if-ne p2, v5, :cond_d

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 48
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p3, "Config not found. Using empty config. appId"

    .line 49
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 50
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 51
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 53
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->B()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->q()V

    goto :goto_7

    .line 58
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    .line 59
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 61
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    goto :goto_4

    .line 63
    :goto_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 64
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 65
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->L()V

    .line 66
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->s:Z

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    .line 69
    throw p1
.end method

.method public final i(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    const-string v8, "null reference"

    .line 3
    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->D(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 7
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_0

    .line 8
    invoke-virtual {v9}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    .line 9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 10
    invoke-virtual {v9, v10, v11}, Le/m/a/f/l/a/l0;->j(J)V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 11
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 12
    invoke-virtual {v12, v9}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 13
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 14
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v9}, Le/m/a/f/l/a/v0;->d()V

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 16
    invoke-interface {v9, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-nez v9, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void

    .line 19
    :cond_1
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v12

    :cond_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Le/m/a/f/l/a/v0;->d()V

    const/4 v15, 0x0

    iput-object v15, v9, Lcom/google/android/gms/measurement/internal/zzao;->f:Ljava/lang/Boolean;

    iput-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzao;->g:J

    .line 23
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->n:I

    const/4 v14, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v14, :cond_3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 25
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 26
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Incorrect app type, assuming installed app. appId, appType"

    .line 28
    invoke-virtual {v11, v10, v15, v9}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    :cond_3
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 29
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 30
    invoke-virtual {v10}, Le/m/a/f/l/a/d;->K()V

    :try_start_0
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 31
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 32
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v15, "_npa"

    .line 33
    invoke-virtual {v10, v11, v15}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v11, "auto"

    iget-object v14, v10, Le/m/a/f/l/a/y3;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v20, v3

    const/4 v3, 0x1

    goto :goto_2

    .line 35
    :cond_5
    :goto_0
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/Boolean;

    if-eqz v11, :cond_8

    .line 36
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v15, "_npa"

    .line 37
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-eq v3, v14, :cond_6

    const-wide/16 v21, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const-string v22, "auto"

    move-object v14, v11

    move-wide/from16 v16, v12

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    iget-object v10, v10, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    iget-object v14, v11, Lcom/google/android/gms/measurement/internal/zzks;->d:Ljava/lang/Long;

    .line 38
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 39
    :cond_7
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_8
    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-eqz v10, :cond_9

    .line 40
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v15, "_npa"

    const/16 v18, 0x0

    const-string v19, "auto"

    move-object v14, v10

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->k(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 42
    :cond_9
    :goto_2
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 43
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 44
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 45
    invoke-static {v11, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v10, v11}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    move-object/from16 v22, v4

    .line 49
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->J()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v10, v11, v14, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "New GMP App Id passed in. Removing cached database data. appId"

    .line 53
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 54
    invoke-virtual {v3, v4, v10}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 55
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 56
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v3}, Le/m/a/f/l/a/q3;->e()V

    .line 58
    invoke-virtual {v3}, Le/m/a/f/l/a/v0;->d()V

    .line 59
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v14, v11

    const-string v11, "events"

    .line 61
    invoke-virtual {v10, v11, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const-string v15, "user_attributes"

    .line 62
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "conditional_properties"

    .line 63
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "apps"

    .line 64
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "raw_events"

    .line 65
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "raw_events_metadata"

    .line 66
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "event_filters"

    .line 67
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "property_filters"

    .line 68
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "audience_filter_values"

    .line 69
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "consent_settings"

    .line 70
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v11, v0

    if-lez v11, :cond_a

    iget-object v0, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 72
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v10, "Deleted application data. app, records"

    .line 73
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v4, v11}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 76
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v10, "Error deleting application data. appId, error"

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    invoke-virtual {v3, v10, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v22, v4

    :cond_c
    :goto_4
    if-eqz v15, :cond_f

    .line 79
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v3

    const-wide/32 v10, -0x80000000

    cmp-long v0, v3, v10

    if-eqz v0, :cond_d

    .line 80
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v3

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    cmp-long v0, v3, v10

    if-eqz v0, :cond_d

    const/4 v14, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    .line 81
    :goto_5
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v15}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v3

    const-wide/32 v10, -0x80000000

    cmp-long v3, v3, v10

    if-nez v3, :cond_e

    if-eqz v0, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    or-int/2addr v3, v14

    if-eqz v3, :cond_f

    new-instance v3, Landroid/os/Bundle;

    .line 84
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 85
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_au"

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    .line 87
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->e(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 88
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    if-nez v9, :cond_10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 90
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v4, "_f"

    .line 91
    invoke-virtual {v0, v3, v4}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v0

    const/4 v14, 0x0

    goto :goto_7

    .line 92
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 94
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v4, "_v"

    .line 95
    invoke-virtual {v0, v3, v4}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v0

    const/4 v14, 0x1

    :goto_7
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    .line 96
    div-long v9, v12, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v6

    move-object/from16 v23, v7

    const-wide/16 v6, 0x1

    add-long/2addr v9, v6

    mul-long/2addr v9, v3

    const-string v3, "_dac"

    const-string v4, "_et"

    const-string v15, "_r"

    const-string v6, "_c"

    if-nez v14, :cond_24

    .line 97
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v7, "_fot"

    .line 98
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object v9, v15

    move-object v15, v7

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->k:Lcom/google/android/gms/measurement/internal/zzez;

    .line 101
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto/16 :goto_9

    .line 104
    :cond_11
    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 105
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v10

    .line 106
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 107
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzez;->a()Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 109
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Install Referrer Reporter is not available"

    .line 110
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzey;

    invoke-direct {v10, v7, v0}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Lcom/google/android/gms/measurement/internal/zzez;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 113
    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 114
    invoke-direct {v14, v5, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 115
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 116
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    if-nez v14, :cond_13

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->j:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 119
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    const/4 v15, 0x0

    .line 120
    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 121
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_16

    .line 122
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 123
    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_18

    .line 124
    iget-object v15, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 125
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_15

    .line 126
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 127
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzez;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v5, Landroid/content/Intent;

    .line 128
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 130
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    const/4 v15, 0x1

    .line 131
    invoke-virtual {v0, v14, v5, v10, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 132
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 133
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v10, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_14

    move-object v14, v15

    goto :goto_8

    :cond_14
    move-object/from16 v14, v16

    .line 134
    :goto_8
    :try_start_6
    invoke-virtual {v5, v10, v14}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 135
    :try_start_7
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 136
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 137
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v7, "Exception occurred while binding to Install Referrer Service"

    .line 138
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 140
    :cond_15
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 143
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 145
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    .line 146
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 147
    :cond_17
    :goto_9
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 149
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->j:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    .line 150
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 151
    :cond_18
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    new-instance v5, Landroid/os/Bundle;

    .line 153
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v14, 0x1

    .line 154
    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    invoke-virtual {v5, v9, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v6, v23

    const-wide/16 v9, 0x0

    .line 156
    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 157
    invoke-virtual {v5, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v7, v22

    .line 158
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v20

    .line 159
    invoke-virtual {v5, v15, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x1

    .line 160
    invoke-virtual {v5, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 161
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->p:Z

    if-eqz v0, :cond_19

    .line 162
    invoke-virtual {v5, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    :cond_19
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 164
    invoke-static {v3, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 166
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 167
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    .line 169
    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    const-string v4, "first_open_count"

    .line 170
    invoke-virtual {v0, v3, v4}, Le/m/a/f/l/a/d;->u(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 171
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 174
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 175
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1a
    :goto_b
    const-wide/16 v3, 0x0

    goto/16 :goto_13

    .line 177
    :cond_1b
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 178
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 179
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 180
    iget-object v0, v0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    .line 181
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 182
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "Package info is null, first open report might be inaccurate. appId"

    .line 183
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 184
    invoke-virtual {v4, v8, v14, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_21

    move-object/from16 v20, v15

    .line 185
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_20

    move-object/from16 v22, v7

    .line 186
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v14, v7

    if-eqz v0, :cond_1e

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->c0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v14, 0x0

    cmp-long v0, v9, v14

    if-nez v0, :cond_1c

    const-wide/16 v14, 0x1

    .line 188
    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x0

    :cond_1c
    :goto_d
    const/4 v14, 0x0

    goto :goto_e

    :cond_1d
    const-wide/16 v14, 0x1

    .line 189
    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_1e
    const/4 v7, 0x0

    const/4 v14, 0x1

    .line 190
    :goto_e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v15, "_fi"

    const/4 v4, 0x1

    if-eq v4, v14, :cond_1f

    const-wide/16 v16, 0x0

    goto :goto_f

    :cond_1f
    const-wide/16 v16, 0x1

    .line 191
    :goto_f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object/from16 v4, v20

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_11

    :cond_20
    move-object/from16 v22, v7

    move-object/from16 v4, v20

    goto :goto_10

    :cond_21
    move-object/from16 v22, v7

    move-object v4, v15

    :goto_10
    const/4 v7, 0x0

    :goto_11
    :try_start_a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 193
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 194
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 195
    iget-object v0, v0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_12

    :catch_3
    move-exception v0

    .line 196
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 197
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    .line 198
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    invoke-virtual {v6, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v7

    :goto_12
    if-eqz v15, :cond_1a

    .line 200
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    move-object/from16 v3, v22

    const-wide/16 v6, 0x1

    .line 201
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    :cond_22
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1a

    const-wide/16 v6, 0x1

    .line 203
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :goto_13
    cmp-long v0, v9, v3

    if-ltz v0, :cond_23

    .line 204
    invoke-virtual {v5, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    :cond_23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_f"

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v3

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    .line 206
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->g(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_14

    :cond_24
    move-object v5, v15

    .line 207
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v15, "_fvt"

    .line 208
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    new-instance v0, Landroid/os/Bundle;

    .line 212
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v7, 0x1

    .line 213
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->p:Z

    if-eqz v4, :cond_25

    .line 217
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    :cond_25
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_v"

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    .line 219
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->g(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_14

    .line 220
    :cond_26
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->i:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 221
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_cd"

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    .line 223
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->g(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 224
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 225
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 226
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->i()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 227
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 228
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception v0

    .line 229
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 230
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 231
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    .line 232
    throw v0

    :cond_28
    return-void
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 11

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->D(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 12
    invoke-virtual {v1}, Le/m/a/f/l/a/d;->K()V

    .line 13
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 14
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Le/m/a/f/l/a/d;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Removing conditional user property"

    .line 20
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 22
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 23
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 26
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Le/m/a/f/l/a/d;->s(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 28
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzab;->k:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->o2()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->k:Lcom/google/android/gms/measurement/internal/zzau;

    .line 31
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->k:Lcom/google/android/gms/measurement/internal/zzau;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 33
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/zzkw;->o0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    .line 34
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 37
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Conditional user property doesn\'t exist"

    .line 38
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 39
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 40
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 41
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 45
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 47
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception p1

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 50
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->L()V

    .line 51
    throw p1

    .line 52
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->D(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzks;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 11
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 17
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 20
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->K()V

    .line 21
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 24
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdu;->l0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "null reference"

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 26
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->n0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_id"

    .line 27
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 29
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 30
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "_lair"

    .line 31
    invoke-virtual {v0, v2, v3}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 33
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 34
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, p2, v1}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 38
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->i()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 40
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "User property removed"

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 42
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 43
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 47
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception p1

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 50
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->L()V

    .line 51
    throw p1
.end method

.method public final l(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v3, "null reference"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Le/m/a/f/l/a/v0;->d()V

    .line 8
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->e()V

    .line 9
    :try_start_0
    invoke-virtual {v1}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 10
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 19
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Reset analytics data. app, records"

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 25
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 27
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;->i(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method public final m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->B:Lcom/google/android/gms/measurement/internal/zzid;

    return-void
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 11

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 6
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->D(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzab;

    .line 14
    invoke-direct {v1, p1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzab;)V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 16
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->K()V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 18
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4}, Le/m/a/f/l/a/d;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 26
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 27
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->d:J

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->d:J

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->h:J

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->h:J

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->f:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->f:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzab;->i:Lcom/google/android/gms/measurement/internal/zzau;

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->i:Lcom/google/android/gms/measurement/internal/zzau;

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 29
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzks;->c:J

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v9

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzks;->f:Ljava/lang/String;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    goto :goto_0

    .line 31
    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->f:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 33
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->d:J

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzks;->f:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    move p1, v3

    .line 35
    :cond_4
    :goto_0
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->e:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    new-instance v10, Le/m/a/f/l/a/y3;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 36
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzab;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzks;->c:J

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v9

    .line 39
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v10

    .line 40
    invoke-direct/range {v3 .. v9}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 42
    invoke-virtual {v0, v10}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "User property updated immediately"

    .line 45
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 46
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 47
    iget-object v5, v10, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "(2)Too many active user properties, ignoring"

    .line 52
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 53
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 54
    iget-object v5, v10, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 57
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzab;->i:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz p1, :cond_6

    .line 58
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzau;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzab;->i:Lcom/google/android/gms/measurement/internal/zzau;

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->d:J

    invoke-direct {p1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzau;J)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 61
    invoke-virtual {p1, v1}, Le/m/a/f/l/a/d;->n(Lcom/google/android/gms/measurement/internal/zzab;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 63
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Conditional property added"

    .line 64
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 65
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 66
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 67
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 70
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 71
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Too many conditional properties, ignoring"

    .line 72
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 73
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 74
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 75
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 80
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 82
    invoke-virtual {p1}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 84
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 85
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->L()V

    .line 86
    throw p1
.end method

.method public final o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->A:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v1, "null reference"

    .line 5
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    new-instance v1, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzah;->d()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 12
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 14
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkp;->D(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->g0(Ljava/lang/String;)I

    move-result v9

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, 0x0

    if-eqz v9, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 9
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_2
    move v12, v6

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v10, "_ev"

    .line 12
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->c0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 16
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    :cond_5
    move/from16 v16, v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v14, "_ev"

    .line 21
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkw;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    .line 24
    :cond_7
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "null reference"

    if-eqz v5, :cond_b

    .line 25
    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzks;->c:J

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzks;->f:Ljava/lang/String;

    .line 26
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 27
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 29
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v8, "_sno"

    .line 30
    invoke-virtual {v7, v5, v8}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v8, v7, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 31
    instance-of v11, v8, Ljava/lang/Long;

    if-eqz v11, :cond_8

    .line 32
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v8

    .line 34
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 35
    iget-object v7, v7, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    const-string v11, "Retrieved last session number from database does not contain a valid (long) value"

    .line 36
    invoke-virtual {v8, v11, v7}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v8, "_s"

    .line 38
    invoke-virtual {v7, v5, v8}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-wide v7, v5, Le/m/a/f/l/a/g;->c:J

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 40
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "Backfill the session number. Last used session number"

    invoke-virtual {v5, v13, v11}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-wide/16 v7, 0x0

    .line 42
    :goto_1
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzks;

    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    .line 43
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "_sno"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->p(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    new-instance v5, Le/m/a/f/l/a/y3;

    .line 45
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 46
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzks;->f:Ljava/lang/String;

    .line 48
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzks;->c:J

    move-object v7, v5

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 52
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 53
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 54
    iget-object v7, v5, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 56
    invoke-virtual {v0, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 58
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->K()V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 60
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 61
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->l0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v5, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 63
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 64
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->o0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "_lair"

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 66
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v6, v3}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v3, v5, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    iget-object v0, v0, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 70
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v3, v4}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 73
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 74
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v3, v4}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_d
    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 78
    invoke-virtual {v0, v5}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 79
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 80
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->i()V

    if-nez v0, :cond_e

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 82
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    .line 83
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 84
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 85
    iget-object v6, v5, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 87
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 89
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 91
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->L()V

    return-void

    :catchall_0
    move-exception v0

    .line 92
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 93
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 94
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    .line 95
    throw v0
.end method

.method public final q()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjk;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    goto/16 :goto_1c

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Upload called in the client side when service should be used"

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    goto/16 :goto_1c

    .line 13
    :cond_1
    :try_start_2
    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    goto/16 :goto_1c

    .line 15
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Uploading requested multiple times"

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    goto/16 :goto_1c

    .line 19
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Network not connected, ignoring upload request"

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    goto/16 :goto_1c

    .line 26
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdu;->Q:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 29
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdu;->d:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v5, v11

    move v9, v4

    :goto_0
    if-ge v9, v0, :cond_5

    .line 30
    invoke-virtual {v1, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->A(Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 31
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v11

    cmp-long v0, v11, v7

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v7, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v8, v5, v11

    .line 34
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 35
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 37
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->F()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v8, -0x1

    if-nez v0, :cond_23

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    cmp-long v0, v11, v8

    if-nez v0, :cond_a

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 39
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 40
    :try_start_6
    invoke-virtual {v11}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v12, "select rowid from raw_events order by rowid desc limit 1;"

    .line 41
    invoke-virtual {v0, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 42
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 43
    :cond_7
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v12, v10

    .line 44
    :goto_1
    :try_start_8
    iget-object v11, v11, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 46
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v13, "Error querying raw events"

    .line 47
    invoke-virtual {v11, v13, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v12, :cond_8

    .line 48
    :goto_2
    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v12

    :goto_3
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_9
    throw v0

    .line 50
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdu;->g:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdu;->h:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v8

    .line 52
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 54
    invoke-virtual {v9}, Le/m/a/f/l/a/v0;->d()V

    .line 55
    invoke-virtual {v9}, Le/m/a/f/l/a/q3;->e()V

    if-lez v0, :cond_b

    move v11, v3

    goto :goto_5

    :cond_b
    move v11, v4

    .line 56
    :goto_5
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-lez v8, :cond_c

    move v11, v3

    goto :goto_6

    :cond_c
    move v11, v4

    .line 57
    :goto_6
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 58
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 59
    :try_start_a
    invoke-virtual {v9}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "rowid"

    const-string v14, "data"

    const-string v15, "retry_count"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/String;

    aput-object v7, v15, v4

    const-string v13, "queue"

    const-string v16, "app_id=?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    .line 61
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 62
    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 64
    :try_start_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-wide/from16 v21, v5

    goto/16 :goto_e

    .line 65
    :cond_d
    :try_start_d
    new-instance v13, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v4

    .line 67
    :goto_7
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 68
    :try_start_e
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v3, v9, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 69
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .line 70
    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 71
    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v11, 0x400

    new-array v11, v11, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-wide/from16 v21, v5

    .line 73
    :goto_8
    :try_start_10
    invoke-virtual {v0, v11}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_10

    .line 74
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 75
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V

    .line 76
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 77
    :try_start_11
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    array-length v3, v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    add-int/2addr v3, v14

    if-le v3, v8, :cond_e

    goto/16 :goto_c

    .line 78
    :cond_e
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->x(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v4, 0x2

    .line 79
    :try_start_13
    invoke-interface {v12, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 80
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzab(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 81
    :cond_f
    array-length v0, v0

    add-int/2addr v14, v0

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_2
    move-exception v0

    .line 83
    iget-object v3, v9, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 85
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to merge queued bundle. appId"

    .line 86
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 87
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_10
    const/4 v6, 0x0

    .line 88
    :try_start_14
    invoke-virtual {v4, v11, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-wide/from16 v21, v5

    .line 89
    :goto_9
    :try_start_15
    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 91
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to ungzip content"

    .line 92
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    move-wide/from16 v21, v5

    .line 94
    :goto_a
    :try_start_16
    iget-object v3, v9, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 96
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to unzip queued bundle. appId"

    .line 97
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 98
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :goto_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v0, :cond_12

    if-le v14, v8, :cond_11

    goto :goto_c

    :cond_11
    move-wide/from16 v5, v21

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 100
    :cond_12
    :goto_c
    :try_start_17
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object v0, v13

    goto :goto_e

    :catch_8
    move-exception v0

    move-wide/from16 v21, v5

    goto :goto_d

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    move-wide/from16 v21, v5

    const/4 v12, 0x0

    .line 101
    :goto_d
    :try_start_18
    iget-object v3, v9, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 103
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Error querying bundles. appId"

    .line 104
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v12, :cond_13

    .line 106
    :try_start_19
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 108
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 110
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzK()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzK()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_18

    const/4 v4, 0x0

    .line 113
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_18

    .line 114
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 115
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy;->zzK()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_11

    .line 116
    :cond_16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy;->zzK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const/4 v3, 0x0

    .line 117
    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_17
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 118
    :cond_18
    :goto_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v3

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    .line 122
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaf;->c:Le/m/a/f/l/a/b;

    const-string v8, "gaia_collection_enabled"

    invoke-interface {v6, v7, v8}, Le/m/a/f/l/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 123
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_13

    :cond_19
    const/4 v6, 0x0

    .line 124
    :goto_13
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v2

    .line 125
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v4, :cond_1e

    .line 126
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbt()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 127
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaf;->m()J

    const-wide/32 v11, 0xd6dd

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfx;->zzag(J)Lcom/google/android/gms/internal/measurement/zzfx;

    move-wide/from16 v11, v21

    .line 129
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaf(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 130
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    const/4 v13, 0x0

    .line 131
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzac(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v6, :cond_1a

    .line 132
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzo()Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_1a
    if-nez v2, :cond_1b

    .line 133
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 134
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzr()Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_1b
    if-nez v8, :cond_1c

    .line 135
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzm()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 136
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdu;->U:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v13, v7, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 137
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 138
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 139
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->s([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzG(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 140
    :cond_1d
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfv;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v21, v11

    goto :goto_14

    :cond_1e
    move-wide/from16 v11, v21

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 142
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 143
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 144
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->y(Lcom/google/android/gms/internal/measurement/zzfw;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1f
    const/4 v0, 0x0

    :goto_15
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 145
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v15

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->q:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v6, 0x0

    .line 149
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 150
    :try_start_1a
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    if-eqz v6, :cond_20

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 153
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v6, "Set uploading progress before finishing the previous upload"

    .line 154
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_16

    .line 155
    :cond_20
    new-instance v6, Ljava/util/ArrayList;

    .line 156
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    .line 157
    :goto_16
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 158
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    const-string v5, "?"

    if-lez v4, :cond_21

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v5

    .line 160
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 161
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Uploading data. app, uncompressed size, data"

    .line 162
    array-length v6, v15

    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->t:Z

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 164
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    new-instance v0, Le/m/a/f/l/a/s3;

    invoke-direct {v0, v1, v7}, Le/m/a/f/l/a/s3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v12}, Le/m/a/f/l/a/v0;->d()V

    .line 166
    invoke-virtual {v12}, Le/m/a/f/l/a/q3;->e()V

    .line 167
    iget-object v3, v12, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 168
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    new-instance v4, Le/m/a/f/l/a/r;

    const/16 v16, 0x0

    move-object v11, v4

    move-object v13, v7

    move-object/from16 v17, v0

    .line 169
    invoke-direct/range {v11 .. v17}, Le/m/a/f/l/a/r;-><init>(Lcom/google/android/gms/measurement/internal/zzen;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Le/m/a/f/l/a/p;)V

    .line 170
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfo;->m(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_1b

    .line 171
    :catch_a
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 172
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 173
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :catchall_3
    move-exception v0

    move-object v10, v12

    :goto_17
    if-eqz v10, :cond_22

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_22
    throw v0

    :cond_23
    move-wide v11, v5

    .line 177
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 178
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 180
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->d:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v11, v3

    .line 181
    invoke-virtual {v2}, Le/m/a/f/l/a/v0;->d()V

    .line 182
    invoke-virtual {v2}, Le/m/a/f/l/a/q3;->e()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 183
    :try_start_1c
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 184
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v3, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 185
    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 186
    :try_start_1d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 188
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "No expired configs for apps with pending events"

    .line 189
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_19

    :catch_b
    move-exception v0

    goto :goto_18

    :cond_24
    const/4 v4, 0x0

    .line 190
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 191
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1a

    :catchall_4
    move-exception v0

    move-object v10, v6

    goto :goto_1d

    :catch_c
    move-exception v0

    move-object v3, v6

    .line 192
    :goto_18
    :try_start_1f
    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 194
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Error selecting expired configs"

    .line 195
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    if-eqz v3, :cond_25

    .line 196
    :goto_19
    :try_start_20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_25
    move-object v10, v6

    .line 197
    :goto_1a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 198
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 199
    invoke-virtual {v0, v10}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 200
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->d(Le/m/a/f/l/a/l0;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :cond_26
    :goto_1b
    const/4 v2, 0x0

    .line 201
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    .line 202
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    return-void

    :catchall_5
    move-exception v0

    move-object v10, v3

    :goto_1d
    if-eqz v10, :cond_27

    .line 203
    :try_start_21
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_27
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 205
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    .line 207
    throw v0
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkr;->h(Lcom/google/android/gms/measurement/internal/zzau;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    if-eqz v11, :cond_3c

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfi;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfi;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfi;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    const/16 v14, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v15, "_ev"

    move-object v13, v10

    move-object/from16 v16, v2

    .line 23
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 24
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 26
    invoke-virtual {v2, v10}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Le/m/a/f/l/a/l0;->E()J

    move-result-wide v3

    invoke-virtual {v2}, Le/m/a/f/l/a/l0;->B()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 31
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->z:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->k()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->d(Le/m/a/f/l/a/l0;)V

    :cond_3
    return-void

    .line 34
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzei;->b(Lcom/google/android/gms/measurement/internal/zzau;)Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;)I

    move-result v12

    .line 37
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzkw;->u(Lcom/google/android/gms/measurement/internal/zzei;I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->a()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->s()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    .line 40
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v12

    .line 44
    invoke-virtual {v12, v2}, Lcom/google/android/gms/measurement/internal/zzec;->c(Lcom/google/android/gms/measurement/internal/zzau;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Logging event"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 45
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 46
    invoke-virtual {v11}, Le/m/a/f/l/a/d;->K()V

    .line 47
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdu;->l0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdu;->m0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 51
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 52
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v13, "_lair"

    .line 53
    invoke-virtual {v11, v12, v13}, Le/m/a/f/l/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    move-wide/from16 v28, v8

    if-nez v11, :cond_8

    :try_start_1
    const-string v9, "purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v9, 0x1

    :goto_2
    const-string v11, "_iap"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v33, v4

    move-object v8, v15

    goto/16 :goto_d

    :cond_a
    :goto_3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "currency"

    .line 58
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzas;->s2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_d

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->p2()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v9, v17, v21

    if-nez v9, :cond_b

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 60
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->q2()Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v21, v15

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v13, v14

    mul-double v17, v13, v19

    goto :goto_4

    :cond_b
    move-object/from16 v21, v15

    :goto_4
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v17, v13

    if-gtz v9, :cond_c

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v17, v13

    if-ltz v9, :cond_c

    .line 61
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    neg-long v13, v13

    goto :goto_5

    .line 63
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 66
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 68
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 69
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 70
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    return-void

    :cond_d
    move-object/from16 v21, v15

    :try_start_2
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->q2()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 72
    :cond_e
    :goto_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 73
    invoke-virtual {v11, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "[A-Z]{3}"

    .line 74
    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "_ltv_"

    .line 75
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 76
    :cond_f
    new-instance v9, Ljava/lang/String;

    .line 77
    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 78
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 79
    invoke-virtual {v11, v10, v9}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v11

    if-eqz v11, :cond_11

    iget-object v11, v11, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 80
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_10

    goto :goto_7

    .line 81
    :cond_10
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Le/m/a/f/l/a/y3;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v19

    add-long/2addr v11, v13

    .line 83
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    const/4 v14, 0x0

    move-object v13, v15

    move v8, v14

    const/4 v15, 0x0

    move-object v14, v9

    move-object/from16 v9, v21

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v33, v4

    move-object v8, v9

    move-object/from16 v9, v18

    const/4 v4, 0x2

    goto/16 :goto_c

    :cond_11
    :goto_7
    move-object/from16 v15, v21

    const/4 v8, 0x0

    .line 84
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 85
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdu;->E:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v12, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 87
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-virtual {v11}, Le/m/a/f/l/a/v0;->d()V

    .line 89
    invoke-virtual {v11}, Le/m/a/f/l/a/q3;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    invoke-virtual {v11}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v15

    const/4 v15, 0x3

    :try_start_4
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    .line 91
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v33, v4

    const/4 v4, 0x2

    :try_start_5
    aput-object v8, v15, v4

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 92
    invoke-virtual {v12, v8, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :catch_0
    move-exception v0

    :goto_8
    move-object v8, v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v33, v4

    :goto_9
    const/4 v4, 0x2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v21, v15

    goto :goto_9

    .line 93
    :goto_a
    :try_start_6
    iget-object v11, v11, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 94
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 95
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v12, v15, v8}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :goto_b
    new-instance v18, Le/m/a/f/l/a/y3;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object v13, v8

    move-object v14, v9

    move-object/from16 v8, v21

    invoke-direct/range {v11 .. v17}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v18

    :goto_c
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 98
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 99
    invoke-virtual {v11, v9}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 102
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v14

    iget-object v15, v9, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 104
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 106
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    :cond_12
    move-object/from16 v33, v4

    move-object/from16 v8, v21

    :goto_d
    const/4 v4, 0x2

    :cond_13
    :goto_e
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 107
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkw;->R(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 108
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    if-nez v11, :cond_14

    const-wide/16 v16, 0x0

    goto :goto_10

    .line 110
    :cond_14
    iget-object v12, v11, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    .line 111
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v16, 0x0

    .line 112
    :cond_15
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 113
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 114
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzas;->r2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 115
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_15

    .line 116
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_f

    :cond_16
    :goto_10
    const-wide/16 v22, 0x1

    add-long v15, v16, v22

    .line 117
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 118
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->t()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v30, v5

    const-wide/16 v4, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v8

    .line 120
    invoke-virtual/range {v11 .. v21}, Le/m/a/f/l/a/d;->B(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzai;->b:J

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdu;->k:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v15, 0x0

    .line 122
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v31, v6

    move-object/from16 v16, v7

    int-to-long v6, v14

    sub-long/2addr v12, v6

    cmp-long v6, v12, v4

    const-wide/16 v17, 0x3e8

    if-lez v6, :cond_18

    rem-long v12, v12, v17

    cmp-long v2, v12, v22

    if-nez v2, :cond_17

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzai;->b:J

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 126
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 127
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 128
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 129
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 130
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    return-void

    :cond_18
    if-eqz v9, :cond_1a

    :try_start_7
    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzai;->a:J

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdu;->m:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 132
    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v6, v12

    cmp-long v12, v6, v4

    if-lez v12, :cond_1a

    rem-long v6, v6, v17

    cmp-long v3, v6, v22

    if-nez v3, :cond_19

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzai;->a:J

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 136
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 138
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 140
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 142
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    return-void

    :cond_1a
    const v6, 0xf4240

    if-eqz v8, :cond_1c

    :try_start_8
    iget-wide v7, v11, Lcom/google/android/gms/measurement/internal/zzai;->d:J

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdu;->l:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v12

    .line 144
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    .line 145
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v7, v12

    cmp-long v12, v7, v4

    if-lez v12, :cond_1c

    cmp-long v2, v7, v22

    if-nez v2, :cond_1b

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzai;->d:J

    .line 148
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 149
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 150
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 151
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 152
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 153
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    return-void

    :cond_1c
    :try_start_9
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzau;->b:Lcom/google/android/gms/measurement/internal/zzas;

    .line 154
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->o2()Landroid/os/Bundle;

    move-result-object v7

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    const-string v11, "_o"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    invoke-virtual {v8, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkw;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzkw;->N(Ljava/lang/String;)Z

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v14, "_r"

    if-eqz v8, :cond_1d

    .line 157
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v8, v7, v12, v11}, Lcom/google/android/gms/measurement/internal/zzkw;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    invoke-virtual {v8, v7, v14, v11}, Lcom/google/android/gms/measurement/internal/zzkw;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    const-string v8, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    .line 159
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 160
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 161
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    move-object/from16 v12, v16

    .line 162
    invoke-virtual {v8, v11, v12}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v8

    if-eqz v8, :cond_1e

    iget-object v11, v8, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    .line 163
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_1e

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    iget-object v8, v8, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    invoke-virtual {v11, v7, v12, v8}, Lcom/google/android/gms/measurement/internal/zzkw;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 165
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 166
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-virtual {v8}, Le/m/a/f/l/a/v0;->d()V

    .line 168
    invoke-virtual {v8}, Le/m/a/f/l/a/q3;->e()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 169
    :try_start_b
    invoke-virtual {v8}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iget-object v12, v8, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 170
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->k()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzdu;->p:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 171
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v12

    .line 172
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v13, 0x0

    .line 173
    :try_start_c
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 174
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    aput-object v10, v12, v13

    const/16 v16, 0x1

    aput-object v6, v12, v16

    const-string v6, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v4, v31

    .line 175
    :try_start_d
    invoke-virtual {v11, v4, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    int-to-long v5, v5

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v4, v31

    :goto_11
    move-object v5, v0

    goto :goto_12

    :catch_5
    move-exception v0

    move-object/from16 v4, v31

    const/4 v13, 0x0

    goto :goto_11

    .line 176
    :goto_12
    :try_start_e
    iget-object v6, v8, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 177
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v6

    const-string v8, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 179
    invoke-virtual {v6, v8, v11, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    :goto_13
    const-wide/16 v11, 0x0

    cmp-long v8, v5, v11

    if-lez v8, :cond_1f

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v8

    .line 181
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v8

    const-string v11, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 182
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 183
    invoke-virtual {v8, v11, v12, v5}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzap;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzau;->c:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzau;->a:Ljava/lang/String;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzau;->d:J

    const-wide/16 v18, 0x0

    move-object v11, v5

    move/from16 v31, v13

    move-object v13, v6

    move-object v6, v14

    move-object v14, v10

    move-object/from16 v32, v4

    move-object v4, v15

    move-object v15, v8

    move-wide/from16 v16, v2

    move-object/from16 v20, v7

    .line 184
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 185
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzap;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v2, v10, v3}, Le/m/a/f/l/a/d;->C(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/g;

    move-result-object v2

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 187
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 188
    invoke-virtual {v2, v10}, Le/m/a/f/l/a/d;->v(Ljava/lang/String;)J

    move-result-wide v2

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->h(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v2, v2, v7

    if-ltz v2, :cond_20

    if-eqz v9, :cond_20

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 192
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->o()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzap;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->h(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 195
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->D:Le/m/a/f/l/a/z3;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 197
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 198
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 199
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    return-void

    :cond_20
    :try_start_f
    new-instance v2, Le/m/a/f/l/a/g;

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzap;->b:Ljava/lang/String;

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzap;->d:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v2

    move-object v12, v10

    move-wide/from16 v20, v7

    .line 200
    invoke-direct/range {v11 .. v27}, Le/m/a/f/l/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    .line 201
    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-wide v7, v2, Le/m/a/f/l/a/g;->f:J

    .line 202
    invoke-virtual {v5, v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzap;->a(Lcom/google/android/gms/measurement/internal/zzfr;J)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzap;->d:J

    .line 203
    invoke-virtual {v2, v7, v8}, Le/m/a/f/l/a/g;->c(J)Le/m/a/f/l/a/g;

    move-result-object v2

    .line 204
    :goto_14
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 205
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 206
    invoke-virtual {v3, v2}, Le/m/a/f/l/a/d;->k(Le/m/a/f/l/a/g;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 209
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    .line 211
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    move-object/from16 v3, p2

    .line 212
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 213
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzZ(I)Lcom/google/android/gms/internal/measurement/zzfx;

    const-string v8, "android"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 214
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 215
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 216
    :cond_22
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 217
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 218
    :cond_23
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 219
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 220
    :cond_24
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    const-wide/32 v10, -0x80000000

    cmp-long v10, v8, v10

    if-eqz v10, :cond_25

    long-to-int v8, v8

    .line 221
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 222
    :cond_25
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzR(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 223
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 224
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 225
    :cond_26
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 226
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/String;

    .line 227
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    .line 228
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzah;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 230
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 231
    :cond_27
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_28

    .line 232
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 233
    :cond_28
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzM(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 234
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v9, v8, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 235
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzau()Landroid/content/Context;

    move-result-object v9

    .line 236
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzdu;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2c

    .line 237
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_29

    goto/16 :goto_17

    .line 238
    :cond_29
    new-instance v14, Ljava/util/ArrayList;

    .line 239
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdu;->P:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 240
    invoke-virtual {v10, v4}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 241
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2a
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "measurement.id."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v12, :cond_2a

    .line 243
    :try_start_10
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2a

    .line 244
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v10, :cond_2a

    iget-object v11, v8, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 246
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v11

    .line 247
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v11

    const-string v12, "Too many experiment IDs. Number of IDs"

    .line 248
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_16

    :catch_6
    move-exception v0

    move-object v11, v0

    .line 249
    :try_start_11
    iget-object v12, v8, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 250
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v12

    .line 251
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->n()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v12

    const-string v13, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    .line 252
    :cond_2b
    :goto_16
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2d

    :cond_2c
    :goto_17
    move-object v14, v4

    :cond_2d
    if-eqz v14, :cond_2e

    .line 253
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 254
    :cond_2e
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 255
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/String;

    .line 256
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    .line 257
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v10

    if-eqz v10, :cond_2f

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 258
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 259
    invoke-virtual {v10, v11, v8}, Lcom/google/android/gms/measurement/internal/zzjm;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v10

    .line 260
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2f

    .line 261
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Z

    if-eqz v11, :cond_2f

    .line 262
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 263
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_2f

    .line 264
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzT(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_2f
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 265
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 266
    invoke-virtual {v10}, Le/m/a/f/l/a/w0;->g()V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 267
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 268
    invoke-virtual {v10}, Le/m/a/f/l/a/w0;->g()V

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 269
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 270
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzao;->l()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzae(I)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 271
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 272
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzao;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdu;->h0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v10

    if-nez v10, :cond_30

    .line 274
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->l:J

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzz(J)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_30
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 275
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 276
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    .line 277
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_31

    .line 278
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_31
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 279
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 280
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v10

    if-nez v10, :cond_34

    new-instance v10, Le/m/a/f/l/a/l0;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 281
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Le/m/a/f/l/a/l0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->N(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Le/m/a/f/l/a/l0;->f(Ljava/lang/String;)V

    .line 283
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-virtual {v10, v12}, Le/m/a/f/l/a/l0;->n(Ljava/lang/String;)V

    .line 284
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->b:Ljava/lang/String;

    invoke-virtual {v10, v12}, Le/m/a/f/l/a/l0;->o(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 286
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzjm;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    invoke-virtual {v10, v9}, Le/m/a/f/l/a/l0;->w(Ljava/lang/String;)V

    :cond_32
    const-wide/16 v12, 0x0

    .line 288
    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->t(J)V

    .line 289
    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->u(J)V

    .line 290
    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->r(J)V

    .line 291
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->c:Ljava/lang/String;

    invoke-virtual {v10, v9}, Le/m/a/f/l/a/l0;->h(Ljava/lang/String;)V

    .line 292
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->i(J)V

    .line 293
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v10, v9}, Le/m/a/f/l/a/l0;->g(Ljava/lang/String;)V

    .line 294
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:J

    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->p(J)V

    .line 295
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:J

    invoke-virtual {v10, v12, v13}, Le/m/a/f/l/a/l0;->k(J)V

    .line 296
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:Z

    invoke-virtual {v10, v9}, Le/m/a/f/l/a/l0;->v(Z)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    invoke-virtual {v9, v4, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 298
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->l:J

    invoke-virtual {v10, v11, v12}, Le/m/a/f/l/a/l0;->e(J)V

    .line 299
    :cond_33
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    invoke-virtual {v10, v11, v12}, Le/m/a/f/l/a/l0;->l(J)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 300
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 301
    invoke-virtual {v9, v10}, Le/m/a/f/l/a/d;->j(Le/m/a/f/l/a/l0;)V

    :cond_34
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    .line 302
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 303
    invoke-virtual {v10}, Le/m/a/f/l/a/l0;->M()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 304
    invoke-virtual {v10}, Le/m/a/f/l/a/l0;->M()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 305
    :cond_35
    invoke-virtual {v10}, Le/m/a/f/l/a/l0;->P()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 306
    invoke-virtual {v10}, Le/m/a/f/l/a/l0;->P()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_36
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 307
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 308
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-virtual {v8, v3}, Le/m/a/f/l/a/d;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move/from16 v13, v31

    .line 309
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v13, v8, :cond_37

    .line 310
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v8

    .line 311
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/f/l/a/y3;

    iget-object v9, v9, Le/m/a/f/l/a/y3;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 312
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/f/l/a/y3;

    iget-wide v9, v9, Le/m/a/f/l/a/y3;->d:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 313
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 314
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/f/l/a/y3;

    iget-object v10, v10, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->E(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzk(Lcom/google/android/gms/internal/measurement/zzgg;)Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    :cond_37
    :try_start_12
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 316
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 317
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 318
    invoke-virtual {v3}, Le/m/a/f/l/a/v0;->d()V

    .line 319
    invoke-virtual {v3}, Le/m/a/f/l/a/q3;->e()V

    .line 320
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v9

    iget-object v10, v3, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 323
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 324
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->s([B)J

    move-result-wide v10

    new-instance v12, Landroid/content/ContentValues;

    .line 325
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 326
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v30

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v15, v33

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    .line 328
    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 329
    :try_start_13
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v13, "raw_events_metadata"

    const/4 v7, 0x4

    .line 330
    invoke-virtual {v9, v13, v4, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 331
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzap;->f:Lcom/google/android/gms/measurement/internal/zzas;

    .line 332
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->a:Landroid/os/Bundle;

    .line 333
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 334
    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 335
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 336
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_19

    .line 337
    :cond_39
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 338
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzap;->b:Ljava/lang/String;

    .line 339
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfi;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 340
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->t()J

    move-result-wide v17

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v21}, Le/m/a/f/l/a/d;->A(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    if-eqz v3, :cond_3a

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzai;->e:J

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdu;->o:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gez v3, :cond_3a

    :goto_19
    const/4 v13, 0x1

    goto :goto_1a

    :cond_3a
    move/from16 v13, v31

    .line 343
    :goto_1a
    invoke-virtual {v2}, Le/m/a/f/l/a/v0;->d()V

    .line 344
    invoke-virtual {v2}, Le/m/a/f/l/a/q3;->e()V

    .line 345
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    .line 346
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 347
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 348
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->w(Lcom/google/android/gms/measurement/internal/zzap;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    .line 349
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    .line 350
    invoke-virtual {v6, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzap;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzap;->d:J

    .line 352
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 354
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 355
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 356
    :try_start_15
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v7, v32

    .line 357
    invoke-virtual {v3, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_3b

    iget-object v3, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 358
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 360
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_1b

    :cond_3b
    const-wide/16 v2, 0x0

    .line 361
    :try_start_16
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    goto :goto_1b

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 362
    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzap;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 365
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 366
    :try_start_17
    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 367
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v3

    const-string v5, "Error storing raw event metadata. appId"

    .line 369
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 370
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    throw v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 372
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 373
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeh;->l()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 375
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    :goto_1b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 377
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 378
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->i()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 379
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 380
    invoke-virtual {v2}, Le/m/a/f/l/a/d;->L()V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeh;->m()Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    .line 384
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 385
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 386
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 387
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 388
    invoke-virtual {v3}, Le/m/a/f/l/a/d;->L()V

    .line 389
    throw v2

    .line 390
    :cond_3c
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    return-void
.end method

.method public final t()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-virtual {v2}, Le/m/a/f/l/a/q3;->e()V

    invoke-virtual {v2}, Le/m/a/f/l/a/v0;->d()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjm;->l:Lcom/google/android/gms/measurement/internal/zzes;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    iget-object v3, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkw;->o()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjm;->l:Lcom/google/android/gms/measurement/internal/zzes;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final v(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 2
    invoke-virtual {v1, v2}, Le/m/a/f/l/a/d;->y(Ljava/lang/String;)Le/m/a/f/l/a/l0;

    move-result-object v14

    const/4 v1, 0x0

    if-eqz v14, :cond_2

    .line 3
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzkp;->w(Le/m/a/f/l/a/l0;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 9
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    new-instance v29, Lcom/google/android/gms/measurement/internal/zzp;

    move-object/from16 v1, v29

    .line 11
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->Q()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v5

    .line 14
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->N()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->F()J

    move-result-wide v8

    .line 16
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->C()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 17
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->z()Z

    move-result v13

    .line 18
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->P()Ljava/lang/String;

    move-result-object v15

    .line 19
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->s()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 20
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->y()Z

    move-result v21

    const/16 v22, 0x0

    .line 21
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->J()Ljava/lang/String;

    move-result-object v23

    .line 22
    iget-object v12, v14, Le/m/a/f/l/a/l0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v12

    .line 23
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v12, v14, Le/m/a/f/l/a/l0;->s:Ljava/lang/Boolean;

    move-object/from16 v24, v12

    .line 24
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->D()J

    move-result-wide v25

    .line 25
    invoke-virtual {v14}, Le/m/a/f/l/a/l0;->a()Ljava/util/List;

    move-result-object v27

    .line 26
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzah;->d()Ljava/lang/String;

    move-result-object v28

    const/4 v14, 0x0

    move-object/from16 v2, p1

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    return-object v29

    .line 27
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 28
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "No app data available; dropping"

    .line 29
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final w(Le/m/a/f/l/a/l0;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :try_start_0
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->c(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->A()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->c(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Le/m/a/f/l/a/l0;->O()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object v0

    .line 10
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Stopping uploading service(s)"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->p:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->p:Ljava/util/List;

    const-string v1, "null reference"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->s:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->t:Z

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->u:Z

    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 15
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Le/m/a/f/l/a/d;->D(Ljava/lang/String;Ljava/lang/String;)Le/m/a/f/l/a/y3;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v9, Le/m/a/f/l/a/y3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v6

    iget-object v2, v2, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v9, Le/m/a/f/l/a/y3;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v6

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Le/m/a/f/l/a/y3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 11
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v3, v9, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->r(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzah(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzl(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 21
    invoke-virtual {p1, v9}, Le/m/a/f/l/a/d;->o(Le/m/a/f/l/a/y3;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    :cond_4
    const-string p1, "session-scoped"

    .line 22
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 24
    iget-object p3, v9, Le/m/a/f/l/a/y3;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 25
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final z()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 6
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->J()Le/m/a/f/l/a/t;

    move-result-object v1

    invoke-virtual {v1}, Le/m/a/f/l/a/t;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->e()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->B()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_b

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->A:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v9, "select count(1) > 0 from raw_events where realtime = 1"

    .line 17
    invoke-virtual {v5, v9, v6}, Le/m/a/f/l/a/d;->r(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v5, v9, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_6

    .line 18
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 19
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v11, "select count(1) > 0 from queue where has_realtime = 1"

    .line 20
    invoke-virtual {v5, v11, v6}, Le/m/a/f/l/a/d;->r(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v5, v11, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_8

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    const-string v12, "debug.firebase.analytics.app"

    const-string v13, ""

    .line 22
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzaf;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, ".none."

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdu;->v:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 25
    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdu;->u:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 27
    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdu;->t:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 29
    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 30
    :goto_4
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 31
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v13

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 32
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v15

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 33
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v10, "select max(bundle_end_timestamp) from queue"

    .line 34
    invoke-virtual {v9, v10, v6, v3, v4}, Le/m/a/f/l/a/d;->t(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    const-string v4, "select max(timestamp) from raw_events"

    move-wide/from16 v17, v11

    const-wide/16 v11, 0x0

    .line 37
    invoke-virtual {v3, v4, v6, v11, v12}, Le/m/a/f/l/a/d;->t(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v3

    .line 38
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v9, v3, v11

    if-nez v9, :cond_9

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_7

    :cond_9
    sub-long/2addr v3, v1

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    sub-long/2addr v13, v1

    .line 40
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long/2addr v15, v1

    .line 41
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long v11, v1, v11

    sub-long/2addr v1, v9

    .line 42
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long/2addr v7, v3

    if-eqz v5, :cond_a

    const-wide/16 v9, 0x0

    cmp-long v5, v1, v9

    if-lez v5, :cond_a

    .line 43
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long v7, v7, v17

    :cond_a
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 44
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    move-wide/from16 v9, v17

    .line 45
    invoke-virtual {v5, v1, v2, v9, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->G(JJ)Z

    move-result v5

    if-nez v5, :cond_b

    add-long v7, v1, v9

    :cond_b
    const-wide/16 v1, 0x0

    cmp-long v5, v11, v1

    if-eqz v5, :cond_d

    cmp-long v1, v11, v3

    if-ltz v1, :cond_d

    const/4 v1, 0x0

    .line 46
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->C:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 47
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->B:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 49
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v1

    mul-long/2addr v2, v9

    add-long/2addr v7, v2

    cmp-long v2, v7, v11

    if-gtz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :cond_e
    :goto_6
    const-wide/16 v1, 0x0

    :goto_7
    cmp-long v3, v7, v1

    if-eqz v3, :cond_19

    .line 50
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 53
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjm;->i:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v1

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->r:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 55
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 56
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 57
    invoke-virtual {v3, v1, v2, v9, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->G(JJ)Z

    move-result v3

    if-nez v3, :cond_f

    add-long/2addr v1, v9

    .line 58
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 59
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->J()Le/m/a/f/l/a/t;

    move-result-object v1

    invoke-virtual {v1}, Le/m/a/f/l/a/t;->a()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-gtz v3, :cond_10

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->w:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 62
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    .line 64
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 65
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 66
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 68
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->e()V

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 69
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 70
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkw;->S(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 73
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Receiver not registered/enabled"

    .line 74
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 75
    :cond_11
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkw;->T(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 77
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Service not registered/enabled"

    .line 78
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 79
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 81
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 82
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "Scheduling upload, millis"

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 83
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 84
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    add-long v11, v2, v7

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 85
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 86
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->x:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v7, v2

    if-gez v2, :cond_14

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->k()Le/m/a/f/l/a/f;

    move-result-object v2

    .line 88
    iget-wide v2, v2, Le/m/a/f/l/a/f;->c:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_13

    const/4 v9, 0x1

    goto :goto_8

    :cond_13
    move v9, v4

    :goto_8
    if-nez v9, :cond_14

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->k()Le/m/a/f/l/a/f;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Le/m/a/f/l/a/f;->c(J)V

    :cond_14
    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 90
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 91
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_15

    .line 92
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 93
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 94
    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->i()I

    move-result v1

    .line 96
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "action"

    const-string v6, "com.google.android.gms.measurement.UPLOAD"

    .line 97
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v5, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 99
    invoke-virtual {v5, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    add-long/2addr v7, v7

    .line 100
    invoke-virtual {v1, v7, v8}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    const-string v4, "UploadAlarm"

    .line 103
    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbt;->zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_15
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->d:Landroid/app/AlarmManager;

    if-eqz v9, :cond_16

    const/4 v10, 0x2

    .line 104
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->s:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 105
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 106
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->j()Landroid/app/PendingIntent;

    move-result-object v15

    .line 108
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_16
    :goto_9
    return-void

    .line 109
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 110
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "No network"

    .line 111
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->J()Le/m/a/f/l/a/t;

    move-result-object v1

    .line 113
    iget-object v2, v1, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-object v2, v1, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v2, v1, Le/m/a/f/l/a/t;->b:Z

    if-eqz v2, :cond_18

    goto :goto_a

    :cond_18
    iget-object v2, v1, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 116
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 117
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 119
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, v1, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 121
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result v2

    iput-boolean v2, v1, Le/m/a/f/l/a/t;->c:Z

    iget-object v2, v1, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 124
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 125
    iget-boolean v3, v1, Le/m/a/f/l/a/t;->c:Z

    .line 126
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Le/m/a/f/l/a/t;->b:Z

    .line 127
    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 128
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    return-void

    .line 130
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 131
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Next upload time is 0"

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->J()Le/m/a/f/l/a/t;

    move-result-object v1

    invoke-virtual {v1}, Le/m/a/f/l/a/t;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 134
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    return-void

    .line 136
    :cond_1a
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 137
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Nothing to upload or uploading impossible"

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->J()Le/m/a/f/l/a/t;

    move-result-object v1

    invoke-virtual {v1}, Le/m/a/f/l/a/t;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 140
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    return-void
.end method

.method public final zzau()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final zzav()Lcom/google/android/gms/common/util/Clock;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzaw()Lcom/google/android/gms/measurement/internal/zzaa;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzay()Lcom/google/android/gms/measurement/internal/zzeh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    return-object v0
.end method
