.class public final Le/m/a/f/l/a/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzcf;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Le/m/a/f/l/a/j2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Le/m/a/f/l/a/j2;->b:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Le/m/a/f/l/a/u;->l()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhw;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v2

    .line 11
    iget-object v2, v2, Le/m/a/f/l/a/u;->g:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    iget-object v2, p0, Le/m/a/f/l/a/j2;->b:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->D(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 14
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v3, :cond_1

    .line 15
    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 19
    :cond_1
    :try_start_2
    iget-object v2, p0, Le/m/a/f/l/a/j2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v4, "null reference"

    .line 20
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Le/m/a/f/l/a/j2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 22
    invoke-interface {v3, v2}, Lcom/google/android/gms/measurement/internal/zzdx;->V0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhw;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v2

    .line 27
    iget-object v2, v2, Le/m/a/f/l/a/u;->g:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjk;->o()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    iget-object v0, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 30
    :goto_1
    :try_start_3
    iget-object v3, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 32
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 33
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 34
    :goto_2
    iget-object v2, p0, Le/m/a/f/l/a/j2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, p0, Le/m/a/f/l/a/j2;->b:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 36
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->D(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    .line 37
    throw v0
.end method
