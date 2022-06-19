.class final Lcom/google/android/gms/internal/measurement/u;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/gms/internal/measurement/y;

.field final synthetic k:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Lcom/google/android/gms/internal/measurement/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u;->k:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u;->j:Lcom/google/android/gms/internal/measurement/y;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u;->k:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u;->j:Lcom/google/android/gms/internal/measurement/y;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/sc;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/yc;)V

    return-void
.end method
