.class final Lcom/google/android/gms/internal/measurement/f;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"


# instance fields
.field final synthetic j:Landroid/app/Activity;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/f;->m:Lcom/google/android/gms/internal/measurement/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/f;->j:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/f;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/f;->l:Ljava/lang/String;

    const/4 p2, 0x1

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->m:Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->m(Lcom/google/android/gms/internal/measurement/h0;)Lcom/google/android/gms/internal/measurement/sc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->j:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/f;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/f;->l:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/x;->f:J

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/sc;->setCurrentScreen(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
