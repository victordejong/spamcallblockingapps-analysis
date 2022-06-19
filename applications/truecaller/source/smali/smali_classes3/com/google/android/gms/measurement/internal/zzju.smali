.class public final synthetic Lcom/google/android/gms/measurement/internal/zzju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/l/a/h3;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/l/a/h3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->a:Le/m/a/f/l/a/h3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->a:Le/m/a/f/l/a/h3;

    iget-object v1, v0, Le/m/a/f/l/a/h3;->c:Le/m/a/f/l/a/i3;

    iget-wide v5, v0, Le/m/a/f/l/a/h3;->a:J

    iget-wide v2, v0, Le/m/a/f/l/a/h3;->b:J

    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Application going to the background"

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/m/a/f/l/a/u;->q:Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    new-instance v7, Landroid/os/Bundle;

    .line 7
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    .line 10
    iget-object v0, v0, Le/m/a/f/l/a/k3;->c:Le/m/a/f/l/a/f;

    invoke-virtual {v0}, Le/m/a/f/l/a/f;->a()V

    .line 11
    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v0, v4, v4, v2, v3}, Le/m/a/f/l/a/k3;->a(ZZJ)Z

    :cond_0
    iget-object v0, v1, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhw;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
