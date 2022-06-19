.class final Lcom/google/android/gms/internal/measurement/z;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Landroid/os/Bundle;

.field final synthetic k:Landroid/app/Activity;

.field final synthetic l:Lcom/google/android/gms/internal/measurement/g0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/g0;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z;->l:Lcom/google/android/gms/internal/measurement/g0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/z;->j:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/z;->k:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/g0;->f:Lcom/google/android/gms/internal/measurement/h0;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z;->j:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z;->j:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z;->l:Lcom/google/android/gms/internal/measurement/g0;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/g0;->f:Lcom/google/android/gms/internal/measurement/h0;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/z;->k:Landroid/app/Activity;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x;->g:J

    .line 8
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/sc;->onActivityCreated(Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;J)V

    return-void
.end method
