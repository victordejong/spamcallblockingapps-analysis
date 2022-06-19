.class final Lcom/google/android/gms/internal/measurement/c;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Landroid/os/Bundle;

.field final synthetic m:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/c;->m:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/c;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/c;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/c;->l:Landroid/os/Bundle;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c;->m:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/c;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/c;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/c;->l:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/sc;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
