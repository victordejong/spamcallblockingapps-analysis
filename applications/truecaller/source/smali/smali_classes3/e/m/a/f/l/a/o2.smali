.class public final Le/m/a/f/l/a/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzau;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzcf;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Le/m/a/f/l/a/o2;->a:Lcom/google/android/gms/measurement/internal/zzau;

    iput-object p3, p0, Le/m/a/f/l/a/o2;->b:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/o2;->c:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v2, :cond_0

    .line 3
    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Le/m/a/f/l/a/o2;->c:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->A(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Le/m/a/f/l/a/o2;->a:Lcom/google/android/gms/measurement/internal/zzau;

    iget-object v3, p0, Le/m/a/f/l/a/o2;->b:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzdx;->x1(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->o()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 11
    :goto_1
    :try_start_2
    iget-object v2, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Failed to send event to the service to bundle"

    .line 14
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 15
    :goto_2
    iget-object v2, p0, Le/m/a/f/l/a/o2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, p0, Le/m/a/f/l/a/o2;->c:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 17
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->A(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    .line 18
    throw v1
.end method
