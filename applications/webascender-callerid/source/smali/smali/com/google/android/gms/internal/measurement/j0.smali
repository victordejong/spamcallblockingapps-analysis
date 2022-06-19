.class public final Lcom/google/android/gms/internal/measurement/j0;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/k0;",
        "Lcom/google/android/gms/internal/measurement/j0;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k0;->E()Lcom/google/android/gms/internal/measurement/k0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/i0;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k0;->E()Lcom/google/android/gms/internal/measurement/k0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k0;->z()I

    move-result v0

    return v0
.end method

.method public final t(I)Lcom/google/android/gms/internal/measurement/w0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/k0;->A(I)Lcom/google/android/gms/internal/measurement/w0;

    move-result-object p1

    return-object p1
.end method

.method public final u(ILcom/google/android/gms/internal/measurement/v0;)Lcom/google/android/gms/internal/measurement/j0;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/w0;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/k0;->F(Lcom/google/android/gms/internal/measurement/k0;ILcom/google/android/gms/internal/measurement/w0;)V

    return-object p0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k0;->C()I

    move-result v0

    return v0
.end method

.method public final w(I)Lcom/google/android/gms/internal/measurement/m0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/k0;->D(I)Lcom/google/android/gms/internal/measurement/m0;

    move-result-object p1

    return-object p1
.end method

.method public final x(ILcom/google/android/gms/internal/measurement/l0;)Lcom/google/android/gms/internal/measurement/j0;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/m0;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/k0;->G(Lcom/google/android/gms/internal/measurement/k0;ILcom/google/android/gms/internal/measurement/m0;)V

    return-object p0
.end method
