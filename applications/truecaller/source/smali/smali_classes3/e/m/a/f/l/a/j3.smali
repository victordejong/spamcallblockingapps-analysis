.class public final Le/m/a/f/l/a/j3;
.super Le/m/a/f/l/a/f;
.source "SourceFile"


# instance fields
.field public final synthetic e:Le/m/a/f/l/a/k3;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/k3;Le/m/a/f/l/a/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/j3;->e:Le/m/a/f/l/a/k3;

    invoke-direct {p0, p2}, Le/m/a/f/l/a/f;-><init>(Le/m/a/f/l/a/x0;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/j3;->e:Le/m/a/f/l/a/k3;

    iget-object v1, v0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v1}, Le/m/a/f/l/a/m;->d()V

    iget-object v1, v0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Le/m/a/f/l/a/k3;->a(ZZJ)Z

    iget-object v1, v0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->j()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    iget-object v0, v0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->g(J)V

    return-void
.end method
