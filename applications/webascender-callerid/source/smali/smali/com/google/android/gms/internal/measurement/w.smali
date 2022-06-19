.class final Lcom/google/android/gms/internal/measurement/w;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/Object;

.field final synthetic m:Z

.field final synthetic n:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w;->n:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/w;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/w;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/w;->l:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/w;->m:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->n:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/w;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/w;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->l:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/w;->m:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/x;->f:J

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/sc;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/b;ZJ)V

    return-void
.end method
