.class final Lcom/google/android/gms/internal/measurement/v;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Ljava/lang/Long;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Landroid/os/Bundle;

.field final synthetic n:Z

.field final synthetic o:Z

.field final synthetic p:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v;->p:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/v;->j:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/v;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/v;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/v;->m:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/v;->n:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/v;->o:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->j:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/x;->f:J

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->p:Lcom/google/android/gms/internal/measurement/h0;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/v;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/v;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/v;->m:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/v;->n:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/v;->o:Z

    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/sc;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
