.class public final Lcom/google/android/gms/internal/firebase-auth-api/qa;
.super Lcom/google/android/gms/internal/firebase-auth-api/jq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ta;",
        "Lcom/google/android/gms/internal/firebase-auth-api/qa;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->E()Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/pa;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->E()Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method


# virtual methods
.method public final k(I)Lcom/google/android/gms/internal/firebase-auth-api/qa;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->F(Lcom/google/android/gms/internal/firebase-auth-api/ta;I)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/sa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->z()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->A()I

    move-result v0

    return v0
.end method

.method public final n(I)Lcom/google/android/gms/internal/firebase-auth-api/sa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->B(I)Lcom/google/android/gms/internal/firebase-auth-api/sa;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lcom/google/android/gms/internal/firebase-auth-api/sa;)Lcom/google/android/gms/internal/firebase-auth-api/qa;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->G(Lcom/google/android/gms/internal/firebase-auth-api/ta;Lcom/google/android/gms/internal/firebase-auth-api/sa;)V

    return-object p0
.end method
