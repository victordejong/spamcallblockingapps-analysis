.class public final Lcom/google/android/gms/internal/measurement/w1;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/x1;",
        "Lcom/google/android/gms/internal/measurement/w1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x1;->J()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x1;->J()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->R(Lcom/google/android/gms/internal/measurement/x1;Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final B(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/x1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/w1;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->S(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final C()Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->T(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->K(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->L(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->M(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final v(J)Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->N(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->O(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final x(D)Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->P(Lcom/google/android/gms/internal/measurement/x1;D)V

    return-object p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/w1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->Q(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->H()I

    move-result v0

    return v0
.end method
