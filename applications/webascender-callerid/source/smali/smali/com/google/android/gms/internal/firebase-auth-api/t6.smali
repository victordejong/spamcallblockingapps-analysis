.class public final Lcom/google/android/gms/internal/firebase-auth-api/t6;
.super Lcom/google/android/gms/internal/firebase-auth-api/jq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "Lcom/google/android/gms/internal/firebase-auth-api/u6;",
        "Lcom/google/android/gms/internal/firebase-auth-api/t6;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->D()Lcom/google/android/gms/internal/firebase-auth-api/u6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/s6;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->D()Lcom/google/android/gms/internal/firebase-auth-api/u6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method


# virtual methods
.method public final k(I)Lcom/google/android/gms/internal/firebase-auth-api/t6;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->E(Lcom/google/android/gms/internal/firebase-auth-api/u6;I)V

    return-object p0
.end method

.method public final l(Lcom/google/android/gms/internal/firebase-auth-api/b7;)Lcom/google/android/gms/internal/firebase-auth-api/t6;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->F(Lcom/google/android/gms/internal/firebase-auth-api/u6;Lcom/google/android/gms/internal/firebase-auth-api/b7;)V

    return-object p0
.end method

.method public final m(Lcom/google/android/gms/internal/firebase-auth-api/u9;)Lcom/google/android/gms/internal/firebase-auth-api/t6;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->G(Lcom/google/android/gms/internal/firebase-auth-api/u6;Lcom/google/android/gms/internal/firebase-auth-api/u9;)V

    return-object p0
.end method
