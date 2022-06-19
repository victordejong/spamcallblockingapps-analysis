.class public final Le/m/a/f/l/a/u;
.super Le/m/a/f/l/a/w0;
.source "SourceFile"


# static fields
.field public static final x:Landroid/util/Pair;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Lcom/google/android/gms/measurement/internal/zzeu;

.field public final e:Lcom/google/android/gms/measurement/internal/zzes;

.field public final f:Lcom/google/android/gms/measurement/internal/zzes;

.field public final g:Lcom/google/android/gms/measurement/internal/zzev;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:J

.field public final k:Lcom/google/android/gms/measurement/internal/zzes;

.field public final l:Lcom/google/android/gms/measurement/internal/zzeq;

.field public final m:Lcom/google/android/gms/measurement/internal/zzev;

.field public final n:Lcom/google/android/gms/measurement/internal/zzeq;

.field public final o:Lcom/google/android/gms/measurement/internal/zzes;

.field public p:Z

.field public final q:Lcom/google/android/gms/measurement/internal/zzeq;

.field public final r:Lcom/google/android/gms/measurement/internal/zzeq;

.field public final s:Lcom/google/android/gms/measurement/internal/zzes;

.field public final t:Lcom/google/android/gms/measurement/internal/zzev;

.field public final u:Lcom/google/android/gms/measurement/internal/zzev;

.field public final v:Lcom/google/android/gms/measurement/internal/zzes;

.field public final w:Lcom/google/android/gms/measurement/internal/zzer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Le/m/a/f/l/a/u;->x:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/w0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    .line 2
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->k:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeq;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    .line 3
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;Z)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    .line 4
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    const-string v0, "non_personalized_ads"

    .line 5
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->m:Lcom/google/android/gms/measurement/internal/zzev;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeq;

    const-string v0, "allow_remote_dynamite"

    const/4 v3, 0x0

    .line 6
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;Z)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->n:Lcom/google/android/gms/measurement/internal/zzeq;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "first_open_time"

    .line 7
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->e:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "app_install_time"

    .line 8
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->f:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    const-string v0, "app_instance_id"

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->g:Lcom/google/android/gms/measurement/internal/zzev;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeq;

    const-string v0, "app_backgrounded"

    .line 10
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;Z)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->q:Lcom/google/android/gms/measurement/internal/zzeq;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeq;

    const-string v0, "deep_link_retrieval_complete"

    .line 11
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;Z)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->r:Lcom/google/android/gms/measurement/internal/zzeq;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "deep_link_retrieval_attempts"

    .line 12
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->s:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    const-string v0, "firebase_feature_rollouts"

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    const-string v0, "deferred_attribution_cache"

    .line 14
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->u:Lcom/google/android/gms/measurement/internal/zzev;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    const-string v0, "deferred_attribution_cache_timestamp"

    .line 15
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->v:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzer;

    .line 16
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Le/m/a/f/l/a/u;)V

    iput-object p1, p0, Le/m/a/f/l/a/u;->w:Lcom/google/android/gms/measurement/internal/zzer;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull$List;
        value = {
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.preferences"
                }
            .end subannotation,
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.monitoringSample"
                }
            .end subannotation
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Le/m/a/f/l/a/u;->c:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Le/m/a/f/l/a/u;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/u;->c:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const-wide/16 v1, 0x0

    .line 9
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdu;->c:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Le/m/a/f/l/a/u;J)V

    iput-object v0, p0, Le/m/a/f/l/a/u;->d:Lcom/google/android/gms/measurement/internal/zzeu;

    return-void
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Landroid/content/SharedPreferences;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w0;->g()V

    iget-object v0, p0, Le/m/a/f/l/a/u;->c:Landroid/content/SharedPreferences;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/m/a/f/l/a/u;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/measurement/internal/zzah;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final p(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/u;->k:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/u;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->f(II)Z

    move-result p1

    return p1
.end method
