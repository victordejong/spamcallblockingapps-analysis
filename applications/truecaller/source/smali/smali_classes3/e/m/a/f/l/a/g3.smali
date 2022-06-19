.class public final Le/m/a/f/l/a/g3;
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

    iput-object p1, p0, Le/m/a/f/l/a/g3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iput-wide p2, p0, Le/m/a/f/l/a/g3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/g3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-wide v5, p0, Le/m/a/f/l/a/g3;->a:J

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzka;->h()V

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Activity paused, time"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzka;->f:Le/m/a/f/l/a/i3;

    .line 7
    new-instance v8, Le/m/a/f/l/a/h3;

    iget-object v1, v7, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v3

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Le/m/a/f/l/a/h3;-><init>(Le/m/a/f/l/a/i3;JJ)V

    iput-object v8, v7, Le/m/a/f/l/a/i3;->a:Le/m/a/f/l/a/h3;

    iget-object v1, v7, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    .line 11
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    .line 15
    iget-object v0, v0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    invoke-virtual {v0}, Le/m/a/f/l/a/f;->a()V

    :cond_0
    return-void
.end method
