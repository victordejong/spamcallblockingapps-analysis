.class final Lcom/google/android/gms/measurement/internal/e9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/n9;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/m9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m9;Lcom/google/android/gms/measurement/internal/n9;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e9;->g:Lcom/google/android/gms/measurement/internal/m9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e9;->f:Lcom/google/android/gms/measurement/internal/n9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e9;->g:Lcom/google/android/gms/measurement/internal/m9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e9;->f:Lcom/google/android/gms/measurement/internal/n9;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/m9;->G(Lcom/google/android/gms/measurement/internal/m9;Lcom/google/android/gms/measurement/internal/n9;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e9;->g:Lcom/google/android/gms/measurement/internal/m9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->V()V

    return-void
.end method
