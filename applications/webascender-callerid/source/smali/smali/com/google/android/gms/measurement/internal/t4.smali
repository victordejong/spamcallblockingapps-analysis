.class final Lcom/google/android/gms/measurement/internal/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/b;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/aa;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/k5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/measurement/internal/b;Lcom/google/android/gms/measurement/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t4;->h:Lcom/google/android/gms/measurement/internal/k5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t4;->f:Lcom/google/android/gms/measurement/internal/b;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/t4;->g:Lcom/google/android/gms/measurement/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t4;->h:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->p()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t4;->f:Lcom/google/android/gms/measurement/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/p9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p9;->y1()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t4;->h:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t4;->f:Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t4;->g:Lcom/google/android/gms/measurement/internal/aa;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m9;->B(Lcom/google/android/gms/measurement/internal/b;Lcom/google/android/gms/measurement/internal/aa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t4;->h:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t4;->f:Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t4;->g:Lcom/google/android/gms/measurement/internal/aa;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m9;->z(Lcom/google/android/gms/measurement/internal/b;Lcom/google/android/gms/measurement/internal/aa;)V

    return-void
.end method
