.class abstract Lcom/google/android/gms/internal/measurement/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final f:J

.field final g:J

.field final h:Z

.field final synthetic i:Lcom/google/android/gms/internal/measurement/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/h0;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x;->i:Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/h0;->b:Lcom/google/android/gms/common/util/f;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/x;->f:J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/h0;->b:Lcom/google/android/gms/common/util/f;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/x;->g:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/x;->h:Z

    return-void
.end method


# virtual methods
.method abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x;->i:Lcom/google/android/gms/internal/measurement/h0;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h0;->f(Lcom/google/android/gms/internal/measurement/h0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/x;->b()V

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/x;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->i:Lcom/google/android/gms/internal/measurement/h0;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/x;->h:Z

    .line 3
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/h0;->g(Lcom/google/android/gms/internal/measurement/h0;Ljava/lang/Exception;ZZ)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/x;->b()V

    return-void
.end method
