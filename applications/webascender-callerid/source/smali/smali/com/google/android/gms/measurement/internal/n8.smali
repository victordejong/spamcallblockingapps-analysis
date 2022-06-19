.class final Lcom/google/android/gms/measurement/internal/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/m9;

.field final synthetic g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p8;Lcom/google/android/gms/measurement/internal/m9;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n8;->f:Lcom/google/android/gms/measurement/internal/m9;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/n8;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n8;->f:Lcom/google/android/gms/measurement/internal/m9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->p()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n8;->f:Lcom/google/android/gms/measurement/internal/m9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n8;->g:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m9;->o(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n8;->f:Lcom/google/android/gms/measurement/internal/m9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->k()V

    return-void
.end method
