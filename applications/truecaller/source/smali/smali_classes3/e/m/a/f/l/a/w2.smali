.class public final Le/m/a/f/l/a/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic d:Lcom/google/android/gms/internal/measurement/zzcf;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Le/m/a/f/l/a/w2;->a:Ljava/lang/String;

    iput-object p3, p0, Le/m/a/f/l/a/w2;->b:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/w2;->c:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p5, p0, Le/m/a/f/l/a/w2;->d:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v2, :cond_0

    .line 3
    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Failed to get conditional properties; not connected to service"

    .line 6
    iget-object v3, p0, Le/m/a/f/l/a/w2;->a:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/l/a/w2;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Le/m/a/f/l/a/w2;->d:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->y(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Le/m/a/f/l/a/w2;->c:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Le/m/a/f/l/a/w2;->a:Ljava/lang/String;

    iget-object v3, p0, Le/m/a/f/l/a/w2;->b:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/l/a/w2;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 12
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdx;->g1(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->p(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjk;->o()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 16
    :goto_1
    :try_start_2
    iget-object v2, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Failed to get conditional properties; remote exception"

    .line 19
    iget-object v4, p0, Le/m/a/f/l/a/w2;->a:Ljava/lang/String;

    iget-object v5, p0, Le/m/a/f/l/a/w2;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzef;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_0

    .line 21
    :goto_2
    iget-object v2, p0, Le/m/a/f/l/a/w2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, p0, Le/m/a/f/l/a/w2;->d:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 23
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->y(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    .line 24
    throw v1
.end method
