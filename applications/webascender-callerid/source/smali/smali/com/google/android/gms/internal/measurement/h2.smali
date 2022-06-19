.class public final Lcom/google/android/gms/internal/measurement/h2;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/i2;",
        "Lcom/google/android/gms/internal/measurement/h2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i2;->I()Lcom/google/android/gms/internal/measurement/i2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/i2;->I()Lcom/google/android/gms/internal/measurement/i2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/h2;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->J(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/h2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i2;->K(Lcom/google/android/gms/internal/measurement/i2;)V

    return-object p0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/h2;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->L(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/h2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i2;->M(Lcom/google/android/gms/internal/measurement/i2;)V

    return-object p0
.end method

.method public final w(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/q1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/h2;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->N(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final x(I)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->O(Lcom/google/android/gms/internal/measurement/i2;I)V

    return-object p0
.end method

.method public final y(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/k2;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/h2;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->P(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final z(I)Lcom/google/android/gms/internal/measurement/h2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/i2;->Q(Lcom/google/android/gms/internal/measurement/i2;I)V

    return-object p0
.end method
