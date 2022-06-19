.class final Lcom/google/android/gms/measurement/internal/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/t;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/aa;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/k5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/measurement/internal/t;Lcom/google/android/gms/measurement/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Lcom/google/android/gms/measurement/internal/k5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c5;->f:Lcom/google/android/gms/measurement/internal/t;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/c5;->g:Lcom/google/android/gms/measurement/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->f:Lcom/google/android/gms/measurement/internal/t;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c5;->g:Lcom/google/android/gms/measurement/internal/aa;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/k5;->w(Lcom/google/android/gms/measurement/internal/t;Lcom/google/android/gms/measurement/internal/aa;)Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m9;->p()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c5;->g:Lcom/google/android/gms/measurement/internal/aa;

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/m9;->g(Lcom/google/android/gms/measurement/internal/t;Lcom/google/android/gms/measurement/internal/aa;)V

    return-void
.end method
