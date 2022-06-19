.class public final Lcom/google/android/gms/internal/measurement/f1;
.super Lcom/google/android/gms/internal/measurement/i6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/i6<",
        "Lcom/google/android/gms/internal/measurement/g1;",
        "Lcom/google/android/gms/internal/measurement/f1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g1;->H()Lcom/google/android/gms/internal/measurement/g1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/c1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/g1;->H()Lcom/google/android/gms/internal/measurement/g1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/i6;-><init>(Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method


# virtual methods
.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/g1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g1;->B()I

    move-result v0

    return v0
.end method

.method public final t(I)Lcom/google/android/gms/internal/measurement/e1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/g1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/g1;->C(I)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object p1

    return-object p1
.end method

.method public final u(ILcom/google/android/gms/internal/measurement/d1;)Lcom/google/android/gms/internal/measurement/f1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/g1;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i6;->m()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/e1;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;->I(Lcom/google/android/gms/internal/measurement/g1;ILcom/google/android/gms/internal/measurement/e1;)V

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/k0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i6;->g:Lcom/google/android/gms/internal/measurement/l6;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/g1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g1;->D()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/f1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/g1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g1;->J(Lcom/google/android/gms/internal/measurement/g1;)V

    return-object p0
.end method
