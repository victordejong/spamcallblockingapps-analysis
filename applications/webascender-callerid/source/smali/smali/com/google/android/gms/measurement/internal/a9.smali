.class final Lcom/google/android/gms/measurement/internal/a9;
.super Lcom/google/android/gms/measurement/internal/m;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/b9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;Lcom/google/android/gms/measurement/internal/n5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a9;->e:Lcom/google/android/gms/measurement/internal/b9;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/n5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a9;->e:Lcom/google/android/gms/measurement/internal/b9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a9;->e:Lcom/google/android/gms/measurement/internal/b9;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a9;->e:Lcom/google/android/gms/measurement/internal/b9;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c9;->b:Lcom/google/android/gms/measurement/internal/m9;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->k()V

    return-void
.end method
