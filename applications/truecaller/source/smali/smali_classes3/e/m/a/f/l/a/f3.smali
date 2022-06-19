.class public final Le/m/a/f/l/a/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/f3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iput-wide p2, p0, Le/m/a/f/l/a/f3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/f3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-wide v1, p0, Le/m/a/f/l/a/f3;->a:J

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzka;->h()V

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Activity resumed, time"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v3

    .line 10
    iget-object v3, v3, Le/m/a/f/l/a/u;->q:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    .line 11
    iget-object v4, v3, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v4}, Le/m/a/f/l/a/m;->d()V

    iget-object v4, v3, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    .line 12
    invoke-virtual {v4}, Le/m/a/f/l/a/f;->a()V

    iput-wide v1, v3, Le/m/a/f/l/a/k3;->a:J

    iput-wide v1, v3, Le/m/a/f/l/a/k3;->b:J

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzka;->f:Le/m/a/f/l/a/i3;

    .line 14
    iget-object v2, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v2}, Le/m/a/f/l/a/m;->d()V

    iget-object v2, v1, Le/m/a/f/l/a/i3;->a:Le/m/a/f/l/a/h3;

    if-eqz v2, :cond_2

    iget-object v3, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    .line 15
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzka;->c:Landroid/os/Handler;

    .line 16
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 18
    iget-object v1, v1, Le/m/a/f/l/a/u;->q:Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->d:Le/m/a/f/l/a/l3;

    iget-object v1, v0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    .line 20
    invoke-virtual {v1}, Le/m/a/f/l/a/m;->d()V

    iget-object v1, v0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v3

    .line 24
    invoke-virtual {v0, v3, v4, v2}, Le/m/a/f/l/a/l3;->b(JZ)V

    :goto_0
    return-void
.end method
