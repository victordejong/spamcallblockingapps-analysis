.class public final Lcom/google/android/gms/internal/measurement/s1;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/t1;",
        "Lcom/google/android/gms/internal/measurement/s1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->H()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->H()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->L(Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final B(I)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->M(Lcom/google/android/gms/internal/measurement/t1;I)V

    return-object p0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->N(Lcom/google/android/gms/internal/measurement/t1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final F(J)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->O(Lcom/google/android/gms/internal/measurement/t1;J)V

    return-object p0
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H(J)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->P(Lcom/google/android/gms/internal/measurement/t1;J)V

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/x1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->w()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->x()I

    move-result v0

    return v0
.end method

.method public final u(I)Lcom/google/android/gms/internal/measurement/x1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->y(I)Lcom/google/android/gms/internal/measurement/x1;

    move-result-object p1

    return-object p1
.end method

.method public final v(ILcom/google/android/gms/internal/measurement/x1;)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->I(Lcom/google/android/gms/internal/measurement/t1;ILcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final w(ILcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/x1;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->I(Lcom/google/android/gms/internal/measurement/t1;ILcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final x(Lcom/google/android/gms/internal/measurement/x1;)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->J(Lcom/google/android/gms/internal/measurement/t1;Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final y(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/s1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->J(Lcom/google/android/gms/internal/measurement/t1;Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final z(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/x1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/s1;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->K(Lcom/google/android/gms/internal/measurement/t1;Ljava/lang/Iterable;)V

    return-object p0
.end method
