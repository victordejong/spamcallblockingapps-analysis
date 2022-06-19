.class public final Le/m/a/f/l/a/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public b:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final c:Le/m/a/f/l/a/f;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/f/l/a/j3;

    iget-object v1, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v0, p0, v1}, Le/m/a/f/l/a/j3;-><init>(Le/m/a/f/l/a/k3;Le/m/a/f/l/a/x0;)V

    iput-object v0, p0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    iget-object p1, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/f/l/a/k3;->a:J

    iput-wide v0, p0, Le/m/a/f/l/a/k3;->b:J

    return-void
.end method


# virtual methods
.method public final a(ZZJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->e0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 8
    iget-object v0, v0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 13
    iget-object v0, v0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    .line 16
    :cond_1
    :goto_0
    iget-wide v0, p0, Le/m/a/f/l/a/k3;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p1, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 21
    iget-wide v0, p0, Le/m/a/f/l/a/k3;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Le/m/a/f/l/a/k3;->b:J

    :cond_4
    iget-object p1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p1, p1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Recording user engagement, ms"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    .line 26
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v0

    iget-object v1, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v1

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzik;->k(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v0

    .line 31
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->s(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_5

    iget-object p2, p0, Le/m/a/f/l/a/k3;->d:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p2, p2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhw;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iput-wide p3, p0, Le/m/a/f/l/a/k3;->a:J

    iget-object p1, p0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    .line 34
    invoke-virtual {p1}, Le/m/a/f/l/a/f;->a()V

    iget-object p1, p0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    const-wide/32 p2, 0x36ee80

    .line 35
    invoke-virtual {p1, p2, p3}, Le/m/a/f/l/a/f;->c(J)V

    return v2
.end method
