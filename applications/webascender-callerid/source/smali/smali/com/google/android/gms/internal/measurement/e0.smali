.class final Lcom/google/android/gms/internal/measurement/e0;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Landroid/app/Activity;

.field final synthetic k:Lcom/google/android/gms/internal/measurement/ta;

.field final synthetic l:Lcom/google/android/gms/internal/measurement/g0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/g0;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/ta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/e0;->l:Lcom/google/android/gms/internal/measurement/g0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/e0;->j:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/e0;->k:Lcom/google/android/gms/internal/measurement/ta;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e0;->l:Lcom/google/android/gms/internal/measurement/g0;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/g0;->f:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e0;->j:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/e0;->k:Lcom/google/android/gms/internal/measurement/ta;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x;->g:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/sc;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/measurement/vc;J)V

    return-void
.end method
