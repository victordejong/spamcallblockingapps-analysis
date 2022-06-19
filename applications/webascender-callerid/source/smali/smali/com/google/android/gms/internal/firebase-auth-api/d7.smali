.class public final Lcom/google/android/gms/internal/firebase-auth-api/d7;
.super Lcom/google/android/gms/internal/firebase-auth-api/jq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "Lcom/google/android/gms/internal/firebase-auth-api/e7;",
        "Lcom/google/android/gms/internal/firebase-auth-api/d7;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->D()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/c7;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->D()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/h7;)Lcom/google/android/gms/internal/firebase-auth-api/d7;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->E(Lcom/google/android/gms/internal/firebase-auth-api/e7;Lcom/google/android/gms/internal/firebase-auth-api/h7;)V

    return-object p0
.end method

.method public final l(I)Lcom/google/android/gms/internal/firebase-auth-api/d7;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->F(Lcom/google/android/gms/internal/firebase-auth-api/e7;I)V

    return-object p0
.end method
