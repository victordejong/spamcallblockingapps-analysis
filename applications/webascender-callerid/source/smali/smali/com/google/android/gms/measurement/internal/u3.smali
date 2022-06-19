.class final Lcom/google/android/gms/measurement/internal/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lcom/google/android/gms/measurement/internal/v3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u3;->g:Lcom/google/android/gms/measurement/internal/v3;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/u3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u3;->g:Lcom/google/android/gms/measurement/internal/v3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/v3;->c(Lcom/google/android/gms/measurement/internal/v3;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u3;->f:Z

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m9;->E(Z)V

    return-void
.end method
