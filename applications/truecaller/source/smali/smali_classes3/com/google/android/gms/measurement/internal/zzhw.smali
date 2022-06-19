.class public final Lcom/google/android/gms/measurement/internal/zzhw;
.super Le/m/a/f/l/a/w;
.source "SourceFile"


# instance fields
.field public c:Le/m/a/f/l/a/v1;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public d:Lcom/google/android/gms/measurement/internal/zzgr;

.field public final e:Ljava/util/Set;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/lang/Object;

.field public i:Lcom/google/android/gms/measurement/internal/zzah;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lcom/google/android/gms/measurement/internal/zzr;

.field public o:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final p:Le/m/a/f/l/a/z3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/w;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->o:Z

    new-instance v0, Le/m/a/f/l/a/l1;

    invoke-direct {v0, p0}, Le/m/a/f/l/a/l1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->p:Le/m/a/f/l/a/z3;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzah;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->i:Lcom/google/android/gms/measurement/internal/zzah;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->l:J

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->m:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->n:Lcom/google/android/gms/measurement/internal/zzr;

    return-void
.end method

.method public static C(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;IJZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->l:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->m:I

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzah;->f(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v0, p2}, Le/m/a/f/l/a/u;->q(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzah;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhw;->l:J

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzhw;->m:I

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Le/m/a/f/l/a/m;->d()V

    .line 17
    invoke-virtual {p1}, Le/m/a/f/l/a/w;->e()V

    if-eqz p5, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjk;->q()Z

    iget-object p2, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->n()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzea;->i()V

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjk;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p2

    new-instance p3, Le/m/a/f/l/a/r2;

    invoke-direct {p3, p1, p2}, Le/m/a/f/l/a/r2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 23
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p6, :cond_4

    .line 24
    iget-object p0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjk;->u(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/m/a/f/l/a/u;->m:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzev;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "unset"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v7

    const-string v4, "app"

    const-string v5, "_npa"

    move-object v3, p0

    .line 7
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v2, "true"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v8

    const-string v5, "app"

    const-string v6, "_npa"

    move-object v4, p0

    .line 11
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhw;->D()V

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v1, 0x0

    .line 20
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->e0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->d:Le/m/a/f/l/a/l3;

    invoke-virtual {v0}, Le/m/a/f/l/a/l3;->a()V

    :cond_3
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    new-instance v1, Le/m/a/f/l/a/a1;

    invoke-direct {v1, p0}, Le/m/a/f/l/a/a1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Updating Scion state (FE)"

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 30
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    new-instance v2, Le/m/a/f/l/a/q2;

    invoke-direct {v2, v0, v1}, Le/m/a/f/l/a/q2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final D()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdu;->Y:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Deferred Deep Link feature enabled."

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 18
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->n()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [B

    const/4 v6, 0x3

    .line 21
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/zzea;->k(I[B)Z

    .line 22
    new-instance v3, Le/m/a/f/l/a/k2;

    invoke-direct {v3, v0, v1}, Le/m/a/f/l/a/k2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    .line 24
    iput-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzhw;->o:Z

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    .line 27
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Le/m/a/f/l/a/w0;->g()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 31
    invoke-virtual {v0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->l()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Le/m/a/f/l/a/w0;->g()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhw;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 6
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 7
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 8
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 9
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    new-instance p2, Le/m/a/f/l/a/h1;

    invoke-direct {p2, p0, v2}, Le/m/a/f/l/a/h1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 20

    move-object/from16 v11, p0

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    if-nez p3, :cond_1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    :goto_1
    const-string v1, "screen_view"

    move-object/from16 v3, p2

    .line 2
    invoke-static {v3, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_d

    iget-object v1, v11, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v1

    .line 4
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzik;->l:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->k:Z

    if-nez v2, :cond_2

    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 7
    monitor-exit v5

    goto/16 :goto_7

    :cond_2
    const-string v2, "screen_name"

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x64

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    if-le v3, v2, :cond_4

    .line 10
    :cond_3
    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Invalid screen name length for screen view. Length"

    .line 13
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    monitor-exit v5

    goto/16 :goto_7

    :cond_4
    const-string v3, "screen_class"

    .line 16
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    if-le v6, v2, :cond_6

    .line 18
    :cond_5
    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Invalid screen class length for screen view. Length"

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    monitor-exit v5

    goto/16 :goto_7

    :cond_6
    if-nez v3, :cond_8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->g:Landroid/app/Activity;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Activity"

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzik;->l(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v2, "Activity"

    :goto_2
    move-object v14, v2

    goto :goto_3

    :cond_8
    move-object v14, v3

    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzik;->h:Z

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzik;->h:Z

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzid;->b:Ljava/lang/String;

    .line 25
    invoke-static {v3, v14}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzid;->a:Ljava/lang/String;

    .line 26
    invoke-static {v2, v13}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 30
    monitor-exit v5

    goto :goto_7

    .line 31
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 33
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    if-nez v13, :cond_a

    const-string v3, "null"

    goto :goto_4

    :cond_a
    move-object v3, v13

    :goto_4
    if-nez v14, :cond_b

    const-string v4, "null"

    goto :goto_5

    :cond_b
    move-object v4, v14

    :goto_5
    const-string v5, "Logging screen view with name, class"

    .line 34
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->d:Lcom/google/android/gms/measurement/internal/zzid;

    goto :goto_6

    .line 35
    :cond_c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    .line 36
    :goto_6
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v4, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkw;->j0()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object v12, v3

    move-wide/from16 v18, p6

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzik;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzik;->d:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzik;->i:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v4, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 39
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 40
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    iget-object v6, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v6

    new-instance v7, Le/m/a/f/l/a/z1;

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-wide/from16 p6, v4

    invoke-direct/range {p1 .. p7}, Le/m/a/f/l/a/z1;-><init>(Lcom/google/android/gms/measurement/internal/zzik;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;J)V

    .line 42
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :catchall_0
    move-exception v0

    .line 43
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    const/4 v1, 0x1

    if-eqz p5, :cond_f

    .line 44
    iget-object v5, v11, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    if-eqz v5, :cond_f

    .line 45
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkw;->Q(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    move v8, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v8, v1

    :goto_9
    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move-object v6, v0

    move/from16 v7, p5

    move/from16 v9, p4

    .line 46
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzhw;->o(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkw;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzhw;->m(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "null reference"

    .line 2
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/m/a/f/l/a/m;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdy;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 12
    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lcom/google/android/gms/measurement/internal/zzhw;->f:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    iput-boolean v15, v7, Lcom/google/android/gms/measurement/internal/zzhw;->f:Z

    :try_start_0
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfr;->e:Z

    if-nez v2, :cond_2

    .line 15
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v15, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    .line 18
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    const-string v2, "initialize"

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    aput-object v2, v1, v5

    .line 21
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 26
    :catch_1
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    .line 30
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 31
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 33
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 35
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v16

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    move v14, v5

    move-wide/from16 v5, v16

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_4
    move v14, v5

    :goto_3
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 37
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz p6, :cond_5

    .line 38
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkw;->h:[Ljava/lang/String;

    aget-object v0, v0, v14

    .line 39
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v15

    if-eqz v0, :cond_5

    .line 40
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 43
    iget-object v1, v1, Le/m/a/f/l/a/u;->w:Lcom/google/android/gms/measurement/internal/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-nez p8, :cond_a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 44
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v1, "_iap"

    .line 45
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_6

    goto :goto_4

    .line 47
    :cond_6
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgo;->a:[Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgo;->b:[Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->H(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v5, 0xd

    goto :goto_4

    :cond_7
    iget-object v3, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 50
    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->G(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v5, v14

    :goto_4
    if-eqz v5, :cond_a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->h:Lcom/google/android/gms/measurement/internal/zzef;

    .line 53
    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 54
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 55
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 58
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 59
    invoke-virtual {v1, v9, v0, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move v14, v1

    :cond_9
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzhw;->p:Le/m/a/f/l/a/z3;

    const/4 v3, 0x0

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v5

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 61
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 62
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zzc()Z

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 64
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->r0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v1

    const-string v2, "_sc"

    if-eqz v1, :cond_d

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 65
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 68
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzid;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    move v5, v15

    goto :goto_5

    :cond_c
    move v5, v14

    .line 69
    :goto_5
    invoke-static {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->s(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    goto :goto_7

    .line 70
    :cond_d
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 71
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 74
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzid;->d:Z

    :cond_e
    if-eqz p6, :cond_f

    if-nez p8, :cond_f

    move v5, v15

    goto :goto_6

    :cond_f
    move v5, v14

    .line 75
    :goto_6
    invoke-static {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->s(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    :goto_7
    const-string v1, "am"

    .line 76
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkw;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz p6, :cond_11

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    if-eqz v4, :cond_11

    if-nez v3, :cond_11

    if-eqz v1, :cond_10

    move/from16 v16, v15

    goto :goto_8

    .line 78
    :cond_10
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 80
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 81
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 82
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 83
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 84
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 85
    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzec;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 86
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 87
    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    .line 89
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzgr;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_11
    move/from16 v16, v1

    .line 90
    :goto_8
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->e()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->d0(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 95
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->h:Lcom/google/android/gms/measurement/internal/zzef;

    .line 96
    iget-object v3, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 97
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 98
    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 99
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 101
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 102
    invoke-virtual {v2, v9, v0, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move v14, v5

    :cond_12
    iget-object v2, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzhw;->p:Le/m/a/f/l/a/z3;

    const-string v4, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 104
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_13
    const-string v0, "_o"

    const-string v1, "_sn"

    const-string v3, "_si"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 106
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v6, p8

    .line 108
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;->n0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    .line 109
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 111
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v13, "_ae"

    if-eqz v1, :cond_14

    .line 114
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    iget-object v2, v1, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 116
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 117
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    iget-wide v14, v1, Le/m/a/f/l/a/k3;->b:J

    sub-long v14, v2, v14

    iput-wide v2, v1, Le/m/a/f/l/a/k3;->b:J

    cmp-long v1, v14, v5

    if-lez v1, :cond_14

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->q(Landroid/os/Bundle;J)V

    .line 120
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzc()Z

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 121
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 122
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->d0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v14, 0x0

    .line 123
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "auto"

    .line 124
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_18

    const-string v1, "_ssr"

    .line 125
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 127
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Lcom/google/android/gms/common/util/Strings;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v3, v14

    goto :goto_9

    :cond_15
    if-eqz v3, :cond_16

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_16
    :goto_9
    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v2

    .line 132
    iget-object v2, v2, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzev;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 134
    iget-object v1, v1, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    goto :goto_a

    .line 135
    :cond_17
    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 137
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_18
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 142
    iget-object v1, v1, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzev;->a()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 144
    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_19
    :goto_a
    new-instance v15, Ljava/util/ArrayList;

    .line 146
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 149
    iget-object v1, v1, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v10, v11}, Le/m/a/f/l/a/u;->p(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 153
    iget-object v1, v1, Le/m/a/f/l/a/u;->q:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 155
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 157
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 158
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v18

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object/from16 v1, p0

    move-object/from16 p5, v15

    move-wide v14, v5

    move-wide/from16 v5, v18

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 160
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 161
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 162
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 163
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 164
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_b

    :cond_1a
    move-object/from16 p5, v15

    move-wide v14, v5

    :goto_b
    const-string v1, "extend_session"

    .line 166
    invoke-virtual {v12, v1, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->d:Le/m/a/f/l/a/l3;

    const/4 v2, 0x1

    .line 171
    invoke-virtual {v1, v10, v11, v2}, Le/m/a/f/l/a/l3;->b(JZ)V

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_20

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v4, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 175
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 176
    invoke-virtual {v12, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    new-array v14, v6, [Landroid/os/Bundle;

    .line 178
    check-cast v4, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v4, v14, v6

    move-object v4, v14

    goto :goto_d

    .line 179
    :cond_1c
    instance-of v6, v4, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1d

    .line 180
    check-cast v4, [Landroid/os/Parcelable;

    array-length v6, v4

    const-class v14, [Landroid/os/Bundle;

    .line 181
    invoke-static {v4, v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    goto :goto_d

    .line 182
    :cond_1d
    instance-of v6, v4, Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    .line 183
    check-cast v4, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    goto :goto_d

    :cond_1e
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_1f

    .line 185
    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_20
    const/4 v12, 0x0

    .line 186
    :goto_e
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_25

    move-object/from16 v14, p5

    .line 187
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v12, :cond_21

    const-string v2, "_ep"

    goto :goto_f

    :cond_21
    move-object v2, v9

    .line 188
    :goto_f
    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_22

    iget-object v3, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 189
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 190
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->m0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_22
    move-object v15, v1

    .line 191
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v3, v15}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object/from16 p6, v0

    move-object v0, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;J)V

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 192
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v1

    .line 193
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v1}, Le/m/a/f/l/a/m;->d()V

    .line 195
    invoke-virtual {v1}, Le/m/a/f/l/a/w;->e()V

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->q()Z

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->n()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object v2

    .line 198
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    .line 200
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzav;->a(Lcom/google/android/gms/measurement/internal/zzau;Landroid/os/Parcel;I)V

    .line 201
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 202
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 203
    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_23

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 204
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 205
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->g:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Event is too long for local database. Sending event directly to service"

    .line 206
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v21, 0x0

    goto :goto_10

    :cond_23
    const/4 v3, 0x0

    .line 207
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzea;->k(I[B)Z

    move-result v5

    move/from16 v21, v5

    const/4 v2, 0x1

    .line 208
    :goto_10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v20

    new-instance v2, Le/m/a/f/l/a/s2;

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v22, v0

    move-object/from16 v23, p9

    invoke-direct/range {v18 .. v23}, Le/m/a/f/l/a/s2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    if-nez v16, :cond_24

    .line 210
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzhw;->e:Ljava/util/Set;

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzgs;

    new-instance v4, Landroid/os/Bundle;

    .line 212
    invoke-direct {v4, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 213
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_11

    :cond_24
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p6

    move-object/from16 p5, v14

    goto/16 :goto_e

    :cond_25
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 214
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 217
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v0

    iget-object v1, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 219
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 220
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    const/4 v3, 0x1

    .line 221
    invoke-virtual {v0, v3, v3, v1, v2}, Le/m/a/f/l/a/k3;->a(ZZJ)Z

    :cond_26
    return-void

    .line 222
    :cond_27
    iget-object v0, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 224
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Event not sent since app measurement is disabled"

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final n(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Resetting analytics data (FE)"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    .line 8
    iget-object v1, v0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    invoke-virtual {v1}, Le/m/a/f/l/a/f;->a()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Le/m/a/f/l/a/k3;->a:J

    iput-wide v1, v0, Le/m/a/f/l/a/k3;->b:J

    .line 9
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v0

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v3

    iget-object v4, v3, Le/m/a/f/l/a/u;->e:Lcom/google/android/gms/measurement/internal/zzes;

    .line 12
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object p1, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object p1

    .line 14
    iget-object p1, p1, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzev;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v3, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zzc()Z

    iget-object p1, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 18
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->e0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {p1, p2, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v3, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    :cond_1
    iget-object p1, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->t()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 22
    invoke-virtual {v3, p1}, Le/m/a/f/l/a/u;->o(Z)V

    :cond_2
    iget-object p1, v3, Le/m/a/f/l/a/u;->u:Lcom/google/android/gms/measurement/internal/zzev;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    iget-object p1, v3, Le/m/a/f/l/a/u;->v:Lcom/google/android/gms/measurement/internal/zzes;

    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object p1, v3, Le/m/a/f/l/a/u;->w:Lcom/google/android/gms/measurement/internal/zzer;

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzer;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Le/m/a/f/l/a/m;->d()V

    .line 28
    invoke-virtual {p1}, Le/m/a/f/l/a/w;->e()V

    const/4 p3, 0x0

    .line 29
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p3

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjk;->q()Z

    iget-object v1, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->n()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzea;->i()V

    new-instance v1, Le/m/a/f/l/a/h2;

    invoke-direct {v1, p1, p3}, Le/m/a/f/l/a/h2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    .line 34
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zzc()Z

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 36
    invoke-virtual {p1, p2, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->v()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object p1

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzka;->d:Le/m/a/f/l/a/l3;

    invoke-virtual {p1}, Le/m/a/f/l/a/l3;->a()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->o:Z

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    .line 7
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 9
    check-cast v2, [Landroid/os/Parcelable;

    .line 10
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 11
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .line 12
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    .line 18
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v11, p0

    iget-object v0, v11, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v12

    new-instance v13, Le/m/a/f/l/a/d1;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Le/m/a/f/l/a/d1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    new-instance v8, Le/m/a/f/l/a/e1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Le/m/a/f/l/a/e1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    const-string v2, "null reference"

    .line 2
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 5
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v5, "Package name should be null when calling setConditionalUserProperty"

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 10
    invoke-static {v3, p1, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 11
    invoke-static {v3, p1, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 12
    invoke-static {v3, v5, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    const-string v7, "value"

    .line 13
    invoke-static {v3, v7, v6, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trigger_event_name"

    .line 14
    invoke-static {v3, v6, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "trigger_timeout"

    .line 16
    invoke-static {v3, v9, v0, v8}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    .line 17
    invoke-static {v3, v10, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "timed_out_event_params"

    .line 18
    invoke-static {v3, v11, v10, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    .line 19
    invoke-static {v3, v10, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "triggered_event_params"

    .line 20
    invoke-static {v3, v11, v10, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    .line 21
    invoke-static {v3, v10, v0, v8}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expired_event_name"

    .line 22
    invoke-static {v3, v0, v1, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/os/Bundle;

    const-string v1, "expired_event_params"

    .line 23
    invoke-static {v3, v1, v0, v4}, Ln3/g0/y;->o2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 28
    invoke-virtual {v3, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzkw;->g0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p3

    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkw;->c0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p3

    .line 36
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkw;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p3

    .line 38
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 39
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 40
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    .line 42
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    invoke-static {v3, p3}, Ln3/g0/y;->E2(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 45
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v0, :cond_3

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 47
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    cmp-long v6, p2, v4

    if-gtz v6, :cond_2

    cmp-long v6, p2, v1

    if-gez v6, :cond_3

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 50
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 52
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    .line 54
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_3
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 56
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    cmp-long v4, p2, v4

    if-gtz v4, :cond_5

    cmp-long v1, p2, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    new-instance p2, Le/m/a/f/l/a/g1;

    invoke-direct {p2, p0, v3}, Le/m/a/f/l/a/g1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void

    .line 59
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 60
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 61
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 62
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 63
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    .line 65
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_6
    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 67
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p3

    .line 68
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 69
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 70
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    .line 72
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 73
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 74
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 75
    iget-object p3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 76
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 77
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzec;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 78
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Landroid/os/Bundle;IJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->b:Lcom/google/android/gms/measurement/internal/zzah;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->values()[Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzag;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzag;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzah;->i(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Ignoring invalid consent setting"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhw;->s(Lcom/google/android/gms/measurement/internal/zzah;IJ)V

    return-void
.end method

.method public final s(Lcom/google/android/gms/measurement/internal/zzah;IJ)V
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p1

    move/from16 v6, p2

    .line 1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    const/16 v2, -0xa

    if-eq v6, v2, :cond_1

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->a:Ljava/util/EnumMap;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 3
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->a:Ljava/util/EnumMap;

    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Discarding empty consent settings"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzhw;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v10, Lcom/google/android/gms/measurement/internal/zzhw;->j:I

    .line 9
    invoke-static {v6, v4}, Lcom/google/android/gms/measurement/internal/zzah;->f(II)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzhw;->i:Lcom/google/android/gms/measurement/internal/zzah;

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzah;->g(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v4

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzhw;->i:Lcom/google/android/gms/measurement/internal/zzah;

    .line 12
    invoke-virtual {v8, v1}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzhw;->i:Lcom/google/android/gms/measurement/internal/zzah;

    .line 13
    new-instance v9, Ljava/util/EnumMap;

    const-class v11, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v9, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->values()[Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    :goto_2
    const/4 v12, 0x2

    if-ge v7, v12, :cond_4

    aget-object v12, v11, v7

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzah;->a:Ljava/util/EnumMap;

    .line 15
    invoke-virtual {v13, v12}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    if-nez v13, :cond_3

    .line 16
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzah;->a:Ljava/util/EnumMap;

    invoke-virtual {v13, v12}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 17
    :cond_3
    :goto_3
    invoke-virtual {v9, v12, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzah;

    .line 18
    invoke-direct {v0, v9}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Ljava/util/EnumMap;)V

    .line 19
    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhw;->i:Lcom/google/android/gms/measurement/internal/zzah;

    iput v6, v10, Lcom/google/android/gms/measurement/internal/zzhw;->j:I

    move v9, v1

    move v7, v4

    goto :goto_4

    :cond_5
    move v5, v7

    move v9, v5

    .line 20
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_6

    iget-object v1, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Ignoring lower-priority consent settings, proposed settings"

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzhw;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v11

    if-eqz v7, :cond_7

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzhw;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v13

    new-instance v14, Le/m/a/f/l/a/r1;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move-wide v7, v11

    invoke-direct/range {v1 .. v9}, Le/m/a/f/l/a/r1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;JIJZ)V

    .line 27
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzfo;->o(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    const/16 v1, 0x1e

    if-eq v6, v1, :cond_9

    if-ne v6, v2, :cond_8

    goto :goto_5

    .line 28
    :cond_8
    iget-object v1, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v13, Le/m/a/f/l/a/t1;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-wide v5, v11

    move v7, v9

    invoke-direct/range {v1 .. v7}, Le/m/a/f/l/a/t1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;IJZ)V

    .line 30
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void

    .line 31
    :cond_9
    :goto_5
    iget-object v1, v10, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v13, Le/m/a/f/l/a/s1;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-wide v5, v11

    move v7, v9

    invoke-direct/range {v1 .. v7}, Le/m/a/f/l/a/s1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;IJZ)V

    .line 33
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzfo;->o(Ljava/lang/Runnable;)V

    return-void

    .line 34
    :goto_6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t(Lcom/google/android/gms/measurement/internal/zzgr;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->d:Lcom/google/android/gms/measurement/internal/zzgr;

    return-void
.end method

.method public final u(Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjk;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->D:Z

    if-eq p1, v0, :cond_5

    .line 7
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzfr;->D:Z

    .line 9
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    .line 12
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->z(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v6

    const-string v2, "auto"

    const-string v3, "_ldl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhw;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    .line 1
    iget-object v3, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->g0(Ljava/lang/String;)I

    move-result v3

    :goto_1
    move v11, v3

    goto :goto_3

    .line 3
    :cond_1
    iget-object v7, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    const-string v8, "user property"

    .line 5
    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_2
    goto :goto_1

    .line 6
    :cond_2
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgq;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 7
    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->H(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v3, 0xf

    goto :goto_1

    :cond_3
    iget-object v9, v7, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 9
    invoke-virtual {v7, v8, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->G(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move v11, v4

    :goto_3
    const/4 v3, 0x1

    if-eqz v11, :cond_6

    .line 10
    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 13
    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    :cond_5
    move v14, v4

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzhw;->p:Le/m/a/f/l/a/z3;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 15
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v7, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 17
    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->c0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v1, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v7, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 20
    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    .line 21
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_7

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 22
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_8
    move v14, v4

    iget-object v0, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzhw;->p:Le/m/a/f/l/a/z3;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 24
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzkw;->v(Le/m/a/f/l/a/z3;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v3, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 26
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhw;->p(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhw;->p(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 4
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "_npa"

    if-eqz v0, :cond_3

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v3, 0x1

    if-eq v1, p2, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 9
    iget-object v0, v0, Le/m/a/f/l/a/u;->m:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    move-object v7, p2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 10
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object p2

    .line 12
    iget-object p2, p2, Le/m/a/f/l/a/u;->m:Lcom/google/android/gms/measurement/internal/zzev;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    move-object v7, p3

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, p2

    move-object v7, p3

    .line 13
    :goto_2
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "User property not set since app measurement is disabled"

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->e()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 19
    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzks;

    move-object v3, p2

    move-wide v5, p4

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Le/m/a/f/l/a/m;->d()V

    .line 22
    invoke-virtual {p1}, Le/m/a/f/l/a/w;->e()V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjk;->q()Z

    iget-object p3, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->n()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object p3

    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p4

    const/4 p5, 0x0

    .line 27
    invoke-static {p2, p4, p5}, Lcom/google/android/gms/measurement/internal/zzkt;->a(Lcom/google/android/gms/measurement/internal/zzks;Landroid/os/Parcel;I)V

    .line 28
    invoke-virtual {p4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 29
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 30
    array-length p4, v0

    const/high16 v2, 0x20000

    if-le p4, v2, :cond_6

    iget-object p3, p3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p3

    .line 32
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzeh;->g:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p4, "User property too long for local database. Sending directly to service"

    .line 33
    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzea;->k(I[B)Z

    move-result p5

    .line 35
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p3

    new-instance p4, Le/m/a/f/l/a/g2;

    invoke-direct {p4, p1, p3, p5, p2}, Le/m/a/f/l/a/g2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzks;)V

    .line 36
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Landroid/os/Bundle;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhw;->r(Landroid/os/Bundle;IJ)V

    return-void

    :cond_0
    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Using developer consent only; google app id found"

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Ljava/lang/Boolean;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Setting app measurement enabled (FE)"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Le/m/a/f/l/a/u;->n(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object p2

    iget-object v0, p2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {p2}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {p2}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean p2, p2, Lcom/google/android/gms/measurement/internal/zzfr;->D:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhw;->A()V

    return-void
.end method
