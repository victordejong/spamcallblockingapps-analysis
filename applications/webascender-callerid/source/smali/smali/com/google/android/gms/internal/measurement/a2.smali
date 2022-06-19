.class public final Lcom/google/android/gms/internal/measurement/a2;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/b2;",
        "Lcom/google/android/gms/internal/measurement/a2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b2;->I0()Lcom/google/android/gms/internal/measurement/b2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b2;->I0()Lcom/google/android/gms/internal/measurement/b2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->g0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final A0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->S0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final B(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->h0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final B0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->z1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C(J)Lcom/google/android/gms/internal/measurement/a2;
    .locals 2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/b2;

    const-wide/32 v0, 0x9858

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/b2;->i0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final C0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->T0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->j0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->B1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->k0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final E0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->U0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final F(Z)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->l0(Lcom/google/android/gms/internal/measurement/b2;Z)V

    return-object p0
.end method

.method public final F0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->V0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final G()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->m0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final G0()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->W0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final H(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->n0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final H0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->X(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final I()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->o0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final J(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->p0(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final J0()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->Y(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final L(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->q0(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final N(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->r0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final O()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->t0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->u0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final R(Z)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->v0(Lcom/google/android/gms/internal/measurement/b2;Z)V

    return-object p0
.end method

.method public final S(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/o1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/a2;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->w0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final T()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->x0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final U(I)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/b2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/b2;->J0(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final V(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->a1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->b1(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final X()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->d1(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final Y(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->e1(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final Z(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->f1(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final a0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/b2;

    sget p1, Lcom/google/android/gms/internal/measurement/b2;->zza:I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final b0()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->g1(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final c0(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->i1(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final d0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->j1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/a2;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->l1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final f0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->m1(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final g0(J)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->n1(Lcom/google/android/gms/internal/measurement/b2;J)V

    return-object p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->E0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->o1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final j0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->p1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/t1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->q1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->r1()I

    move-result v0

    return v0
.end method

.method public final m0(I)Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->s1(I)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p1

    return-object p1
.end method

.method public final n0(ILcom/google/android/gms/internal/measurement/s1;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/t1;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->K0(Lcom/google/android/gms/internal/measurement/b2;ILcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final o0(Lcom/google/android/gms/internal/measurement/s1;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->L0(Lcom/google/android/gms/internal/measurement/b2;Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final p0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/t1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/a2;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->M0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final q0()Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b2;->N0(Lcom/google/android/gms/internal/measurement/b2;)V

    return-object p0
.end method

.method public final r0(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->O0(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/i6;->h:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/b2;

    const-string v0, "android"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/b2;->Z(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->a0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->t1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->b0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->u1()I

    move-result v0

    return v0
.end method

.method public final v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->c0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v0(I)Lcom/google/android/gms/internal/measurement/m2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->v1(I)Lcom/google/android/gms/internal/measurement/m2;

    move-result-object p1

    return-object p1
.end method

.method public final w(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->d0(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method

.method public final w0(ILcom/google/android/gms/internal/measurement/m2;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b2;->P0(Lcom/google/android/gms/internal/measurement/b2;ILcom/google/android/gms/internal/measurement/m2;)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->e0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x0(Lcom/google/android/gms/internal/measurement/m2;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->Q0(Lcom/google/android/gms/internal/measurement/b2;Lcom/google/android/gms/internal/measurement/m2;)V

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b2;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0(Lcom/google/android/gms/internal/measurement/l2;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->Q0(Lcom/google/android/gms/internal/measurement/b2;Lcom/google/android/gms/internal/measurement/m2;)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->f0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z0(I)Lcom/google/android/gms/internal/measurement/a2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b2;->R0(Lcom/google/android/gms/internal/measurement/b2;I)V

    return-object p0
.end method
