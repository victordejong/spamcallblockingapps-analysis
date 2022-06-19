.class public final Le/m/a/f/l/a/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzdx;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjj;Lcom/google/android/gms/measurement/internal/zzdx;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iput-object p2, p0, Le/m/a/f/l/a/a3;->a:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzjj;->a:Z

    .line 3
    iget-object v1, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Connected to remote service"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v1, p0, Le/m/a/f/l/a/a3;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, p0, Le/m/a/f/l/a/a3;->a:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 8
    invoke-virtual {v1}, Le/m/a/f/l/a/m;->d()V

    const-string v3, "null reference"

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->o()V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->n()V

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
