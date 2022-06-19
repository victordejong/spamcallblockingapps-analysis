.class public final Le/m/a/f/l/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzd;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/i;->c:Lcom/google/android/gms/measurement/internal/zzd;

    iput-object p2, p0, Le/m/a/f/l/a/i;->a:Ljava/lang/String;

    iput-wide p3, p0, Le/m/a/f/l/a/i;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/i;->c:Lcom/google/android/gms/measurement/internal/zzd;

    iget-object v1, p0, Le/m/a/f/l/a/i;->a:Ljava/lang/String;

    iget-wide v2, p0, Le/m/a/f/l/a/i;->b:J

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 4
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v5, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 8
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->b:Ljava/util/Map;

    .line 9
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "First ad unit exposure time was never set"

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->b:Ljava/util/Map;

    .line 14
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v6, v2, v6

    .line 15
    invoke-virtual {v0, v1, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzd;->i(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzid;)V

    .line 16
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "First ad exposure time was never set"

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sub-long/2addr v2, v6

    .line 21
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzd;->h(JLcom/google/android/gms/measurement/internal/zzid;)V

    iput-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Call to endAdUnitExposure for unknown ad unit id"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
