.class final Lcom/google/android/gms/internal/measurement/p;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/Object;

.field final synthetic l:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p;->l:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/p;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/p;->k:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/h0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->l:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/p;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->k:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v4

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v5

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v6

    const/4 v2, 0x5

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/sc;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)V

    return-void
.end method
