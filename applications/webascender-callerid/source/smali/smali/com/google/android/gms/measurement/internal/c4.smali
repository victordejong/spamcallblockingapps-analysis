.class final Lcom/google/android/gms/measurement/internal/c4;
.super Lcom/google/android/gms/measurement/internal/m5;
.source "SourceFile"


# static fields
.field static final C:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/google/android/gms/measurement/internal/z3;

.field public final B:Lcom/google/android/gms/measurement/internal/y3;

.field private c:Landroid/content/SharedPreferences;

.field public d:Lcom/google/android/gms/measurement/internal/a4;

.field public final e:Lcom/google/android/gms/measurement/internal/z3;

.field public final f:Lcom/google/android/gms/measurement/internal/z3;

.field public final g:Lcom/google/android/gms/measurement/internal/z3;

.field public final h:Lcom/google/android/gms/measurement/internal/z3;

.field public final i:Lcom/google/android/gms/measurement/internal/z3;

.field public final j:Lcom/google/android/gms/measurement/internal/z3;

.field public final k:Lcom/google/android/gms/measurement/internal/z3;

.field public final l:Lcom/google/android/gms/measurement/internal/b4;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:J

.field public final p:Lcom/google/android/gms/measurement/internal/z3;

.field public final q:Lcom/google/android/gms/measurement/internal/x3;

.field public final r:Lcom/google/android/gms/measurement/internal/b4;

.field public final s:Lcom/google/android/gms/measurement/internal/x3;

.field public final t:Lcom/google/android/gms/measurement/internal/z3;

.field public u:Z

.field public final v:Lcom/google/android/gms/measurement/internal/x3;

.field public final w:Lcom/google/android/gms/measurement/internal/x3;

.field public final x:Lcom/google/android/gms/measurement/internal/z3;

.field public final y:Lcom/google/android/gms/measurement/internal/b4;

.field public final z:Lcom/google/android/gms/measurement/internal/b4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/c4;->C:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/r4;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    .line 2
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "last_upload_attempt"

    .line 3
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "backoff"

    .line 4
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "last_delete_stale"

    .line 5
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->h:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    .line 6
    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->p:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/x3;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    .line 7
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->q:Lcom/google/android/gms/measurement/internal/x3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "last_pause_time"

    .line 8
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->t:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/b4;

    const-string v0, "non_personalized_ads"

    const/4 v3, 0x0

    .line 9
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->r:Lcom/google/android/gms/measurement/internal/b4;

    new-instance p1, Lcom/google/android/gms/measurement/internal/x3;

    const-string v0, "allow_remote_dynamite"

    const/4 v4, 0x0

    .line 10
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->s:Lcom/google/android/gms/measurement/internal/x3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "midnight_offset"

    .line 11
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "first_open_time"

    .line 12
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->j:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "app_install_time"

    .line 13
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->k:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/b4;

    const-string v0, "app_instance_id"

    .line 14
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->l:Lcom/google/android/gms/measurement/internal/b4;

    new-instance p1, Lcom/google/android/gms/measurement/internal/x3;

    const-string v0, "app_backgrounded"

    .line 15
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->v:Lcom/google/android/gms/measurement/internal/x3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/x3;

    const-string v0, "deep_link_retrieval_complete"

    .line 16
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->w:Lcom/google/android/gms/measurement/internal/x3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "deep_link_retrieval_attempts"

    .line 17
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->x:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/b4;

    const-string v0, "firebase_feature_rollouts"

    .line 18
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->y:Lcom/google/android/gms/measurement/internal/b4;

    new-instance p1, Lcom/google/android/gms/measurement/internal/b4;

    const-string v0, "deferred_attribution_cache"

    .line 19
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->z:Lcom/google/android/gms/measurement/internal/b4;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    const-string v0, "deferred_attribution_cache_timestamp"

    .line 20
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->A:Lcom/google/android/gms/measurement/internal/z3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/y3;

    const-string v0, "default_event_parameters"

    .line 21
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->B:Lcom/google/android/gms/measurement/internal/y3;

    return-void
.end method


# virtual methods
.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 9
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

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/a4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    const-wide/16 v1, 0x0

    .line 8
    sget-object v3, Lcom/google/android/gms/measurement/internal/a3;->c:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/w3;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Lcom/google/android/gms/measurement/internal/a4;

    return-void
.end method

.method final o(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->a()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/c4;->o:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->n:Z

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/google/android/gms/measurement/internal/a3;->b:Lcom/google/android/gms/measurement/internal/z2;

    .line 9
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/f;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->o:J

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lg/f/a/d/a/a/a;->d(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->b()Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lg/f/a/d/a/a/a;->b(Landroid/content/Context;)Lg/f/a/d/a/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lg/f/a/d/a/a/a$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lg/f/a/d/a/a/a$a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/c4;->n:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Lg/f/a/d/a/a/a;->d(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->m:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/c4;->n:Z

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected final p()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m5;->l()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Landroid/content/SharedPreferences;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method final q(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

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

.method final r()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

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

.method final s(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/g;->m(II)Z

    move-result p1

    return p1
.end method

.method final t()Lcom/google/android/gms/measurement/internal/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    return-object v0
.end method

.method final u(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

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

.method final v()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "deferred_analytics_collection"

    .line 1
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final w(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->p:Lcom/google/android/gms/measurement/internal/z3;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z3;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->t:Lcom/google/android/gms/measurement/internal/z3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z3;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
