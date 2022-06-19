.class public final Le/m/a/f/l/a/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/a/f/l/a/u;->p(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/m/a/f/l/a/u;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    .line 7
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 8
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 9
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Detected application was in foreground"

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Le/m/a/f/l/a/l3;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzka;->h()V

    .line 3
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Le/m/a/f/l/a/u;->p(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/m/a/f/l/a/u;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 9
    iget-object v0, v0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 11
    iget-object v0, v0, Le/m/a/f/l/a/u;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/f/l/a/l3;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/m/a/f/l/a/u;->o:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 14
    iget-object v1, v1, Le/m/a/f/l/a/u;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    new-instance v8, Landroid/os/Bundle;

    .line 15
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 18
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdu;->a0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x1

    const-string p3, "_aib"

    .line 19
    invoke-virtual {v8, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p3, p3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    .line 21
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzc()Z

    iget-object p3, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p3, p3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 24
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->d0:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 25
    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p3, p3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object p3

    .line 27
    iget-object p3, p3, Le/m/a/f/l/a/u;->t:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzev;->a()Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "_ffr"

    invoke-static {v0, p3}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 29
    iget-object p3, p0, Le/m/a/f/l/a/l3;->a:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object p3, p3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 30
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
