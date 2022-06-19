.class public final Le/m/a/f/l/a/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/m2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Le/m/a/f/l/a/m2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Le/m/a/f/l/a/m2;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/m2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    const-string v2, "Failed to send default event parameters to service"

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/a/f/l/a/m2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 6
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/m/a/f/l/a/m2;->b:Landroid/os/Bundle;

    iget-object v3, p0, Le/m/a/f/l/a/m2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzdx;->G(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Le/m/a/f/l/a/m2;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
