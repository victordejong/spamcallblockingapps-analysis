.class public final Le/m/a/f/l/b;
.super Le/m/a/f/l/d;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/zzfr;

.field public final b:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/a/f/l/d;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object p1

    iput-object p1, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhw;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->j()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->j()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10

    .line 1
    iget-object v6, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Cannot get user properties from analytics worker thread"

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Cannot get user properties from main thread"

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v9, Le/m/a/f/l/a/k1;

    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le/m/a/f/l/a/k1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    move-object v0, v8

    move-object v1, v7

    move-object v5, v9

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfo;->k(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 20
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 21
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 23
    :cond_2
    new-instance p2, Ln3/g/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ln3/g/a;-><init>(I)V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzks;

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 26
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzks;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Cannot get conditional user properties from main thread"

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    new-instance v8, Le/m/a/f/l/a/j1;

    invoke-direct {v8, v0, v1, p1, p2}, Le/m/a/f/l/a/j1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1388

    const-string v7, "get conditional user properties"

    move-object v4, v1

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfo;->k(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const/4 p2, 0x0

    const-string v0, "Timed out waiting for get conditional user properties"

    .line 20
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->p(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhw;->q(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhw;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 p1, 0x19

    return p1
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->j0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/b;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
