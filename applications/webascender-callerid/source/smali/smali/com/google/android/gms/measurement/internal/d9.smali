.class abstract Lcom/google/android/gms/measurement/internal/d9;
.super Lcom/google/android/gms/measurement/internal/c9;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c9;-><init>(Lcom/google/android/gms/measurement/internal/m9;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c9;->b:Lcom/google/android/gms/measurement/internal/m9;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m9;->u()V

    return-void
.end method


# virtual methods
.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d9;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d9;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d9;->c:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d9;->l()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c9;->b:Lcom/google/android/gms/measurement/internal/m9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d9;->c:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract l()Z
.end method
